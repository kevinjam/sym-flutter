import 'package:dio/dio.dart';
import '../../storage/storage_service.dart';

class AuthInterceptor extends Interceptor {
  final StorageService _storageService;

  AuthInterceptor(this._storageService);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // Skip auth for login/register endpoints
    if (options.path.contains('/auth/login') || 
        options.path.contains('/auth/register') ||
        options.path.contains('/public/')) {
      return handler.next(options);
    }

    try {
      final token = await _storageService.getAuthToken();
      if (token != null) {
        options.headers['Authorization'] = 'Bearer ${token.accessToken}';
      }
    } catch (e) {
      // Continue without token if storage fails
    }

    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // Handle 401 Unauthorized
    if (err.response?.statusCode == 401) {
      try {
        // Clear stored auth token
        await _storageService.clearAuthToken();
        // You could also trigger a logout event here
      } catch (e) {
        // Handle storage error
      }
    }

    handler.next(err);
  }
}
