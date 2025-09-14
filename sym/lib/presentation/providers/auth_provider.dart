import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/errors/result.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../services/firebase_service.dart';

// Auth state
class AuthState {
  final bool isLoading;
  final User? user;
  final String? error;
  final bool isAuthenticated;

  const AuthState({
    this.isLoading = false,
    this.user,
    this.error,
    this.isAuthenticated = false,
  });

  AuthState copyWith({
    bool? isLoading,
    User? user,
    String? error,
    bool? isAuthenticated,
  }) {
    return AuthState(
      isLoading: isLoading ?? this.isLoading,
      user: user ?? this.user,
      error: error,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
    );
  }
}

// Auth notifier
class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository _authRepository;

  AuthNotifier(this._authRepository) : super(const AuthState()) {
    _checkAuthStatus();
  }

  Future<void> _checkAuthStatus() async {
    print('🔐 [AUTH_PROVIDER] Checking auth status on startup');
    state = state.copyWith(isLoading: true);
    
    final result = await _authRepository.isLoggedIn();
    print('🔐 [AUTH_PROVIDER] isLoggedIn result: $result');
    
    result.fold(
      (failure) {
        print('🔐 [AUTH_PROVIDER] isLoggedIn failed: $failure');
        state = state.copyWith(
          isLoading: false,
          error: failure.toString(),
          isAuthenticated: false,
        );
      },
      (isLoggedIn) async {
        print('🔐 [AUTH_PROVIDER] isLoggedIn success: $isLoggedIn');
        if (isLoggedIn) {
          print('🔐 [AUTH_PROVIDER] User is logged in, getting current user');
          final userResult = await _authRepository.getCurrentUser();
          print('🔐 [AUTH_PROVIDER] getCurrentUser result: $userResult');
          
          userResult.fold(
            (failure) {
              print('🔐 [AUTH_PROVIDER] getCurrentUser failed: $failure');
              state = state.copyWith(
                isLoading: false,
                error: failure.toString(),
                isAuthenticated: false,
              );
            },
            (user) {
              print('🔐 [AUTH_PROVIDER] getCurrentUser success: $user');
              state = state.copyWith(
                isLoading: false,
                user: user,
                isAuthenticated: true,
                error: null,
              );
            },
          );
        } else {
          print('🔐 [AUTH_PROVIDER] User is not logged in');
          state = state.copyWith(
            isLoading: false,
            isAuthenticated: false,
            error: null,
          );
        }
      },
    );
  }

  Future<void> login(String email, String password) async {
    print('🔐 [AUTH_PROVIDER] Starting login process for: $email');
    state = state.copyWith(isLoading: true, error: null);
    
    final request = LoginRequest(email: email, password: password);
    print('🔐 [AUTH_PROVIDER] LoginRequest created: $request');
    
    final result = await _authRepository.login(request);
    print('🔐 [AUTH_PROVIDER] Login repository result: $result');
    
    result.fold(
      (failure) {
        print('🔐 [AUTH_PROVIDER] Login failed: $failure');
        state = state.copyWith(
          isLoading: false,
          error: failure.toString(),
        );
      },
      (token) async {
        print('🔐 [AUTH_PROVIDER] Login successful, getting user info');
        // Get user info after successful login
        final userResult = await _authRepository.getCurrentUser();
        print('🔐 [AUTH_PROVIDER] getCurrentUser result: $userResult');
        
        userResult.fold(
          (failure) {
            print('🔐 [AUTH_PROVIDER] getCurrentUser failed: $failure');
            state = state.copyWith(
              isLoading: false,
              error: failure.toString(),
            );
          },
          (user) {
            print('🔐 [AUTH_PROVIDER] getCurrentUser success: $user');
            state = state.copyWith(
              isLoading: false,
              user: user,
              isAuthenticated: true,
              error: null,
            );
          },
        );
      },
    );
  }

  Future<void> register({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String role,
    String? phoneNumber,
    String? dateOfBirth,
    String? gender,
    String? specialization,
    String? licenseNumber,
    String? hospital,
  }) async {
    print('🔐 [AUTH_PROVIDER] Starting registration process for: $email');
    state = state.copyWith(isLoading: true, error: null);
    
    final request = RegisterRequest(
      email: email,
      password: password,
      firstName: firstName,
      lastName: lastName,
      role: role,
      phoneNumber: phoneNumber,
      dateOfBirth: dateOfBirth,
      gender: gender,
      specialization: specialization,
      licenseNumber: licenseNumber,
      hospital: hospital,
    );
    
    print('🔐 [AUTH_PROVIDER] RegisterRequest created: $request');
    print('🔐 [AUTH_PROVIDER] Request JSON: ${request.toJson()}');
    
    final result = await _authRepository.register(request);
    
    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.toString(),
      ),
      (token) async {
        // Get user info after successful registration
        final userResult = await _authRepository.getCurrentUser();
        userResult.fold(
          (failure) => state = state.copyWith(
            isLoading: false,
            error: failure.toString(),
          ),
          (user) => state = state.copyWith(
            isLoading: false,
            user: user,
            isAuthenticated: true,
            error: null,
          ),
        );
      },
    );
  }

  Future<void> updateProfile({
    required String firstName,
    required String lastName,
    String? phoneNumber,
    String? fcmToken,
  }) async {
    print('🔐 [AUTH_PROVIDER] Starting profile update process');
    state = state.copyWith(isLoading: true, error: null);
    
    final request = UpdateProfileRequest(
      firstName: firstName,
      lastName: lastName,
      phoneNumber: phoneNumber,
      fcmToken: fcmToken,
    );
    
    print('🔐 [AUTH_PROVIDER] UpdateProfileRequest created: $request');
    
    final result = await _authRepository.updateProfile(request);
    
    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.toString(),
      ),
      (updatedUser) => state = state.copyWith(
        isLoading: false,
        user: updatedUser,
        error: null,
      ),
    );
  }

  Future<void> logout() async {
    state = state.copyWith(isLoading: true);
    
    final result = await _authRepository.logout();
    
    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.toString(),
      ),
      (_) => state = const AuthState(
        isLoading: false,
        isAuthenticated: false,
      ),
    );
  }

  void clearError() {
    state = state.copyWith(error: null);
  }

  // Google Sign In
  Future<void> signInWithGoogle() async {
    print('🔐 [AUTH_PROVIDER] Starting Google sign-in process');
    state = state.copyWith(isLoading: true, error: null);
    
    try {
      print('🔐 [AUTH_PROVIDER] Creating Firebase service...');
      final firebaseService = FirebaseService();
      
      print('🔐 [AUTH_PROVIDER] Calling Firebase service signInWithGoogle...');
      final userCredential = await firebaseService.signInWithGoogle();
      
      if (userCredential != null) {
        print('🔐 [AUTH_PROVIDER] Google sign-in successful');
        
        // Get user profile from Firebase
        print('🔐 [AUTH_PROVIDER] Getting user profile...');
        final userProfile = firebaseService.getUserProfile();
        if (userProfile != null) {
          print('🔐 [AUTH_PROVIDER] User profile: $userProfile');
          
          // Create User object from Firebase profile
          final user = User(
            id: userProfile['id'],
            email: userProfile['email'] ?? '',
            firstName: userProfile['firstName'] ?? '',
            lastName: userProfile['lastName'] ?? '',
            role: 'patient', // Default role for Google sign-in
          );
          
          print('🔐 [AUTH_PROVIDER] Created User object: $user');
          
          // Update state
          state = state.copyWith(
            isLoading: false,
            user: user,
            isAuthenticated: true,
            error: null,
          );
          
          print('🔐 [AUTH_PROVIDER] Google sign-in completed successfully');
        } else {
          print('🔐 [AUTH_PROVIDER] Failed to get user profile from Firebase');
          throw Exception('Failed to get user profile from Google');
        }
      } else {
        // User cancelled the sign-in
        print('🔐 [AUTH_PROVIDER] Google sign-in cancelled by user');
        state = state.copyWith(
          isLoading: false,
          error: null,
        );
      }
    } catch (e) {
      print('🔐 [AUTH_PROVIDER] Google sign-in failed: $e');
      print('🔐 [AUTH_PROVIDER] Error type: ${e.runtimeType}');
      print('🔐 [AUTH_PROVIDER] Stack trace: ${StackTrace.current}');
      
      String errorMessage = 'Google sign-in failed';
      if (e.toString().contains('Firebase not initialized')) {
        errorMessage = 'Firebase not properly initialized. Please restart the app.';
      } else if (e.toString().contains('network')) {
        errorMessage = 'Network error. Please check your internet connection.';
      } else {
        errorMessage = 'Google sign-in failed: ${e.toString()}';
      }
      
      state = state.copyWith(
        isLoading: false,
        error: errorMessage,
      );
    }
  }

  // Google Sign Up
  Future<void> signUpWithGoogle() async {
    print('🔐 [AUTH_PROVIDER] Starting Google sign-up process');
    // For Google, sign-up and sign-in are the same
    await signInWithGoogle();
  }
}

// Provider
final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final authRepository = ref.read(authRepositoryProvider);
  return AuthNotifier(authRepository);
});
