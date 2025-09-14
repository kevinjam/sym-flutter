import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../../core/widgets/profile_widgets.dart';
import '../../../core/widgets/custom_button.dart';
import '../../providers/auth_provider.dart';
import '../../providers/medication_provider.dart';
import '../../providers/symptom_provider.dart';

class ProfilePageDark extends ConsumerStatefulWidget {
  const ProfilePageDark({super.key});

  @override
  ConsumerState<ProfilePageDark> createState() => _ProfilePageDarkState();
}

class _ProfilePageDarkState extends ConsumerState<ProfilePageDark> 
    with TickerProviderStateMixin {
  late AnimationController _headerAnimationController;
  late AnimationController _cardAnimationController;
  late Animation<double> _headerAnimation;
  late Animation<double> _cardAnimation;

  @override
  void initState() {
    super.initState();
    _headerAnimationController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _cardAnimationController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );
    
    _headerAnimation = CurvedAnimation(
      parent: _headerAnimationController,
      curve: Curves.easeOutCubic,
    );
    _cardAnimation = CurvedAnimation(
      parent: _cardAnimationController,
      curve: Curves.easeOutCubic,
    );
    
    _headerAnimationController.forward();
    Future.delayed(const Duration(milliseconds: 200), () {
      _cardAnimationController.forward();
    });
  }

  @override
  void dispose() {
    _headerAnimationController.dispose();
    _cardAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);
    final medicationState = ref.watch(medicationProvider);
    final symptomState = ref.watch(symptomProvider);
    
    return LayoutBuilder(
      builder: (context, constraints) {
        final isTablet = constraints.maxWidth > 600;
        final isLargeScreen = constraints.maxWidth > 900;
        
        return Scaffold(
          backgroundColor: const Color(0xFF0A0A0A),
          body: SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: isTablet ? 32 : 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    
                    // Enhanced Profile Header
                    AnimatedBuilder(
                      animation: _headerAnimation,
                      builder: (context, child) {
                        return Transform.translate(
                          offset: Offset(0, 50 * (1 - _headerAnimation.value)),
                          child: Opacity(
                            opacity: _headerAnimation.value,
                            child: _buildEnhancedProfileHeader(
                              context, authState, medicationState, symptomState, 
                              isTablet, isLargeScreen
                            ),
                          ),
                        );
                      },
                    ),
                    
                    const SizedBox(height: 32),

                    // Animated Content Sections
                    AnimatedBuilder(
                      animation: _cardAnimation,
                      builder: (context, child) {
                        return Transform.translate(
                          offset: Offset(0, 30 * (1 - _cardAnimation.value)),
                          child: Opacity(
                            opacity: _cardAnimation.value,
                            child: Column(
                              children: [
                                _buildResponsiveQuickActions(isTablet, isLargeScreen),
                                const SizedBox(height: 32),
                                _buildResponsiveHealthOverview(
                                  medicationState, symptomState, isTablet, isLargeScreen
                                ),
                                const SizedBox(height: 32),
                                _buildResponsiveSettingsSection(context, isTablet),
                                const SizedBox(height: 32),
                                _buildEnhancedSignOutButton(context, ref, isTablet),
                                const SizedBox(height: 32),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildEnhancedProfileHeader(
    BuildContext context, 
    dynamic authState, 
    dynamic medicationState, 
    dynamic symptomState,
    bool isTablet,
    bool isLargeScreen
  ) {
    final healthStatus = _getHealthStatus(medicationState, symptomState);
    final healthStatusColor = _getHealthStatusColor(medicationState, symptomState);
    final firstName = authState.user?.firstName ?? 'User';
    final lastName = authState.user?.lastName ?? '';
    final email = authState.user?.email ?? 'user@example.com';
    
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF1A1A1A),
            Color(0xFF0F0F0F),
            Color(0xFF1A1A1A),
          ],
          stops: [0.0, 0.5, 1.0],
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
          BoxShadow(
            color: AppColors.primary.withOpacity(0.1),
            blurRadius: 30,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(isTablet ? 32 : 24),
        child: Column(
          children: [
            // Header with title and settings
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    'My Profile',
                    style: TextStyle(
                      fontSize: isTablet ? 32 : 28,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      letterSpacing: -0.5,
                    ),
                  ),
                ),
                _buildActionButton(
                  icon: Icons.settings_rounded,
                  onPressed: () {},
                  isTablet: isTablet,
                ),
              ],
            ),
            
            SizedBox(height: isTablet ? 40 : 32),
            
            // Profile content
            if (isLargeScreen)
              _buildLargeScreenProfile(firstName, lastName, email, healthStatus, healthStatusColor)
            else
              _buildCompactProfile(firstName, lastName, email, healthStatus, healthStatusColor, isTablet),
          ],
        ),
      ),
    );
  }

  Widget _buildLargeScreenProfile(
    String firstName, String lastName, String email, 
    String healthStatus, Color healthStatusColor
  ) {
    return Row(
      children: [
        _buildEnhancedAvatar(firstName, lastName, 80),
        const SizedBox(width: 32),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$firstName $lastName'.trim(),
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                email,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
              const SizedBox(height: 16),
              _buildHealthStatusBadge(healthStatus, healthStatusColor),
            ],
          ),
        ),
        _buildActionButton(
          icon: Icons.edit_rounded,
          onPressed: () {},
          isTablet: true,
        ),
      ],
    );
  }

  Widget _buildCompactProfile(
    String firstName, String lastName, String email, 
    String healthStatus, Color healthStatusColor, bool isTablet
  ) {
    return Column(
      children: [
        Row(
          children: [
            _buildEnhancedAvatar(firstName, lastName, isTablet ? 80 : 72),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$firstName $lastName'.trim(),
                    style: TextStyle(
                      fontSize: isTablet ? 26 : 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(
                      fontSize: isTablet ? 16 : 14,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
            _buildActionButton(
              icon: Icons.edit_rounded,
              onPressed: () {},
              isTablet: isTablet,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Align(
          alignment: Alignment.centerLeft,
          child: _buildHealthStatusBadge(healthStatus, healthStatusColor),
        ),
      ],
    );
  }

  Widget _buildEnhancedAvatar(String firstName, String lastName, double size) {
    return Hero(
      tag: 'profile_avatar',
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.primary,
              AppColors.secondary,
              AppColors.primary.withOpacity(0.8),
            ],
          ),
          borderRadius: BorderRadius.circular(size / 2),
          boxShadow: [
            BoxShadow(
              color: AppColors.primary.withOpacity(0.3),
              blurRadius: 15,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: const Color(0xFF2A2A2A),
            borderRadius: BorderRadius.circular((size - 4) / 2),
          ),
          child: Center(
            child: Text(
              _getInitials(firstName, lastName),
              style: TextStyle(
                fontSize: size * 0.35,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required VoidCallback onPressed,
    required bool isTablet,
  }) {
    return Container(
      width: isTablet ? 52 : 48,
      height: isTablet ? 52 : 48,
      decoration: BoxDecoration(
        color: const Color(0xFF2A2A2A),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFF3A3A3A),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(16),
          child: Icon(
            icon,
            color: Colors.white.withOpacity(0.8),
            size: isTablet ? 24 : 20,
          ),
        ),
      ),
    );
  }

  Widget _buildHealthStatusBadge(String healthStatus, Color healthStatusColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: healthStatusColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: healthStatusColor.withOpacity(0.4),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            _getHealthStatusIcon(healthStatus),
            size: 18,
            color: Colors.white,
          ),
          const SizedBox(width: 8),
          Text(
            healthStatus,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildResponsiveQuickActions(bool isTablet, bool isLargeScreen) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quick Actions',
          style: TextStyle(
            fontSize: isTablet ? 24 : 22,
            fontWeight: FontWeight.w800,
            color: Colors.white,
            letterSpacing: -0.5,
          ),
        ),
        const SizedBox(height: 20),
        if (isLargeScreen)
          _buildLargeScreenActions()
        else if (isTablet)
          _buildTabletActions()
        else
          _buildMobileActions(),
      ],
    );
  }

  Widget _buildLargeScreenActions() {
    return Row(
      children: [
        Expanded(child: _buildQuickActionCard(Icons.medication_rounded, 'Add Medication', [AppColors.primary, AppColors.primary.withOpacity(0.8)], () {}, true)),
        const SizedBox(width: 16),
        Expanded(child: _buildQuickActionCard(Icons.health_and_safety_rounded, 'Log Symptoms', [AppColors.secondary, AppColors.secondary.withOpacity(0.8)], () {}, true)),
        const SizedBox(width: 16),
        Expanded(child: _buildQuickActionCard(Icons.calendar_today_rounded, 'Schedule', [AppColors.info, AppColors.info.withOpacity(0.8)], () {}, true)),
        const SizedBox(width: 16),
        Expanded(child: _buildQuickActionCard(Icons.analytics_rounded, 'Analytics', [AppColors.warning, AppColors.warning.withOpacity(0.8)], () {}, true)),
      ],
    );
  }

  Widget _buildTabletActions() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: _buildQuickActionCard(Icons.medication_rounded, 'Add Medication', [AppColors.primary, AppColors.primary.withOpacity(0.8)], () {}, true)),
            const SizedBox(width: 16),
            Expanded(child: _buildQuickActionCard(Icons.health_and_safety_rounded, 'Log Symptoms', [AppColors.secondary, AppColors.secondary.withOpacity(0.8)], () {}, true)),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(child: _buildQuickActionCard(Icons.calendar_today_rounded, 'Schedule', [AppColors.info, AppColors.info.withOpacity(0.8)], () {}, true)),
            const SizedBox(width: 16),
            Expanded(child: _buildQuickActionCard(Icons.analytics_rounded, 'Analytics', [AppColors.warning, AppColors.warning.withOpacity(0.8)], () {}, true)),
          ],
        ),
      ],
    );
  }

  Widget _buildMobileActions() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: _buildQuickActionCard(Icons.medication_rounded, 'Add Medication', [AppColors.primary, AppColors.primary.withOpacity(0.8)], () {}, false)),
            const SizedBox(width: 12),
            Expanded(child: _buildQuickActionCard(Icons.health_and_safety_rounded, 'Log Symptoms', [AppColors.secondary, AppColors.secondary.withOpacity(0.8)], () {}, false)),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(child: _buildQuickActionCard(Icons.calendar_today_rounded, 'Schedule', [AppColors.info, AppColors.info.withOpacity(0.8)], () {}, false)),
            const SizedBox(width: 12),
            Expanded(child: _buildQuickActionCard(Icons.analytics_rounded, 'Analytics', [AppColors.warning, AppColors.warning.withOpacity(0.8)], () {}, false)),
          ],
        ),
      ],
    );
  }

  Widget _buildQuickActionCard(
    IconData icon,
    String label,
    List<Color> gradient,
    VoidCallback onTap,
    bool isLarge,
  ) {
    return Container(
      height: isLarge ? 140 : 120,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: gradient,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: gradient[0].withOpacity(0.4),
            blurRadius: 15,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: EdgeInsets.all(isLarge ? 24 : 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: isLarge ? 36 : 32,
                  color: Colors.white,
                ),
                SizedBox(height: isLarge ? 16 : 12),
                Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isLarge ? 16 : 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper methods
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

  IconData _getHealthStatusIcon(String status) {
    switch (status) {
      case 'Good':
        return Icons.favorite_rounded;
      case 'Monitoring':
        return Icons.visibility_rounded;
      case 'Needs Attention':
        return Icons.warning_rounded;
      default:
        return Icons.health_and_safety_rounded;
    }
  }

  Widget _buildResponsiveHealthOverview(
    dynamic medicationState, 
    dynamic symptomState, 
    bool isTablet, 
    bool isLargeScreen
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Health Overview',
          style: TextStyle(
            fontSize: isTablet ? 24 : 22,
            fontWeight: FontWeight.w800,
            color: Colors.white,
            letterSpacing: -0.5,
          ),
        ),
        const SizedBox(height: 20),
        
        if (isLargeScreen)
          _buildLargeScreenHealthStats(medicationState, symptomState)
        else if (isTablet)
          _buildTabletHealthStats(medicationState, symptomState)
        else
          _buildMobileHealthStats(medicationState, symptomState),
      ],
    );
  }

  Widget _buildLargeScreenHealthStats(dynamic medicationState, dynamic symptomState) {
    return Row(
      children: [
        Expanded(child: _buildHealthStatCard('Medications', '${medicationState.medications.length}', 'Total prescribed', Icons.medication_rounded, AppColors.primary, true, progress: _getActiveMedicationsCount(medicationState.medications) / (medicationState.medications.length > 0 ? medicationState.medications.length : 1))),
        const SizedBox(width: 16),
        Expanded(child: _buildHealthStatCard('Symptom Logs', '${symptomState.symptomLogs.length}', 'Total recorded', Icons.health_and_safety_rounded, AppColors.secondary, true)),
        const SizedBox(width: 16),
        Expanded(child: _buildHealthInsightCard('Active Medications', '${_getActiveMedicationsCount(medicationState.medications)}', 'On schedule', true, Icons.check_circle_rounded, AppColors.success, true)),
        const SizedBox(width: 16),
        Expanded(child: _buildHealthInsightCard('Recent Logs', '${_getRecentLogsCount(symptomState.symptomLogs)}', 'This week', _getRecentLogsCount(symptomState.symptomLogs) > 0, Icons.timeline_rounded, AppColors.warning, true)),
      ],
    );
  }

  Widget _buildTabletHealthStats(dynamic medicationState, dynamic symptomState) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: _buildHealthStatCard('Medications', '${medicationState.medications.length}', 'Total prescribed', Icons.medication_rounded, AppColors.primary, true, progress: _getActiveMedicationsCount(medicationState.medications) / (medicationState.medications.length > 0 ? medicationState.medications.length : 1))),
            const SizedBox(width: 16),
            Expanded(child: _buildHealthStatCard('Symptom Logs', '${symptomState.symptomLogs.length}', 'Total recorded', Icons.health_and_safety_rounded, AppColors.secondary, true)),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(child: _buildHealthInsightCard('Active Medications', '${_getActiveMedicationsCount(medicationState.medications)}', 'On schedule', true, Icons.check_circle_rounded, AppColors.success, true)),
            const SizedBox(width: 16),
            Expanded(child: _buildHealthInsightCard('Recent Logs', '${_getRecentLogsCount(symptomState.symptomLogs)}', 'This week', _getRecentLogsCount(symptomState.symptomLogs) > 0, Icons.timeline_rounded, AppColors.warning, true)),
          ],
        ),
      ],
    );
  }

  Widget _buildMobileHealthStats(dynamic medicationState, dynamic symptomState) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: _buildHealthStatCard('Medications', '${medicationState.medications.length}', 'Total prescribed', Icons.medication_rounded, AppColors.primary, false, progress: _getActiveMedicationsCount(medicationState.medications) / (medicationState.medications.length > 0 ? medicationState.medications.length : 1))),
            const SizedBox(width: 12),
            Expanded(child: _buildHealthStatCard('Symptom Logs', '${symptomState.symptomLogs.length}', 'Total recorded', Icons.health_and_safety_rounded, AppColors.secondary, false)),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(child: _buildHealthInsightCard('Active Medications', '${_getActiveMedicationsCount(medicationState.medications)}', 'On schedule', true, Icons.check_circle_rounded, AppColors.success, false)),
            const SizedBox(width: 12),
            Expanded(child: _buildHealthInsightCard('Recent Logs', '${_getRecentLogsCount(symptomState.symptomLogs)}', 'This week', _getRecentLogsCount(symptomState.symptomLogs) > 0, Icons.timeline_rounded, AppColors.warning, false)),
          ],
        ),
      ],
    );
  }

  Widget _buildHealthStatCard({
    required String title,
    required String value,
    required String subtitle,
    required IconData icon,
    required Color color,
    required bool isLarge,
    double? progress,
  }) {
    return Container(
      height: isLarge ? 160 : 140,
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFF2A2A2A),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 15,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: EdgeInsets.all(isLarge ? 24 : 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: isLarge ? 48 : 40,
                      height: isLarge ? 48 : 40,
                      decoration: BoxDecoration(
                        color: color.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        icon,
                        color: color,
                        size: isLarge ? 24 : 20,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: isLarge ? 32 : 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: isLarge ? 16 : 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white.withOpacity(0.9),
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: isLarge ? 14 : 12,
                    color: Colors.white.withOpacity(0.6),
                  ),
                ),
                if (progress != null) ...[
                  const SizedBox(height: 12),
                  LinearProgressIndicator(
                    value: progress,
                    backgroundColor: const Color(0xFF2A2A2A),
                    valueColor: AlwaysStoppedAnimation<Color>(color),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHealthInsightCard({
    required String title,
    required String value,
    required String trend,
    required bool isPositive,
    required IconData icon,
    required Color color,
    required bool isLarge,
  }) {
    return Container(
      height: isLarge ? 120 : 100,
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFF2A2A2A),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(isLarge ? 20 : 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: color,
                  size: isLarge ? 22 : 20,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: isLarge ? 14 : 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: isLarge ? 28 : 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              trend,
              style: TextStyle(
                fontSize: isLarge ? 13 : 11,
                color: Colors.white.withOpacity(0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResponsiveSettingsSection(BuildContext context, bool isTablet) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Settings & Support',
          style: TextStyle(
            fontSize: isTablet ? 24 : 22,
            fontWeight: FontWeight.w800,
            color: Colors.white,
            letterSpacing: -0.5,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFF1A1A1A),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: const Color(0xFF2A2A2A),
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 15,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Column(
            children: [
              _buildSettingsItem(Icons.notifications_rounded, 'Notification Settings', 'Manage alerts and reminders', () {}, isTablet),
              _buildDivider(),
              _buildSettingsItem(Icons.sync_rounded, 'Data Sync', 'Cloud backup and synchronization', () {}, isTablet),
              _buildDivider(),
              _buildSettingsItem(Icons.security_rounded, 'Privacy & Security', 'Manage your data and privacy', () {}, isTablet),
              _buildDivider(),
              _buildSettingsItem(Icons.help_rounded, 'Help & Support', 'Get help and contact support', () {}, isTablet),
              _buildDivider(),
              _buildSettingsItem(Icons.info_rounded, 'About Sym', 'App version and information', () => _showAboutDialog(context), isTablet, showDivider: false),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSettingsItem(
    IconData icon,
    String title,
    String subtitle,
    VoidCallback onTap,
    bool isTablet, {
    bool showDivider = true,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: EdgeInsets.all(isTablet ? 24 : 20),
          child: Row(
            children: [
              Container(
                width: isTablet ? 48 : 44,
                height: isTablet ? 48 : 44,
                decoration: BoxDecoration(
                  color: const Color(0xFF2A2A2A),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  icon,
                  color: Colors.white.withOpacity(0.8),
                  size: isTablet ? 24 : 20,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: isTablet ? 18 : 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: isTablet ? 16 : 14,
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
                color: Colors.white.withOpacity(0.6),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Divider(
        height: 1,
        color: const Color(0xFF2A2A2A),
      ),
    );
  }

  Widget _buildEnhancedSignOutButton(BuildContext context, WidgetRef ref, bool isTablet) {
    return Container(
      width: double.infinity,
      height: isTablet ? 64 : 56,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.error, AppColors.error.withOpacity(0.8)],
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.error.withOpacity(0.4),
            blurRadius: 15,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => _showLogoutDialog(context, ref),
          borderRadius: BorderRadius.circular(16),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.logout_rounded,
                  color: Colors.white,
                  size: isTablet ? 24 : 20,
                ),
                const SizedBox(width: 8),
                Text(
                  'Sign Out',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isTablet ? 18 : 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showLogoutDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFF1A1A1A),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: Text(
          'Sign Out',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        content: Text(
          'Are you sure you want to sign out of your account?',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white.withOpacity(0.8),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              'Cancel',
              style: TextStyle(
                color: Colors.white.withOpacity(0.6),
                fontSize: 16,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.error, AppColors.error.withOpacity(0.8)],
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextButton(
              onPressed: () {
                ref.read(authProvider.notifier).logout();
                Navigator.of(context).pop();
              },
              child: const Text(
                'Sign Out',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFF1A1A1A),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(0.2),
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
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
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
              style: TextStyle(
                fontSize: 14,
                color: Colors.white.withOpacity(0.6),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'A comprehensive medication and symptom tracking app designed to help you manage your health effectively.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Key Features:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
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
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF2A2A2A),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'Close',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 16,
                ),
              ),
            ),
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
              style: TextStyle(
                fontSize: 14,
                color: Colors.white.withOpacity(0.7),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
