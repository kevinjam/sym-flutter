import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../providers/patient_symptom_provider.dart';
import '../../providers/medication_provider.dart';
import '../../providers/patient_medication_provider.dart';
import '../../../core/theme/app_colors.dart';
import 'report_symptom_modal.dart';

class SymptomsPage extends ConsumerStatefulWidget {
  const SymptomsPage({super.key});

  @override
  ConsumerState<SymptomsPage> createState() => _SymptomsPageState();
}

class _SymptomsPageState extends ConsumerState<SymptomsPage> with TickerProviderStateMixin {
  late TabController _tabController;
  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    // Load patient symptoms when the page initializes
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(patientSymptomProvider.notifier).loadSymptoms();
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final symptomState = ref.watch(patientSymptomProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Symptoms'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Browse', icon: Icon(Icons.search)),
            Tab(text: 'My Logs', icon: Icon(Icons.history)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildBrowseTab(symptomState),
          _buildLogsTab(symptomState),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'symptoms_page_fab',
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ReportSymptomModal(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildBrowseTab(PatientSymptomState symptomState) {
    final patientSymptomState = ref.watch(patientSymptomProvider);
    
    return Column(
      children: [
        // Search Bar
        Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Search your symptoms...',
              prefixIcon: const Icon(Icons.search),
              suffixIcon: _searchController.text.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        _searchController.clear();
                        setState(() {});
                      },
                    )
                  : null,
            ),
            onChanged: (query) {
              setState(() {});
            },
          ),
        ),
        
        // Results
        Expanded(
          child: patientSymptomState.isLoading
              ? const Center(child: CircularProgressIndicator())
              : _buildFilteredSymptoms(patientSymptomState.symptoms),
        ),
      ],
    );
  }

  Widget _buildFilteredSymptoms(List<dynamic> symptoms) {
    // Filter symptoms based on search query
    final filteredSymptoms = _searchController.text.isEmpty
        ? symptoms
        : symptoms.where((symptom) {
            final query = _searchController.text.toLowerCase();
            return symptom.name.toLowerCase().contains(query) ||
                   (symptom.description?.toLowerCase().contains(query) ?? false) ||
                   (symptom.category?.toLowerCase().contains(query) ?? false);
          }).toList();

    if (filteredSymptoms.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _searchController.text.isEmpty 
                ? Icons.health_and_safety_outlined 
                : Icons.search_off, 
              size: 64, 
              color: Colors.grey
            ),
            const SizedBox(height: 16),
            Text(_searchController.text.isEmpty 
              ? 'No symptoms reported yet'
              : 'No symptoms found'
            ),
            const SizedBox(height: 8),
            Text(_searchController.text.isEmpty 
              ? 'Report your first symptom to get started'
              : 'Try a different search term'
            ),
          ],
        ),
      );
    }

    return Builder(
      builder: (context) {
        final theme = Theme.of(context);
        final isDark = theme.brightness == Brightness.dark;
        
        return ListView.separated(
          padding: const EdgeInsets.all(20),
          itemCount: filteredSymptoms.length,
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemBuilder: (context, index) {
            final symptom = filteredSymptoms[index];
            return _buildSymptomCard(context, symptom, ref, isDark);
          },
        );
      },
    );
  }

  Widget _buildLogsTab(PatientSymptomState symptomState) {
    final patientSymptomState = ref.watch(patientSymptomProvider);
    
    return patientSymptomState.isLoading
        ? const Center(child: CircularProgressIndicator())
        : patientSymptomState.symptoms.isEmpty
            ? const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.history, size: 64, color: Colors.grey),
                    SizedBox(height: 16),
                    Text(
                      'No symptoms reported yet',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Report your symptoms to track your health',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              )
            : Column(
                children: [
                  // Filter options
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            value: null,
                            decoration: const InputDecoration(
                              labelText: 'Filter by Severity',
                              border: OutlineInputBorder(),
                            ),
                            items: [
                              const DropdownMenuItem<String>(
                                value: null,
                                child: Text('All Severities'),
                              ),
                              const DropdownMenuItem(value: 'mild', child: Text('Mild')),
                              const DropdownMenuItem(value: 'moderate', child: Text('Moderate')),
                              const DropdownMenuItem(value: 'severe', child: Text('Severe')),
                            ],
                            onChanged: (value) {
                              ref.read(patientSymptomProvider.notifier).loadSymptoms(
                                severity: value,
                              );
                            },
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: DropdownButtonFormField<bool>(
                            value: null,
                            decoration: const InputDecoration(
                              labelText: 'Filter by Status',
                              border: OutlineInputBorder(),
                            ),
                            items: [
                              const DropdownMenuItem<bool>(
                                value: null,
                                child: Text('All Status'),
                              ),
                              const DropdownMenuItem(value: false, child: Text('Active')),
                              const DropdownMenuItem(value: true, child: Text('Resolved')),
                            ],
                            onChanged: (value) {
                              ref.read(patientSymptomProvider.notifier).loadSymptoms(
                                isResolved: value,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // Symptoms list
                  Expanded(
                    child: Builder(
                      builder: (context) {
                        final theme = Theme.of(context);
                        final isDark = theme.brightness == Brightness.dark;
                        
                        return ListView.separated(
                          padding: const EdgeInsets.all(20),
                          itemCount: patientSymptomState.symptoms.length,
                          separatorBuilder: (context, index) => const SizedBox(height: 16),
                          itemBuilder: (context, index) {
                            final symptom = patientSymptomState.symptoms[index];
                            return _buildSymptomCard(context, symptom, ref, isDark);
                          },
                        );
                      },
                    ),
                  ),
                ],
              );
  }

  void _showLogSymptomDialog(BuildContext context, {dynamic symptom, String? customSymptom}) {
    showDialog(
      context: context,
      builder: (context) => _LogSymptomDialog(
        symptom: symptom,
        customSymptom: customSymptom,
      ),
    );
  }

  Color _getSeverityColor(String severity) {
    switch (severity.toLowerCase()) {
      case 'mild':
        return AppColors.success;
      case 'moderate':
        return AppColors.warning;
      case 'severe':
        return AppColors.error;
      default:
        return AppColors.textSecondary;
    }
  }

  Color _getSeverityTextColor(String severity) {
    switch (severity.toLowerCase()) {
      case 'mild':
        return Colors.white;
      case 'moderate':
        return Colors.white;
      case 'severe':
        return Colors.white;
      default:
        return Colors.white;
    }
  }

  Widget _buildSymptomCard(BuildContext context, dynamic symptom, WidgetRef ref, bool isDark) {
    final severityColor = _getSeverityColor(symptom.severity);
    final isResolved = symptom.isResolved ?? false;
    
    return Container(
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1A1A1A) : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isDark ? const Color(0xFF2A2A2A) : Colors.grey[200]!,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: isDark 
                ? Colors.black.withOpacity(0.3) 
                : Colors.grey.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => _showSymptomDetails(context, symptom),
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header with icon and status
                Row(
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            _getSymptomIconColor(symptom.severity),
                            _getSymptomIconColor(symptom.severity).withOpacity(0.7),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        _getSymptomIcon(symptom.category),
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            symptom.name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: isDark ? Colors.white : AppColors.textPrimary,
                            ),
                          ),
                          if (symptom.description != null) ...[
                            const SizedBox(height: 4),
                            Text(
                              symptom.description!,
                              style: TextStyle(
                                fontSize: 14,
                                color: isDark ? Colors.white70 : AppColors.textSecondary,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: isResolved ? AppColors.success : AppColors.warning,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            isResolved ? Icons.check_circle : Icons.schedule,
                            size: 14,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            isResolved ? 'Resolved' : 'Active',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                
                // Severity, medication, and category badges
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: severityColor,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: severityColor.withOpacity(0.3),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            _getSeverityIcon(symptom.severity),
                            size: 14,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            symptom.severity[0].toUpperCase() + symptom.severity.substring(1).toLowerCase(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    // Medication name badge (if linked to medication)
                    if (symptom.patientMedicationId != null)
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.green.shade500,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.green.withOpacity(0.3),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.medication,
                              size: 14,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'Medication',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (symptom.patientMedicationId != null) const SizedBox(width: 8),
                    if (symptom.category != null)
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: isDark ? const Color(0xFF2A2A2A) : Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: isDark ? const Color(0xFF3A3A3A) : Colors.blue.shade200,
                            width: 1,
                          ),
                        ),
                        child: Text(
                          symptom.category![0].toUpperCase() + symptom.category!.substring(1).toLowerCase(),
                          style: TextStyle(
                            color: isDark ? Colors.white70 : Colors.blue.shade700,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 16),
                
                // Medication info (if linked)
                if (symptom.patientMedicationId != null)
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Theme.of(context).primaryColor.withOpacity(0.1),
                          Theme.of(context).primaryColor.withOpacity(0.05),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Theme.of(context).primaryColor.withOpacity(0.3),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Theme.of(context).primaryColor.withOpacity(0.8),
                                Theme.of(context).primaryColor.withOpacity(0.6),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.medication,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Related Medication',
                                style: TextStyle(
                                  color: isDark ? Colors.white70 : Colors.grey.shade600,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 2),
                              FutureBuilder<String>(
                                future: _getMedicationName(symptom.patientMedicationId!),
                                builder: (context, snapshot) {
                                  if (snapshot.hasData) {
                                    return Text(
                                      snapshot.data!,
                                      style: TextStyle(
                                        color: isDark ? Colors.white : Colors.black87,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    );
                                  }
                                  return Text(
                                    'Loading medication...',
                                    style: TextStyle(
                                      color: isDark ? Colors.white54 : Colors.grey.shade500,
                                      fontSize: 14,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.link,
                          color: Theme.of(context).primaryColor.withOpacity(0.7),
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                
                // Timeline and duration info
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: isDark ? const Color(0xFF0F0F0F) : Colors.grey[50],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: isDark ? const Color(0xFF2A2A2A) : Colors.grey[200]!,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_rounded,
                            size: 16,
                            color: isDark ? Colors.white60 : AppColors.textSecondary,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Reported ${_formatDateTime(symptom.createdAt)}',
                            style: TextStyle(
                              color: isDark ? Colors.white60 : AppColors.textSecondary,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(),
                          if (symptom.duration != null)
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                              decoration: BoxDecoration(
                                color: isDark ? const Color(0xFF2A2A2A) : Colors.grey[200],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                symptom.duration!,
                                style: TextStyle(
                                  color: isDark ? Colors.white70 : AppColors.textSecondary,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                
                // Action buttons
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: isDark ? const Color(0xFF2A2A2A) : Colors.grey[100],
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: isDark ? const Color(0xFF3A3A3A) : Colors.grey[300]!,
                            width: 1,
                          ),
                        ),
                        child: Builder(
                          builder: (context) => ElevatedButton.icon(
                            onPressed: () => _showSymptomDetails(context, symptom),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            icon: Icon(
                              Icons.info_outline_rounded,
                              color: isDark ? Colors.white70 : AppColors.textSecondary,
                              size: 18,
                            ),
                            label: Text(
                              'Details',
                              style: TextStyle(
                                color: isDark ? Colors.white70 : AppColors.textSecondary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      decoration: BoxDecoration(
                        color: isDark ? const Color(0xFF2A2A2A) : Colors.grey[100],
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: isDark ? const Color(0xFF3A3A3A) : Colors.grey[300]!,
                          width: 1,
                        ),
                      ),
                      child: PopupMenuButton<String>(
                        onSelected: (value) {
                          if (value == 'edit') {
                            // TODO: Implement edit functionality
                          } else if (value == 'delete') {
                            _showDeleteConfirmation(symptom.id);
                          }
                        },
                        itemBuilder: (context) => [
                          const PopupMenuItem(
                            value: 'edit',
                            child: Row(
                              children: [
                                Icon(Icons.edit),
                                SizedBox(width: 8),
                                Text('Edit'),
                              ],
                            ),
                          ),
                          const PopupMenuItem(
                            value: 'delete',
                            child: Row(
                              children: [
                                Icon(Icons.delete, color: Colors.red),
                                SizedBox(width: 8),
                                Text('Delete', style: TextStyle(color: Colors.red)),
                              ],
                            ),
                          ),
                        ],
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Icon(
                            Icons.more_vert,
                            color: isDark ? Colors.white70 : AppColors.textSecondary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  IconData _getSymptomIcon(String? category) {
    switch (category?.toLowerCase()) {
      case 'pain':
        return Icons.flash_on_rounded;
      case 'digestive':
        return Icons.restaurant_rounded;
      case 'respiratory':
        return Icons.air_rounded;
      case 'neurological':
        return Icons.psychology_rounded;
      case 'cardiovascular':
        return Icons.favorite_rounded;
      case 'dermatological':
        return Icons.healing_rounded;
      case 'musculoskeletal':
        return Icons.fitness_center_rounded;
      case 'mental health':
        return Icons.mood_rounded;
      default:
        return Icons.health_and_safety_rounded;
    }
  }

  Color _getSymptomIconColor(String severity) {
    switch (severity.toLowerCase()) {
      case 'mild':
        return AppColors.success;
      case 'moderate':
        return AppColors.warning;
      case 'severe':
        return AppColors.error;
      default:
        return AppColors.primary;
    }
  }

  IconData _getSeverityIcon(String severity) {
    switch (severity.toLowerCase()) {
      case 'mild':
        return Icons.sentiment_satisfied_rounded;
      case 'moderate':
        return Icons.sentiment_neutral_rounded;
      case 'severe':
        return Icons.sentiment_very_dissatisfied_rounded;
      default:
        return Icons.help_outline_rounded;
    }
  }

  void _showSymptomDetails(BuildContext context, dynamic symptom) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: isDark ? const Color(0xFF1A1A1A) : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    _getSymptomIconColor(symptom.severity),
                    _getSymptomIconColor(symptom.severity).withOpacity(0.7),
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                _getSymptomIcon(symptom.category),
                color: Colors.white,
                size: 20,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                symptom.name,
                style: TextStyle(
                  color: isDark ? Colors.white : AppColors.textPrimary,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (symptom.description != null) ...[
                _buildDetailRow(
                  'Description',
                  symptom.description!,
                  Icons.description_rounded,
                  isDark,
                ),
                const SizedBox(height: 16),
              ],
              _buildDetailRow(
                'Severity',
                symptom.severity[0].toUpperCase() + symptom.severity.substring(1).toLowerCase(),
                _getSeverityIcon(symptom.severity),
                isDark,
                valueColor: _getSeverityColor(symptom.severity),
              ),
              const SizedBox(height: 16),
              if (symptom.category != null) ...[
                _buildDetailRow(
                  'Category',
                  symptom.category![0].toUpperCase() + symptom.category!.substring(1).toLowerCase(),
                  _getSymptomIcon(symptom.category),
                  isDark,
                ),
                const SizedBox(height: 16),
              ],
              _buildDetailRow(
                'Status',
                (symptom.isResolved ?? false) ? 'Resolved' : 'Active',
                (symptom.isResolved ?? false) ? Icons.check_circle : Icons.schedule,
                isDark,
                valueColor: (symptom.isResolved ?? false) ? AppColors.success : AppColors.warning,
              ),
              const SizedBox(height: 16),
              _buildDetailRow(
                'Reported',
                DateFormat('MMM dd, yyyy \\at h:mm a').format(symptom.createdAt),
                Icons.access_time_rounded,
                isDark,
              ),
              if (symptom.duration != null) ...[
                const SizedBox(height: 16),
                _buildDetailRow(
                  'Duration',
                  symptom.duration!,
                  Icons.timer_rounded,
                  isDark,
                ),
              ],
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              'Close',
              style: TextStyle(
                color: isDark ? Colors.white70 : AppColors.textSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value, IconData icon, bool isDark, {Color? valueColor}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF0F0F0F) : Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isDark ? const Color(0xFF2A2A2A) : Colors.grey[200]!,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: valueColor ?? (isDark ? Colors.white60 : AppColors.textSecondary),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  color: isDark ? Colors.white60 : AppColors.textSecondary,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: TextStyle(
                  color: valueColor ?? (isDark ? Colors.white : AppColors.textPrimary),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Color _getSeverityColorOld(BuildContext context, int intensity) {
    if (intensity <= 3) {
      return Colors.green;
    } else if (intensity <= 6) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

  String _formatDateTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);
    
    if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'Just now';
    }
  }

  Future<String> _getMedicationName(String patientMedicationId) async {
    try {
      // Get patient medications from the provider
      final patientMedicationState = ref.read(patientMedicationProvider);
      
      // Find the medication by ID
      final patientMedication = patientMedicationState.medications
          .where((med) => med.id == patientMedicationId)
          .firstOrNull;
      
      if (patientMedication?.medication != null) {
        final medication = patientMedication!.medication!;
        final dosage = patientMedication.dosage;
        return '${medication.name} (${dosage.amount} ${dosage.unit})';
      }
      
      return 'Unknown Medication';
    } catch (e) {
      return 'Error loading medication';
    }
  }

  void _showDeleteConfirmation(String symptomId) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Symptom'),
        content: const Text('Are you sure you want to delete this symptom? This action cannot be undone.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              ref.read(patientSymptomProvider.notifier).deleteSymptom(symptomId);
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }
}



class _LogSymptomDialog extends ConsumerStatefulWidget {
  final dynamic symptom;
  final String? customSymptom;

  const _LogSymptomDialog({this.symptom, this.customSymptom});

  @override
  ConsumerState<_LogSymptomDialog> createState() => _LogSymptomDialogState();
}

class _LogSymptomDialogState extends ConsumerState<_LogSymptomDialog> {
  final _notesController = TextEditingController();
  int _intensity = 5;
  String _severity = 'moderate';
  List<String> _selectedMedications = [];

  @override
  void dispose() {
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final medicationState = ref.watch(medicationProvider);
    final symptomName = widget.symptom?.name ?? widget.customSymptom ?? 'Unknown';

    return AlertDialog(
      title: Text('Log Symptom: $symptomName'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Intensity Slider
            Text('Intensity Level: $_intensity/10'),
            Slider(
              value: _intensity.toDouble(),
              min: 1,
              max: 10,
              divisions: 9,
              label: _intensity.toString(),
              onChanged: (value) {
                setState(() {
                  _intensity = value.round();
                });
              },
            ),
            const SizedBox(height: 16),

            // Severity Dropdown
            DropdownButtonFormField<String>(
              value: _severity,
              decoration: const InputDecoration(labelText: 'Severity'),
              items: const [
                DropdownMenuItem(value: 'mild', child: Text('Mild')),
                DropdownMenuItem(value: 'moderate', child: Text('Moderate')),
                DropdownMenuItem(value: 'severe', child: Text('Severe')),
              ],
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    _severity = value;
                  });
                }
              },
            ),
            const SizedBox(height: 16),

            // Associated Medications
            const Text('Associated Medications:'),
            const SizedBox(height: 8),
            ...medicationState.medications.map((medication) {
              final isSelected = _selectedMedications.contains(medication.id);
              return CheckboxListTile(
                title: Text(medication.name),
                subtitle: Text(medication.dosage),
                value: isSelected,
                onChanged: (selected) {
                  setState(() {
                    if (selected == true) {
                      _selectedMedications.add(medication.id);
                    } else {
                      _selectedMedications.remove(medication.id);
                    }
                  });
                },
              );
            }),
            const SizedBox(height: 16),

            // Notes
            TextField(
              controller: _notesController,
              decoration: const InputDecoration(
                labelText: 'Notes (Optional)',
                hintText: 'Additional details about this symptom...',
              ),
              maxLines: 3,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () {
            _logSymptom();
            Navigator.of(context).pop();
          },
          child: const Text('Log Symptom'),
        ),
      ],
    );
  }

  void _logSymptom() {
    String symptomId;
    
    // TODO: Implement symptom logging functionality
    Navigator.of(context).pop();
  }
}
