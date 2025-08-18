import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../../core/widgets/custom_card.dart';
import '../../../core/widgets/custom_button.dart';
import '../../providers/medication_provider.dart';
import 'add_medication_modal.dart';

class MedicationsPage extends ConsumerWidget {
  const MedicationsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final medicationState = ref.watch(medicationProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Medications',
          style: AppTypography.appBarTitle,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // TODO: Implement search
            },
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              switch (value) {
                case 'all':
                  ref.read(medicationProvider.notifier).loadMedications();
                  break;
                case 'active':
                  ref.read(medicationProvider.notifier).loadMedications(status: 'active');
                  break;
                case 'paused':
                  ref.read(medicationProvider.notifier).loadMedications(status: 'paused');
                  break;
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'all', child: Text('All Medications')),
              const PopupMenuItem(value: 'active', child: Text('Active Only')),
              const PopupMenuItem(value: 'paused', child: Text('Paused Only')),
            ],
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.read(medicationProvider.notifier).loadMedications(),
        child: medicationState.isLoading
            ? const Center(child: CircularProgressIndicator())
            : medicationState.medications.isEmpty
                ? _buildEmptyState()
                : _buildMedicationsList(medicationState.medications, ref),
      ),
      floatingActionButton: CustomFloatingActionButton(
        icon: Icons.add,
        tooltip: 'Add Medication',
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AddMedicationModal(),
            ),
          );
        },
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: CustomCard(
        margin: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.medicationPrimary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Icon(
                Icons.medication_outlined,
                size: 64,
                color: AppColors.medicationPrimary,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'No medications yet',
              style: AppTypography.headlineSmall.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Start tracking your medications to stay on top of your health',
              style: AppTypography.bodyMedium.copyWith(
                color: AppColors.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            CustomButton(
              text: 'Add Your First Medication',
              icon: Icons.add_circle_outline,
              onPressed: () {
                // Navigate to add medication
              },
              type: ButtonType.primary,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMedicationsList(List<dynamic> medications, WidgetRef ref) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: medications.length,
      itemBuilder: (context, index) {
        final medication = medications[index];
        return _buildMedicationCard(medication, ref);
      },
    );
  }

  Widget _buildMedicationCard(dynamic medication, WidgetRef ref) {
    final statusColor = _getStatusColor(medication.status);
    final isActive = medication.status == 'active';
    final nextDose = _getNextDoseTime(medication.scheduleTimes);
    
    return Builder(
      builder: (context) => MedicationCard(
      isActive: isActive,
      accentColor: statusColor,
      onTap: () {
        // Navigate to medication details
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with medication name and status
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      medication.name,
                      style: AppTypography.titleLarge.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: statusColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            medication.status?.toUpperCase() ?? 'UNKNOWN',
                            style: AppTypography.labelSmall.copyWith(
                              color: statusColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          medication.dosage,
                          style: AppTypography.bodyMedium.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              PopupMenuButton<String>(
                onSelected: (value) {
                  switch (value) {
                    case 'edit':
                      // TODO: Navigate to edit medication
                      break;
                    case 'take':
                      ref.read(medicationProvider.notifier).markMedicationTaken(medication.id);
                      break;
                    case 'delete':
                      _showDeleteDialog(context, ref, medication.id, medication.name);
                      break;
                  }
                },
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 'edit',
                    child: Row(
                      children: [
                        Icon(Icons.edit_outlined, size: 20),
                        SizedBox(width: 8),
                        Text('Edit'),
                      ],
                    ),
                  ),
                  const PopupMenuItem(
                    value: 'take',
                    child: Row(
                      children: [
                        Icon(Icons.check_circle_outline, size: 20),
                        SizedBox(width: 8),
                        Text('Mark as Taken'),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: 'delete',
                    child: Row(
                      children: [
                        Icon(Icons.delete_outline, size: 20, color: AppColors.error),
                        const SizedBox(width: 8),
                        Text('Delete', style: TextStyle(color: AppColors.error)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          
          const SizedBox(height: 16),
          
          // Schedule information
          if (medication.scheduleTimes.isNotEmpty) ...[
            Row(
              children: [
                Icon(
                  Icons.schedule,
                  size: 16,
                  color: AppColors.textSecondary,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Schedule: ${medication.scheduleTimes.join(', ')}',
                    style: AppTypography.bodySmall.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
          ],
          
          // Next dose time
          if (nextDose != null) ...[
            Row(
              children: [
                Icon(
                  Icons.alarm,
                  size: 16,
                  color: AppColors.warning,
                ),
                const SizedBox(width: 8),
                Text(
                  'Next dose: $nextDose',
                  style: AppTypography.bodySmall.copyWith(
                    color: AppColors.warning,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
          ],
          
          // Linked symptoms
          if (medication.linkedSymptoms.isNotEmpty) ...[
            Row(
              children: [
                Icon(
                  Icons.link,
                  size: 16,
                  color: AppColors.textSecondary,
                ),
                const SizedBox(width: 8),
                Text(
                  'Linked to ${medication.linkedSymptoms.length} symptom${medication.linkedSymptoms.length == 1 ? '' : 's'}',
                  style: AppTypography.bodySmall.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
          ] else
            const SizedBox(height: 8),
          
          // Action buttons
          Row(
            children: [
              if (isActive) ...[
                Expanded(
                  child: CustomButton(
                    text: 'Take Now',
                    icon: Icons.check_circle_outline,
                    onPressed: () {
                      _showTakeMedicationDialog(context, ref, medication);
                    },
                    type: ButtonType.primary,
                    size: ButtonSize.small,
                  ),
                ),
                const SizedBox(width: 12),
              ],
              Expanded(
                child: CustomButton(
                  text: 'View Details',
                  icon: Icons.info_outline,
                  onPressed: () {
                    _showMedicationDetails(context, medication);
                  },
                  type: ButtonType.secondary,
                  size: ButtonSize.small,
                ),
              ),
            ],
          ),
        ],
      ),
      ),
    );
  }

  String? _getNextDoseTime(List<String> scheduleTimes) {
    if (scheduleTimes.isEmpty) return null;
    
    final now = DateTime.now();
    final currentTime = '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}';
    
    // Find next scheduled time
    for (final time in scheduleTimes) {
      if (time.compareTo(currentTime) > 0) {
        return time;
      }
    }
    
    // If no time today, return first time tomorrow
    return '${scheduleTimes.first} (tomorrow)';
  }

  Color _getStatusColor(String? status) {
    switch (status) {
      case 'active':
        return AppColors.success;
      case 'paused':
        return AppColors.warning;
      case 'stopped':
        return AppColors.error;
      case 'completed':
        return AppColors.success;
      default:
        return AppColors.textSecondary;
    }
  }

  void _showDeleteDialog(BuildContext context, WidgetRef ref, String medicationId, String medicationName) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Medication'),
        content: Text('Are you sure you want to delete "$medicationName"? This action cannot be undone.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              ref.read(medicationProvider.notifier).deleteMedication(medicationId);
              Navigator.of(context).pop();
            },
            style: FilledButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.error,
            ),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }

  void _showTakeMedicationDialog(BuildContext context, WidgetRef ref, dynamic medication) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.success.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.medication,
                color: AppColors.success,
                size: 24,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                'Take Medication',
                style: AppTypography.titleLarge.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mark "${medication.name}" as taken?',
              style: AppTypography.bodyLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Dosage: ${medication.dosage}',
              style: AppTypography.bodyMedium.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Time: ${DateTime.now().hour.toString().padLeft(2, '0')}:${DateTime.now().minute.toString().padLeft(2, '0')}',
              style: AppTypography.bodyMedium.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              'Cancel',
              style: AppTypography.labelLarge.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ),
          CustomButton(
            text: 'Mark as Taken',
            icon: Icons.check_circle,
            onPressed: () {
              ref.read(medicationProvider.notifier).markMedicationTaken(medication.id);
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${medication.name} marked as taken'),
                  backgroundColor: AppColors.success,
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            type: ButtonType.primary,
            size: ButtonSize.small,
          ),
        ],
      ),
    );
  }

  void _showMedicationDetails(BuildContext context, dynamic medication) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.medicationPrimary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.medication,
                color: AppColors.medicationPrimary,
                size: 24,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                medication.name,
                style: AppTypography.titleLarge.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        content: Container(
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(8),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDetailRow('Dosage', medication.dosage),
                  _buildDetailRow('Status', medication.status?.toUpperCase() ?? 'ACTIVE'),
                  if (medication.scheduleTimes.isNotEmpty)
                    _buildDetailRow('Schedule', medication.scheduleTimes.join(', ')),
                  if (medication.linkedSymptoms.isNotEmpty)
                    _buildDetailRow('Linked Symptoms', '${medication.linkedSymptoms.length} symptom${medication.linkedSymptoms.length == 1 ? '' : 's'}'),
                  if (medication.description != null && medication.description!.isNotEmpty)
                    _buildDetailRow('Description', medication.description!),
                  if (medication.category != null && medication.category!.isNotEmpty)
                    _buildDetailRow('Category', medication.category!),
                  if (medication.dosageForm != null && medication.dosageForm!.isNotEmpty)
                    _buildDetailRow('Dosage Form', medication.dosageForm!),
                  if (medication.priority != null && medication.priority!.isNotEmpty)
                    _buildDetailRow('Priority', medication.priority!.toUpperCase()),
                  if (medication.startDate != null)
                    _buildDetailRow('Start Date', '${medication.startDate!.day}/${medication.startDate!.month}/${medication.startDate!.year}'),
                  if (medication.endDate != null)
                    _buildDetailRow('End Date', '${medication.endDate!.day}/${medication.endDate!.month}/${medication.endDate!.year}'),
                  if (medication.lastTaken != null)
                    _buildDetailRow('Last Taken', '${medication.lastTaken!.day}/${medication.lastTaken!.month}/${medication.lastTaken!.year} at ${medication.lastTaken!.hour.toString().padLeft(2, '0')}:${medication.lastTaken!.minute.toString().padLeft(2, '0')}'),
                  if (medication.totalDoses != null && medication.takenDoses != null)
                    _buildDetailRow('Progress', '${medication.takenDoses}/${medication.totalDoses} doses taken'),
                ],
              ),
            ),
          ),
        ),
        actions: [
          CustomButton(
            text: 'Close',
            onPressed: () => Navigator.of(context).pop(),
            type: ButtonType.secondary,
            size: ButtonSize.small,
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: AppTypography.labelMedium.copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: AppTypography.bodyMedium.copyWith(
              color: Colors.grey[800],
            ),
          ),
        ],
      ),
    );
  }
}
