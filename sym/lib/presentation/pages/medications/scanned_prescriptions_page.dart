import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../providers/scanned_prescription_provider.dart';
import '../../widgets/common/loading_widget.dart';
import '../../widgets/common/error_widget.dart';

class ScannedPrescriptionsPage extends ConsumerStatefulWidget {
  const ScannedPrescriptionsPage({super.key});

  @override
  ConsumerState<ScannedPrescriptionsPage> createState() => _ScannedPrescriptionsPageState();
}

class _ScannedPrescriptionsPageState extends ConsumerState<ScannedPrescriptionsPage> {
  @override
  void initState() {
    super.initState();
    // Load scanned prescriptions when the page opens
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(scannedPrescriptionNotifierProvider.notifier).loadScannedPrescriptions();
    });
  }

  @override
  Widget build(BuildContext context) {
    final scannedPrescriptionsState = ref.watch(scannedPrescriptionNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Scanned Prescriptions'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            onPressed: () => ref.read(scannedPrescriptionNotifierProvider.notifier).loadScannedPrescriptions(),
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: scannedPrescriptionsState.when(
        data: (scannedPrescriptions) {
          if (scannedPrescriptions.isEmpty) {
            return _buildEmptyState();
          }
          return _buildScannedPrescriptionsList(scannedPrescriptions);
        },
        loading: () => const Center(
          child: LoadingWidget(message: 'Loading scanned prescriptions...'),
        ),
        error: (error, stack) => Center(
          child: CustomErrorWidget(
            error: error.toString(),
            onRetry: () => ref.read(scannedPrescriptionNotifierProvider.notifier).loadScannedPrescriptions(),
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.qr_code_scanner_outlined,
              size: 80,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 24),
            Text(
              'No Scanned Prescriptions',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.grey[600],
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Scan your prescriptions to see them here.\nYou can then easily add them to your medications.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.grey[500],
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.qr_code_scanner),
              label: const Text('Scan Prescription'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScannedPrescriptionsList(List<dynamic> scannedPrescriptions) {
    return RefreshIndicator(
      onRefresh: () => ref.read(scannedPrescriptionNotifierProvider.notifier).loadScannedPrescriptions(),
      child: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: scannedPrescriptions.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final prescription = scannedPrescriptions[index];
          return _buildScannedPrescriptionCard(prescription);
        },
      ),
    );
  }

  Widget _buildScannedPrescriptionCard(dynamic prescription) {
    final isConverted = prescription.isConvertedToMedication;
    final statusColor = isConverted ? Colors.green : Colors.blue;
    final statusIcon = isConverted ? Icons.check_circle : Icons.qr_code_scanner;

    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with status
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: statusColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    statusIcon,
                    color: statusColor,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        prescription.medication,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Scanned ${DateFormat('MMM dd, yyyy').format(prescription.scannedAt)}',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: statusColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: statusColor.withOpacity(0.3)),
                  ),
                  child: Text(
                    isConverted ? 'Added' : 'Pending',
                    style: TextStyle(
                      color: statusColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 16),
            
            // Medication details
            _buildDetailRow('Dosage', prescription.dosage, Icons.straighten),
            const SizedBox(height: 8),
            _buildDetailRow('Instructions', prescription.instructions, Icons.info_outline),
            const SizedBox(height: 8),
            _buildDetailRow('Confidence', '${(prescription.confidence * 100).toStringAsFixed(1)}%', Icons.analytics),
            
            const SizedBox(height: 16),
            
            // Action buttons
            Row(
              children: [
                if (!isConverted) ...[
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () => _convertToMedication(prescription),
                      icon: const Icon(Icons.add, size: 18),
                      label: const Text('Add to Medications'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                ],
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () => _deleteScannedPrescription(prescription),
                    icon: const Icon(Icons.delete_outline, size: 18),
                    label: const Text('Delete'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value, IconData icon) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 16,
          color: Colors.grey[600],
        ),
        const SizedBox(width: 8),
        SizedBox(
          width: 80,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _convertToMedication(dynamic prescription) async {
    try {
      final success = await ref.read(scannedPrescriptionNotifierProvider.notifier)
          .convertToMedication(prescription.id);

      if (mounted) {
        if (success) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('✅ Medication added successfully!'),
              backgroundColor: Colors.green,
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('❌ Failed to add medication'),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Future<void> _deleteScannedPrescription(dynamic prescription) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Scanned Prescription'),
        content: Text('Are you sure you want to delete the scanned prescription for "${prescription.medication}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: FilledButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: const Text('Delete'),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      try {
        final success = await ref.read(scannedPrescriptionNotifierProvider.notifier)
            .deleteScannedPrescription(prescription.id);

        if (mounted) {
          if (success) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('✅ Scanned prescription deleted'),
                backgroundColor: Colors.green,
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('❌ Failed to delete scanned prescription'),
                backgroundColor: Colors.red,
              ),
            );
          }
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Error: $e'),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    }
  }
}
