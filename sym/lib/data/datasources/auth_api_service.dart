import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../domain/entities/user.dart';
import '../../domain/entities/auth_response.dart';

part 'auth_api_service.g.dart';

@RestApi()
abstract class AuthApiService {
  factory AuthApiService(Dio dio) = _AuthApiService;

  @POST('/api/auth/register')
  Future<HttpResponse<AuthResponse>> register(
    @Body() RegisterRequest request,
  );

  @POST('/api/auth/login')
  Future<HttpResponse<AuthResponse>> login(
    @Body() LoginRequest request,
  );

  @POST('/api/auth/logout')
  Future<HttpResponse<void>> logout();

  @GET('/api/auth/profile')
  Future<HttpResponse<UserResponse>> getCurrentUser();

  @POST('/api/auth/refresh')
  Future<HttpResponse<TokenResponse>> refreshToken(
    @Body() Map<String, String> refreshTokenRequest,
  );
}
