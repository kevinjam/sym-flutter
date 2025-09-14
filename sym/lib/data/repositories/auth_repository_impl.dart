import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import '../../core/errors/result.dart';
import '../../core/errors/failures.dart';
import '../../core/constants/app_constants.dart';
import '../../core/storage/storage_service.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_api_service.dart';
import '../../core/network/dio_client.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApiService _apiService;
  final StorageService _storageService;

  AuthRepositoryImpl(this._apiService, this._storageService);

  @override
  Future<Result<AuthToken>> login(LoginRequest request) async {
    return ResultUtils.tryCatch(
      () async {
        print('🔐 [AUTH] Starting login process for email: ${request.email}');
        
        print('🔐 [AUTH] About to call API service...');
        print('🔐 [AUTH] Base URL from constants: ${AppConstants.baseUrl}');
        print('🔐 [AUTH] Full login URL: ${AppConstants.baseUrl}/auth/login');
        
        print('🔐 [AUTH] About to call API service...');
        
        dynamic response;
        try {
          response = await _apiService.login(request);
          print('🔐 [AUTH] Login API response received. Status: ${response.response.statusCode}');
          print('🔐 [AUTH] Response data type: ${response.data.runtimeType}');
          print('🔐 [AUTH] Response data: $response.data');
          print('🔐 [AUTH] Response headers: ${response.response.headers}');
        } catch (e) {
          print('🔐 [AUTH] API call failed with error: $e');
          print('🔐 [AUTH] Error type: ${e.runtimeType}');
          print('🔐 [AUTH] Error stack trace: ${StackTrace.current}');
          
          // Check if it's a parsing error from Retrofit
          if (e.toString().contains('type \'String\' is not a subtype of type \'Map<String, dynamic>\'')) {
            // This means the backend returned an error response that Retrofit couldn't parse
            // This typically happens when credentials are invalid
            throw Exception('Invalid email or password. Please check your credentials and try again.');
          }
          
          // Check if it's a network error
          if (e.toString().contains('SocketException') || e.toString().contains('Connection refused')) {
            throw Exception('Cannot connect to server. Please check your internet connection.');
          }
          
          // Generic error
          throw Exception('Login failed. Please try again later.');
        }
        
        if (response.response.statusCode == 200) {
          print('🔐 [AUTH] Login successful, parsing response data');
          final authResponse = response.data;
          print('🔐 [AUTH] AuthResponse type: ${authResponse.runtimeType}');
          print('🔐 [AUTH] AuthResponse: $authResponse');
          
          final tokenString = authResponse.token;
          final user = authResponse.user;
          
          print('🔐 [AUTH] Token string: $tokenString');
          print('🔐 [AUTH] User: $user');
          
          // Create AuthToken object from the string token
          final token = AuthToken(
            accessToken: tokenString,
            tokenType: 'Bearer',
            expiresIn: 3600, // Default 1 hour
            refreshToken: null,
          );
          
          // Save to local storage
          await _storageService.saveAuthToken(token);
          await _storageService.saveUser(user);
          
          print('🔐 [AUTH] Login completed successfully');
          return token;
        } else {
          print('🔐 [AUTH] Login failed with status: ${response.response.statusCode}');
          // Handle error response
          String errorMessage = 'Login failed';
          if (response.data is Map<String, dynamic>) {
            final errorData = response.data as Map<String, dynamic>;
            errorMessage = errorData['error'] ?? errorMessage;
            print('🔐 [AUTH] Error from API: $errorMessage');
          } else if (response.data is String) {
            errorMessage = response.data as String;
            print('🔐 [AUTH] Error string from API: $errorMessage');
          }
          throw Exception(errorMessage);
        }
      },
      onError: (error) {
        print('🔐 [AUTH] Login error caught: $error');
        print('🔐 [AUTH] Error type: ${error.runtimeType}');
        print('🔐 [AUTH] Error stack trace: ${StackTrace.current}');
        return Failure.authenticationError(error.toString());
      },
    );
  }

  @override
  Future<Result<AuthToken>> register(RegisterRequest request) async {
    return ResultUtils.tryCatch(
      () async {
        print('🔐 [AUTH] Starting registration process');
        print('🔐 [AUTH] RegisterRequest: $request');
        print('🔐 [AUTH] Request JSON: ${request.toJson()}');
        
        try {
          final response = await _apiService.register(request);
          
          print('🔐 [AUTH] Registration API response status: ${response.response.statusCode}');
          print('🔐 [AUTH] Registration API response data: ${response.data}');
          
          if (response.response.statusCode == 201) {
          final authResponse = response.data;
          final tokenString = authResponse.token;
          final user = authResponse.user;
          
          // Create AuthToken object from the string token
          final token = AuthToken(
            accessToken: tokenString,
            tokenType: 'Bearer',
            expiresIn: 3600, // Default 1 hour
            refreshToken: null,
          );
          
          // Save to local storage
          await _storageService.saveAuthToken(token);
          await _storageService.saveUser(user);
          
          return token;
        } else {
          // Handle error response
          String errorMessage = 'Registration failed';
          if (response.data is Map<String, dynamic>) {
            final errorData = response.data as Map<String, dynamic>;
            errorMessage = errorData['error'] ?? errorMessage;
          } else if (response.data is String) {
            errorMessage = response.data as String;
          }
          throw Exception(errorMessage);
        }
        } catch (e) {
          print('🔐 [AUTH] Registration API call failed with error: $e');
          print('🔐 [AUTH] Error type: ${e.runtimeType}');
          
          // Log detailed error information for DioException
          if (e is DioException) {
            print('🔐 [AUTH] DioException details:');
            print('🔐 [AUTH] Status code: ${e.response?.statusCode}');
            print('🔐 [AUTH] Response data: ${e.response?.data}');
            print('🔐 [AUTH] Response headers: ${e.response?.headers}');
            print('🔐 [AUTH] Request data: ${e.requestOptions.data}');
            print('🔐 [AUTH] Request path: ${e.requestOptions.path}');
          }
          
          print('🔐 [AUTH] Error stack trace: ${StackTrace.current}');
          
          // Check if it's a parsing error from Retrofit
          if (e.toString().contains('type \'String\' is not a subtype of type \'Map<String, dynamic>\'')) {
            // This typically happens when credentials are invalid
            throw Exception('Registration failed: Invalid data or server error. Please try again.');
          }
          
          // Check if it's a network error
          if (e.toString().contains('SocketException') || e.toString().contains('Connection refused')) {
            throw Exception('Cannot connect to server. Please check your internet connection.');
          }
          
          // Generic error
          throw Exception('Registration failed. Please try again later.');
        }
      },
      onError: (error) => Failure.authenticationError(error.toString()),
    );
  }

  @override
  Future<Result<void>> logout() async {
    return ResultUtils.tryCatch(
      () async {
        try {
          await _apiService.logout();
        } catch (e) {
          // Continue with local logout even if API call fails
        }
        
        // Clear local storage
        await _storageService.clearAuthToken();
        await _storageService.clearUser();
      },
      onError: (error) => Failure.authenticationError(error.toString()),
    );
  }

  @override
  Future<Result<User>> getCurrentUser() async {
    return ResultUtils.tryCatch(
      () async {
        // Try to get from local storage first
        final localUser = await _storageService.getCurrentUser();
        if (localUser != null) {
          return localUser;
        }
        
        // If not found locally, fetch from API
        final response = await _apiService.getCurrentUser();
        
        if (response.response.statusCode == 200) {
          final userResponse = response.data;
          final user = userResponse.user;
          await _storageService.saveUser(user);
          return user;
        } else {
          // Handle error response
          String errorMessage = 'Failed to get current user';
          if (response.data is Map<String, dynamic>) {
            final errorData = response.data as Map<String, dynamic>;
            errorMessage = errorData['error'] ?? errorMessage;
          } else if (response.data is String) {
            errorMessage = response.data as String;
          }
          throw Exception(errorMessage);
        }
      },
      onError: (error) => Failure.authenticationError(error.toString()),
    );
  }

  @override
  Future<Result<User>> updateProfile(UpdateProfileRequest request) async {
    return ResultUtils.tryCatch(
      () async {
        print('🔐 [AUTH] Starting profile update process');
        print('🔐 [AUTH] Update request: ${request.toJson()}');
        
        final response = await _apiService.updateProfile(request);
        
        if (response.response.statusCode == 200) {
          final userResponse = response.data;
          final updatedUser = userResponse.user;
          
          // Save updated user to local storage
          await _storageService.saveUser(updatedUser);
          
          print('🔐 [AUTH] Profile updated successfully');
          return updatedUser;
        } else {
          // Handle error response
          String errorMessage = 'Failed to update profile';
          if (response.data is Map<String, dynamic>) {
            final errorData = response.data as Map<String, dynamic>;
            errorMessage = errorData['error'] ?? errorMessage;
          } else if (response.data is String) {
            errorMessage = response.data as String;
          }
          throw Exception(errorMessage);
        }
      },
      onError: (error) => Failure.authenticationError(error.toString()),
    );
  }

  @override
  Future<Result<AuthToken>> refreshToken(String refreshToken) async {
    return ResultUtils.tryCatch(
      () async {
        final response = await _apiService.refreshToken({
          'refreshToken': refreshToken,
        });
        
        if (response.response.statusCode == 200) {
          final tokenResponse = response.data;
          final token = tokenResponse.token;
          await _storageService.saveAuthToken(token);
          return token;
        } else {
          // Handle error response
          String errorMessage = 'Token refresh failed';
          if (response.data is Map<String, dynamic>) {
            final errorData = response.data as Map<String, dynamic>;
            errorMessage = errorData['error'] ?? errorMessage;
          } else if (response.data is String) {
            errorMessage = response.data as String;
          }
          throw Exception(errorMessage);
        }
      },
      onError: (error) => Failure.authenticationError(error.toString()),
    );
  }

  @override
  Future<Result<bool>> isLoggedIn() async {
    return ResultUtils.tryCatch(
      () async {
        print('🔐 [AUTH] Checking if user is logged in');
        final token = await _storageService.getAuthToken();
        print('🔐 [AUTH] Token retrieved: ${token != null ? "exists" : "null"}');
        return token != null;
      },
      onError: (error) {
        print('🔐 [AUTH] Error checking login status: $error');
        print('🔐 [AUTH] Error type: ${error.runtimeType}');
        return Failure.cacheError(error.toString());
      },
    );
  }
}

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final dioClient = ref.read(dioClientProvider);
  final storageService = ref.read(storageServiceProvider);
  final apiService = AuthApiService(dioClient.dio);
  
  return AuthRepositoryImpl(apiService, storageService);
});
