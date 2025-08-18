import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/storage/storage_service.dart';
import 'core/services/notification_service.dart';
import 'core/services/app_initialization_service.dart';
import 'core/theme/app_theme.dart';
import 'services/sync_service.dart';
import 'presentation/pages/splash_page.dart';
import 'presentation/pages/auth/login_page.dart';
import 'presentation/pages/home/home_page.dart';
import 'presentation/pages/notifications/notifications_page.dart';
import 'presentation/providers/auth_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Firebase
  try {
    await Firebase.initializeApp();
    print('🔥 [FIREBASE] Firebase initialized successfully');
  } catch (e) {
    print('🔥 [FIREBASE] Firebase initialization failed: $e');
  }
  
  runApp(const ProviderScope(
    child: SymApp(),
  ));
}

class SymApp extends ConsumerWidget {
  const SymApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Sym - Your Health Companion',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const AppRouter(),
      routes: {
        '/notifications': (context) => const NotificationsPage(),
        '/medications': (context) => const HomePage(), // Will navigate to medications tab
        '/symptoms': (context) => const HomePage(), // Will navigate to symptoms tab
        '/doctors': (context) => const HomePage(), // Will navigate to doctors tab
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class AppRouter extends ConsumerStatefulWidget {
  const AppRouter({super.key});

  @override
  ConsumerState<AppRouter> createState() => _AppRouterState();
}

class _AppRouterState extends ConsumerState<AppRouter> {
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    try {
      final initService = ref.read(appInitializationServiceProvider);
      await initService.initialize();
      
      if (mounted) {
        setState(() {
          _isInitialized = true;
        });
      }
    } catch (e) {
      print('❌ App initialization failed: $e');
      // Still allow the app to continue
      if (mounted) {
        setState(() {
          _isInitialized = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized) {
      return const SplashPage();
    }

    final authState = ref.watch(authProvider);
    
    if (authState.isLoading) {
      return const SplashPage();
    }
    
    if (authState.isAuthenticated) {
      return const HomePage();
    }
    
    return const LoginPage();
  }
}
