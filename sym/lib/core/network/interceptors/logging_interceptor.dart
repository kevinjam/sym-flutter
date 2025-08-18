import 'package:dio/dio.dart';
import 'dart:developer' as developer;

class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    developer.log(
      '🚀 REQUEST: ${options.method} ${options.uri}',
      name: 'DioClient',
    );
    
    if (options.data != null) {
      developer.log(
        '📤 REQUEST DATA: ${options.data}',
        name: 'DioClient',
      );
    }
    
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    developer.log(
      '✅ RESPONSE: ${response.statusCode} ${response.requestOptions.uri}',
      name: 'DioClient',
    );
    
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    developer.log(
      '❌ ERROR: ${err.response?.statusCode} ${err.requestOptions.uri}',
      name: 'DioClient',
      error: err.message,
    );
    
    if (err.response?.data != null) {
      developer.log(
        '📥 ERROR DATA: ${err.response?.data}',
        name: 'DioClient',
      );
    }
    
    handler.next(err);
  }
}
