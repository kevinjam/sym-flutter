import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../core/theme/app_colors.dart';
import '../../../domain/entities/health_report.dart';

class HealthReportDetailPage extends StatelessWidget {
  final HealthReport report;

  const HealthReportDetailPage({
    super.key,
    required this.report,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: CustomScrollView(
        slivers: [
          _buildSliverAppBar(context),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildReportHeader(),
                  const SizedBox(height: 24),
                  _buildHealthMetricsSection(),
                  const SizedBox(height: 24),
                  _buildTestResultsSection(),
                  const SizedBox(height: 24),
                  _buildDoctorNotesSection(),
                  const SizedBox(height: 24),
                  _buildRecommendationsSection(),
                  const SizedBox(height: 24),
                  _buildFollowUpSection(),
                  const SizedBox(height: 24),
                  _buildAttachmentsSection(context),
                  const SizedBox(height: 100), // Bottom padding
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _shareReport(context),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        icon: const Icon(Icons.share),
        label: const Text('Share Report'),
      ),
    );
  }

  Widget _buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 120,
      floating: false,
      pinned: true,
      backgroundColor: _getReportTypeColor(report.reportType),
      foregroundColor: Colors.white,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          report.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        background: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                _getReportTypeColor(report.reportType),
                _getReportTypeColor(report.reportType).withOpacity(0.8),
              ],
            ),
          ),
          child: Center(
            child: Icon(
              _getReportTypeIcon(report.reportType),
              size: 60,
              color: Colors.white70,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildReportHeader() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: _getReportTypeColor(report.reportType).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  _getReportTypeIcon(report.reportType),
                  color: _getReportTypeColor(report.reportType),
                  size: 24,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      report.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _getReportTypeLabel(report.reportType),
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (report.description != null && report.description!.isNotEmpty) ...[
            const SizedBox(height: 16),
            Text(
              report.description!,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
                height: 1.5,
              ),
            ),
          ],
          const SizedBox(height: 16),
          Row(
            children: [
              _buildInfoChip(
                Icons.calendar_today,
                _formatDate(report.reportDate),
              ),
              const SizedBox(width: 12),
              if (report.doctor != null)
                _buildInfoChip(
                  Icons.person,
                  'Dr. ${report.doctor!.firstName} ${report.doctor!.lastName}',
                ),
            ],
          ),
          if (report.tags.isNotEmpty) ...[
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: report.tags.map((tag) => _buildTagChip(tag)).toList(),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildHealthMetricsSection() {
    if (report.healthMetrics.isEmpty) {
      return const SizedBox.shrink();
    }

    return _buildSection(
      title: 'Health Metrics',
      icon: Icons.health_and_safety,
      child: Column(
        children: report.healthMetrics.map((metric) => _buildMetricCard(metric)).toList(),
      ),
    );
  }

  Widget _buildTestResultsSection() {
    if (report.testResults.isEmpty) {
      return const SizedBox.shrink();
    }

    return _buildSection(
      title: 'Test Results',
      icon: Icons.science,
      child: Column(
        children: report.testResults.map((result) => _buildTestResultCard(result)).toList(),
      ),
    );
  }

  Widget _buildDoctorNotesSection() {
    if (report.doctorNotes == null || report.doctorNotes!.isEmpty) {
      return const SizedBox.shrink();
    }

    return _buildSection(
      title: 'Doctor Notes',
      icon: Icons.note_alt,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.blue[200]!),
        ),
        child: Text(
          report.doctorNotes!,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[800],
            height: 1.5,
          ),
        ),
      ),
    );
  }

  Widget _buildRecommendationsSection() {
    if (report.recommendations == null || report.recommendations!.isEmpty) {
      return const SizedBox.shrink();
    }

    return _buildSection(
      title: 'Recommendations',
      icon: Icons.lightbulb_outline,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.green[50],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.green[200]!),
        ),
        child: Text(
          report.recommendations!,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[800],
            height: 1.5,
          ),
        ),
      ),
    );
  }

  Widget _buildFollowUpSection() {
    if (!report.followUpRequired) {
      return const SizedBox.shrink();
    }

    return _buildSection(
      title: 'Follow-up Information',
      icon: Icons.schedule,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.orange[50],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.orange[200]!),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.warning_amber,
                  color: Colors.orange[600],
                  size: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  'Follow-up Required',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange[800],
                  ),
                ),
              ],
            ),
            if (report.followUpDate != null) ...[
              const SizedBox(height: 12),
              Row(
                children: [
                  Icon(
                    Icons.calendar_today,
                    color: Colors.orange[600],
                    size: 16,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Scheduled for: ${_formatDate(report.followUpDate!)}',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.orange[800],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildAttachmentsSection(BuildContext context) {
    if (report.attachments.isEmpty) {
      return const SizedBox.shrink();
    }

    return _buildSection(
      title: 'Attachments',
      icon: Icons.attach_file,
      child: Column(
        children: report.attachments.map((attachment) => _buildAttachmentCard(context, attachment)).toList(),
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required IconData icon,
    required Widget child,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: AppColors.primary,
                  size: 24,
                ),
                const SizedBox(width: 12),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: child,
          ),
        ],
      ),
    );
  }

  Widget _buildMetricCard(HealthMetric metric) {
    Color statusColor = _getStatusColor(metric.status);
    
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Row(
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: statusColor,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  metric.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '${metric.value} ${metric.unit}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: statusColor,
                  ),
                ),
                if (metric.referenceRange != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    'Reference: ${metric.referenceRange}',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: statusColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              metric.status.toUpperCase(),
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: statusColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTestResultCard(TestResult result) {
    Color statusColor = _getStatusColor(result.status);
    
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: statusColor,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  result.testName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: statusColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  result.status.toUpperCase(),
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: statusColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            '${result.result}${result.unit != null ? ' ${result.unit}' : ''}',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: statusColor,
            ),
          ),
          if (result.referenceRange != null) ...[
            const SizedBox(height: 4),
            Text(
              'Reference: ${result.referenceRange}',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ],
          if (result.notes != null && result.notes!.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              result.notes!,
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey[700],
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildAttachmentCard(BuildContext context, Attachment attachment) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Row(
        children: [
          Icon(
            _getFileIcon(attachment.fileType),
            color: AppColors.primary,
            size: 20,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  attachment.fileName,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  'Uploaded: ${_formatDate(attachment.uploadedAt)}',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () => _downloadAttachment(context, attachment),
            icon: const Icon(Icons.download, size: 20),
            color: AppColors.primary,
          ),
        ],
      ),
    );
  }

  Widget _buildInfoChip(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: Colors.grey[600]),
          const SizedBox(width: 6),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[700],
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTagChip(String tag) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        tag,
        style: const TextStyle(
          fontSize: 11,
          color: AppColors.primary,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'normal':
        return AppColors.success;
      case 'abnormal':
      case 'high':
      case 'critical':
        return AppColors.error;
      case 'low':
        return AppColors.warning;
      default:
        return Colors.grey;
    }
  }

  Color _getReportTypeColor(String reportType) {
    switch (reportType) {
      case 'general':
        return AppColors.primary;
      case 'blood_test':
        return AppColors.error;
      case 'imaging':
        return AppColors.warning;
      case 'specialist':
        return AppColors.success;
      case 'emergency':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  IconData _getReportTypeIcon(String reportType) {
    switch (reportType) {
      case 'general':
        return Icons.health_and_safety;
      case 'blood_test':
        return Icons.science;
      case 'imaging':
        return Icons.medical_services;
      case 'specialist':
        return Icons.person;
      case 'emergency':
        return Icons.emergency;
      default:
        return Icons.description;
    }
  }

  String _getReportTypeLabel(String reportType) {
    switch (reportType) {
      case 'general':
        return 'General Health Check';
      case 'blood_test':
        return 'Blood Test';
      case 'imaging':
        return 'Imaging';
      case 'specialist':
        return 'Specialist Consultation';
      case 'emergency':
        return 'Emergency Visit';
      default:
        return reportType;
    }
  }

  IconData _getFileIcon(String fileType) {
    if (fileType.toLowerCase().contains('pdf')) {
      return Icons.picture_as_pdf;
    } else if (fileType.toLowerCase().contains('image')) {
      return Icons.image;
    } else if (fileType.toLowerCase().contains('word')) {
      return Icons.description;
    } else {
      return Icons.attach_file;
    }
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  void _shareReport(BuildContext context) {
    // TODO: Implement share functionality
    HapticFeedback.lightImpact();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Share feature coming soon!'),
        backgroundColor: AppColors.primary,
      ),
    );
  }

  void _downloadAttachment(BuildContext context, Attachment attachment) {
    // TODO: Implement attachment download
    HapticFeedback.lightImpact();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Downloading ${attachment.fileName}...'),
        backgroundColor: AppColors.primary,
      ),
    );
  }
}
