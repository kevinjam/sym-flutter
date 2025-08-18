import '../../core/errors/result.dart';
import '../entities/user.dart';

abstract class AuthRepository {
  Future<Result<AuthToken>> login(LoginRequest request);
  Future<Result<AuthToken>> register(RegisterRequest request);
  Future<Result<void>> logout();
  Future<Result<User>> getCurrentUser();
  Future<Result<AuthToken>> refreshToken(String refreshToken);
  Future<Result<bool>> isLoggedIn();
}
