import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../../core/widgets/profile_widgets.dart';
import '../../../core/widgets/custom_button.dart';
import '../../providers/auth_provider.dart';
import '../../providers/medication_provider.dart';
import '../../providers/symptom_provider.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);
    final medicationState = ref.watch(medicationProvider);
    final symptomState = ref.watch(symptomProvider);

    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: AppTypography.headlineSmall.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings_outlined,
              color: AppColors.textPrimary,
            ),
            onPressed: () {
              // TODO: Navigate to settings
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            // Profile Header
            ProfileHeader(
              firstName: authState.user?.firstName ?? 'User',
              lastName: authState.user?.lastName ?? '',
              email: authState.user?.email ?? 'user@example.com',
              phoneNumber: authState.user?.phoneNumber,
              healthStatus: _getHealthStatus(medicationState, symptomState),
              healthStatusColor: _getHealthStatusColor(medicationState, symptomState),
              onEditPressed: () {
                // TODO: Navigate to edit profile
              },
            ),
            
            const SizedBox(height: 32),

            // Quick Actions
            Text(
              'Quick Actions',
              style: AppTypography.titleLarge.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            
            SizedBox(
              height: 110,
              child: Row(
                children: [
                  Expanded(
                    child: ProfileQuickAction(
                      icon: Icons.medication_outlined,
                      label: 'Add Medication',
                      color: AppColors.primary,
                      onPressed: () {
                        // TODO: Navigate to add medication
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ProfileQuickAction(
                      icon: Icons.health_and_safety_outlined,
                      label: 'Log Symptoms',
                      color: AppColors.secondary,
                      onPressed: () {
                        // TODO: Navigate to log symptoms
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ProfileQuickAction(
                      icon: Icons.calendar_today_outlined,
                      label: 'Schedule',
                      color: AppColors.info,
                      onPressed: () {
                        // TODO: Navigate to schedule
                      },
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // Health Statistics
            Text(
              'Health Overview',
              style: AppTypography.titleLarge.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            
            // Main Stats Row
            Row(
              children: [
                Expanded(
                  child: HealthStatsCard(
                    title: 'Medications',
                    value: '${medicationState.medications.length}',
                    subtitle: 'Total prescribed',
                    icon: Icons.medication,
                    color: AppColors.primary,
                    progress: _getActiveMedicationsCount(medicationState.medications) / 
                             (medicationState.medications.length > 0 ? medicationState.medications.length : 1),
                    onTap: () {
                      // TODO: Navigate to medications
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: HealthStatsCard(
                    title: 'Symptom Logs',
                    value: '${symptomState.symptomLogs.length}',
                    subtitle: 'Total recorded',
                    icon: Icons.health_and_safety,
                    color: AppColors.secondary,
                    onTap: () {
                      // TODO: Navigate to symptoms
                    },
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 8),
            
            // Secondary Stats Row
            Row(
              children: [
                Expanded(
                  child: HealthInsightCard(
                    title: 'Active Medications',
                    value: '${_getActiveMedicationsCount(medicationState.medications)}',
                    trend: 'On schedule',
                    isPositiveTrend: true,
                    icon: Icons.check_circle_outline,
                    color: AppColors.success,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: HealthInsightCard(
                    title: 'Recent Logs',
                    value: '${_getRecentLogsCount(symptomState.symptomLogs)}',
                    trend: 'This week',
                    isPositiveTrend: _getRecentLogsCount(symptomState.symptomLogs) > 0,
                    icon: Icons.timeline,
                    color: AppColors.warning,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 32),

            // Settings & Options
            Text(
              'Settings & Support',
              style: AppTypography.titleLarge.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            
            Container(
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.shadow.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  ProfileMenuItem(
                    icon: Icons.notifications_outlined,
                    title: 'Notification Settings',
                    subtitle: 'Manage alerts and reminders',
                    onTap: () {
                      // TODO: Navigate to notification settings
                    },
                  ),
                  ProfileMenuItem(
                    icon: Icons.sync_outlined,
                    title: 'Data Sync',
                    subtitle: 'Cloud backup and synchronization',
                    onTap: () {
                      // TODO: Navigate to sync settings
                    },
                  ),
                  ProfileMenuItem(
                    icon: Icons.security_outlined,
                    title: 'Privacy & Security',
                    subtitle: 'Manage your data and privacy',
                    onTap: () {
                      // TODO: Navigate to privacy settings
                    },
                  ),
                  ProfileMenuItem(
                    icon: Icons.help_outline,
                    title: 'Help & Support',
                    subtitle: 'Get help and contact support',
                    onTap: () {
                      // TODO: Navigate to help
                    },
                  ),
                  ProfileMenuItem(
                    icon: Icons.info_outline,
                    title: 'About Sym',
                    subtitle: 'App version and information',
                    onTap: () {
                      _showAboutDialog(context);
                    },
                    showDivider: false,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Logout Button
            CustomButton(
              text: 'Sign Out',
              icon: Icons.logout,
              onPressed: () => _showLogoutDialog(context, ref),
              type: ButtonType.danger,
              size: ButtonSize.large,
            ),
            
            const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  String _getInitials(String? firstName, String? lastName) {
    final first = firstName?.isNotEmpty == true ? firstName![0].toUpperCase() : '';
    final last = lastName?.isNotEmpty == true ? lastName![0].toUpperCase() : '';
    return '$first$last'.isEmpty ? 'U' : '$first$last';
  }

  int _getActiveMedicationsCount(List<dynamic> medications) {
    return medications.where((m) => m.status == 'active').length;
  }

  int _getRecentLogsCount(List<dynamic> logs) {
    final sevenDaysAgo = DateTime.now().subtract(const Duration(days: 7));
    return logs.where((log) => log.timestamp.isAfter(sevenDaysAgo)).length;
  }

  String _getHealthStatus(dynamic medicationState, dynamic symptomState) {
    final activeMeds = _getActiveMedicationsCount(medicationState.medications);
    final recentLogs = _getRecentLogsCount(symptomState.symptomLogs);
    
    if (activeMeds > 0 && recentLogs < 3) {
      return 'Good';
    } else if (activeMeds > 0 && recentLogs >= 3) {
      return 'Monitoring';
    } else if (activeMeds == 0 && recentLogs > 5) {
      return 'Needs Attention';
    }
    return 'Stable';
  }

  Color _getHealthStatusColor(dynamic medicationState, dynamic symptomState) {
    final status = _getHealthStatus(medicationState, symptomState);
    switch (status) {
      case 'Good':
        return AppColors.success;
      case 'Monitoring':
        return AppColors.warning;
      case 'Needs Attention':
        return AppColors.error;
      default:
        return AppColors.info;
    }
  }

  void _showLogoutDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Text(
          'Sign Out',
          style: AppTypography.titleLarge.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        content: Text(
          'Are you sure you want to sign out of your account?',
          style: AppTypography.bodyMedium.copyWith(
            color: AppColors.textSecondary,
          ),
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
            text: 'Sign Out',
            onPressed: () {
              ref.read(authProvider.notifier).logout();
              Navigator.of(context).pop();
            },
            type: ButtonType.danger,
            size: ButtonSize.small,
          ),
        ],
      ),
    );
  }

  void _showAboutDialog(BuildContext context) {
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
                color: AppColors.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.medical_services_rounded,
                color: AppColors.primary,
                size: 24,
              ),
            ),
            const SizedBox(width: 12),
            Text(
              'About Sym',
              style: AppTypography.titleLarge.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Version 1.0.0',
              style: AppTypography.labelMedium.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'A comprehensive medication and symptom tracking app designed to help you manage your health effectively.',
              style: AppTypography.bodyMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'Key Features:',
              style: AppTypography.titleSmall.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            _buildFeatureItem('Medication scheduling and reminders'),
            _buildFeatureItem('Symptom tracking and logging'),
            _buildFeatureItem('Health insights and analytics'),
            _buildFeatureItem('Secure cloud synchronization'),
          ],
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

  Widget _buildFeatureItem(String feature) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        children: [
          Icon(
            Icons.check_circle,
            color: AppColors.success,
            size: 16,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              feature,
              style: AppTypography.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
