import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../providers/symptom_provider.dart';
import '../../providers/medication_provider.dart';
import '../../providers/patient_symptom_provider.dart';
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
    final symptomState = ref.watch(symptomProvider);

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

  Widget _buildBrowseTab(SymptomState symptomState) {
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

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: filteredSymptoms.length,
      itemBuilder: (context, index) {
        final symptom = filteredSymptoms[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              child: Icon(
                Icons.health_and_safety,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
            ),
            title: Text(symptom.name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (symptom.description != null) 
                  Text(symptom.description!),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: _getSeverityColor(symptom.severity),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        symptom.severity[0].toUpperCase() + symptom.severity.substring(1).toLowerCase(),
                        style: TextStyle(
                          color: _getSeverityTextColor(symptom.severity),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    if (symptom.category != null)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          symptom.category![0].toUpperCase() + symptom.category!.substring(1).toLowerCase(),
                          style: TextStyle(
                            color: Colors.blue.shade700,
                            fontSize: 12,
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  'Reported: ${_formatDateTime(symptom.createdAt)}',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            trailing: Icon(
              symptom.isResolved ? Icons.check_circle : Icons.circle_outlined,
              color: symptom.isResolved ? Colors.green : Colors.orange,
            ),
          ),
        );
      },
    );
  }

  Widget _buildLogsTab(SymptomState symptomState) {
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
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: patientSymptomState.symptoms.length,
                      itemBuilder: (context, index) {
                        final symptom = patientSymptomState.symptoms[index];
                        return Card(
                          margin: const EdgeInsets.only(bottom: 12),
                          child: ListTile(
                            title: Text(symptom.name),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (symptom.description != null)
                                  Text(symptom.description!),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        color: _getSeverityColor(symptom.severity),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Text(
                                        symptom.severity[0].toUpperCase() + symptom.severity.substring(1).toLowerCase(),
                                        style: TextStyle(
                                          color: _getSeverityTextColor(symptom.severity),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    if (symptom.category != null)
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 4,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.blue.shade100,
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: Text(
                                          symptom.category![0].toUpperCase() + symptom.category!.substring(1).toLowerCase(),
                                          style: TextStyle(
                                            color: Colors.blue.shade700,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Reported: ${_formatDateTime(symptom.createdAt)}',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 12,
                                  ),
                                ),
                                if (symptom.duration != null)
                                  Text(
                                    'Duration: ${symptom.duration}',
                                    style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 12,
                                    ),
                                  ),
                              ],
                            ),
                            trailing: PopupMenuButton<String>(
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
                            ),
                          ),
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
        return Colors.grey[800]!;
      case 'moderate':
        return Colors.grey[800]!;
      case 'severe':
        return Colors.grey[800]!;
      default:
        return Colors.grey[800]!;
    }
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
    
    if (widget.symptom != null) {
      symptomId = widget.symptom.id;
    } else {
      // Create new symptom first
      symptomId = DateTime.now().millisecondsSinceEpoch.toString();
      ref.read(symptomProvider.notifier).createSymptom(
        name: widget.customSymptom!,
        severity: _severity,
      );
    }

    ref.read(symptomProvider.notifier).logSymptom(
      symptomId: symptomId,
      timestamp: DateTime.now(),
      associatedMedications: _selectedMedications,
      severity: _severity,
      notes: _notesController.text.isEmpty ? null : _notesController.text,
      intensityLevel: _intensity,
    );
  }
}
