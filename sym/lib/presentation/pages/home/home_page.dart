import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../../core/widgets/custom_card.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../data/providers/notification_providers.dart';
import '../../providers/medication_provider.dart';
import '../../providers/patient_symptom_provider.dart';
import '../medications/medications_page.dart';
import '../symptoms/symptoms_page.dart';
import '../doctors/find_doctor_page.dart';
import '../profile/profile_page.dart';
import '../notifications/notifications_page.dart';
import '../health/health_report_page.dart';
import '../../providers/auth_provider.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int _currentIndex = 0;

  void navigateToTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  
  final List<Widget> _pages = [
    const DashboardTab(),
    const MedicationsPage(),
    const SymptomsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.dashboard_outlined),
            selectedIcon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          NavigationDestination(
            icon: Icon(Icons.medication_outlined),
            selectedIcon: Icon(Icons.medication),
            label: 'Medications',
          ),
          NavigationDestination(
            icon: Icon(Icons.health_and_safety_outlined),
            selectedIcon: Icon(Icons.health_and_safety),
            label: 'Symptoms',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outlined),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class DashboardTab extends ConsumerWidget {
  const DashboardTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: AppTypography.appBarTitle,
        ),
        actions: [
          Consumer(
            builder: (context, ref, child) {
              // TODO: Fix notification provider reference
              final unreadCount = 0; // Placeholder until provider is fixed
              
              return Stack(
                children: [
                  IconButton(
                    icon: const Icon(Icons.notifications_outlined),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const NotificationsPage(),
                        ),
                      );
                    },
                  ),
                  if (unreadCount > 0)
                    Positioned(
                      right: 8,
                      top: 8,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: AppColors.error,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        constraints: const BoxConstraints(
                          minWidth: 16,
                          minHeight: 16,
                        ),
                        child: Text(
                          unreadCount > 99 ? '99+' : unreadCount.toString(),
                          style: AppTypography.labelSmall.copyWith(
                            color: AppColors.textOnPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ],
      ),
      body: _buildDashboard(context),
    );
  }

  Widget _buildDashboard(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        // Refresh data
      },
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Section
            _buildWelcomeSection(),
            const SizedBox(height: 24),
            
            // Health Stats Overview
            _buildHealthStats(),
            const SizedBox(height: 24),
            
            // Quick Actions
            _buildQuickActions(context),
            const SizedBox(height: 24),
            
            // Recent Activity
            _buildRecentActivity(),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcomeSection() {
    return Consumer(
      builder: (context, ref, child) {
        final authState = ref.watch(authProvider);
        final user = authState.user;
        
        final now = DateTime.now();
        final hour = now.hour;
        String greeting = 'Good morning';
        if (hour >= 12 && hour < 17) {
          greeting = 'Good afternoon';
        } else if (hour >= 17) {
          greeting = 'Good evening';
        }
        
        final dateFormat = DateFormat('EEEE, MMM d');
        final formattedDate = dateFormat.format(now);
        
        final userName = user?.firstName ?? 'User';
        final userInitial = userName.isNotEmpty ? userName[0].toUpperCase() : 'U';

        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.primary,
                AppColors.secondary,
                AppColors.primaryDark,
              ],
              stops: [0.0, 0.6, 1.0],
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: AppColors.primary.withOpacity(0.3),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$greeting, $userName! 🚀',
                          style: AppTypography.headlineMedium.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          formattedDate,
                          style: AppTypography.bodySmall.copyWith(
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            userInitial,
                            style: AppTypography.titleLarge.copyWith(
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 2,
                        right: 2,
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Health Status
              Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.success.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              "You're doing great!",
              style: AppTypography.bodyMedium.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Active, Due, Taken stats
          Row(
            children: [
              Expanded(
                child: _buildSmallStatCard(
                  icon: Icons.star,
                  label: 'Active',
                  value: '3',
                  color: AppColors.warning,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildSmallStatCard(
                  icon: Icons.access_time,
                  label: 'Due',
                  value: '2',
                  color: AppColors.error,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildSmallStatCard(
                  icon: Icons.check_circle,
                  label: 'Taken',
                  value: '5',
                  color: AppColors.success,
                ),
              ),
            ],
          ),
        ],
      ),
    );
      },
    );
  }

  Widget _buildSmallStatCard({
    required IconData icon,
    required String label,
    required String value,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 16,
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: AppTypography.titleSmall.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            label,
            style: AppTypography.labelSmall.copyWith(
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHealthStats() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Health Overview',
          style: AppTypography.headlineSmall.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: Consumer(
                builder: (context, ref, child) {
                  final medicationState = ref.watch(medicationProvider);
                  final activeMedicationsCount = medicationState.medications
                      .where((m) => m.status == 'active')
                      .length;
                  
                  return StatsCard(
                    title: 'Medications',
                    value: activeMedicationsCount.toString(),
                    icon: Icons.medication,
                    color: AppColors.medicationPrimary,
                    subtitle: 'Active prescriptions',
                    onTap: () {
                      // Navigate to medications tab
                      final homePageState = context.findAncestorStateOfType<_HomePageState>();
                      homePageState?.navigateToTab(1); // Medications tab index
                    },
                  );
                },
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Consumer(
                builder: (context, ref, child) {
                  final patientSymptomState = ref.watch(patientSymptomProvider);
                  final activeSymptomsCount = patientSymptomState.symptoms
                      .where((s) => !s.isResolved)
                      .length;
                  
                  return StatsCard(
                    title: 'Symptoms',
                    value: activeSymptomsCount.toString(),
                    icon: Icons.health_and_safety,
                    color: AppColors.secondary,
                    subtitle: 'Active symptoms',
                    onTap: () {
                      // Navigate to symptoms tab
                      final homePageState = context.findAncestorStateOfType<_HomePageState>();
                      homePageState?.navigateToTab(2); // Symptoms tab index
                    },
                  );
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: StatsCard(
                title: 'Appointments',
                value: '1',
                icon: Icons.calendar_today,
                color: AppColors.warning,
                subtitle: 'Upcoming',
                onTap: () {
                  // Navigate to appointments
                },
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: StatsCard(
                title: 'Adherence',
                value: '92%',
                icon: Icons.trending_up,
                color: AppColors.success,
                subtitle: 'This month',
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildQuickActions(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quick Actions',
          style: AppTypography.headlineSmall.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.3,
          children: [
            _buildQuickActionCard(
              'Log Symptoms',
              Icons.health_and_safety,
              AppColors.secondary,
              () {
                // Navigate to symptoms tab
                final homePageState = context.findAncestorStateOfType<_HomePageState>();
                homePageState?.navigateToTab(2); // Symptoms tab index
              },
            ),
            _buildQuickActionCard(
              'Take Medication',
              Icons.medication,
              AppColors.medicationPrimary,
              () {
                // Navigate to medications tab
                final homePageState = context.findAncestorStateOfType<_HomePageState>();
                homePageState?.navigateToTab(1); // Medications tab index
              },
            ),
            _buildQuickActionCard(
              'Find Doctors',
              Icons.local_hospital,
              AppColors.warning,
              () {
                // Navigate to Find Doctor page
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FindDoctorPage(),
                  ),
                );
              },
            ),
            _buildQuickActionCard(
              'Health Reports',
              Icons.analytics,
              AppColors.info,
              () {
                // Navigate to Health Report page
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const HealthReportPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildQuickActionCard(String title, IconData icon, Color color, VoidCallback onTap) {
    return CustomCard(
      onTap: onTap,
      elevation: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: color,
              size: 28,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: AppTypography.titleSmall.copyWith(
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildRecentActivity() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recent Activity',
              style: AppTypography.headlineSmall.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {
                // Navigate to full activity log
              },
              child: Text(
                'View All',
                style: AppTypography.labelLarge.copyWith(
                  color: AppColors.primary,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        CustomCard(
          child: Column(
            children: [
              _buildActivityItem(
                Icons.medication,
                'Took Aspirin',
                '2 hours ago',
                AppColors.medicationPrimary,
              ),
              const Divider(height: 24),
              _buildActivityItem(
                Icons.health_and_safety,
                'Logged headache symptoms',
                'Yesterday',
                AppColors.secondary,
              ),
              const Divider(height: 24),
              _buildActivityItem(
                Icons.calendar_today,
                'Appointment with Dr. Smith',
                '3 days ago',
                AppColors.warning,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildActivityItem(IconData icon, String title, String time, Color color) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            color: color,
            size: 20,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTypography.bodyMedium.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                time,
                style: AppTypography.bodySmall.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
