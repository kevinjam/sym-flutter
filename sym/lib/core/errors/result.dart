import 'package:dartz/dartz.dart';
import 'failures.dart';

typedef Result<T> = Either<Failure, T>;

extension ResultExtensions<T> on Result<T> {
  bool get isSuccess => isRight();
  bool get isFailure => isLeft();
  
  T? get data => fold((l) => null, (r) => r);
  Failure? get error => fold((l) => l, (r) => null);
  
  Result<U> map<U>(U Function(T) mapper) {
    return fold(
      (failure) => Left(failure),
      (success) => Right(mapper(success)),
    );
  }
  
  Future<Result<U>> mapAsync<U>(Future<U> Function(T) mapper) async {
    return fold(
      (failure) => Left(failure),
      (success) async => Right(await mapper(success)),
    );
  }
}

class ResultUtils {
  static Result<T> success<T>(T data) => Right(data);
  static Result<T> failure<T>(Failure failure) => Left(failure);
  
  static Future<Result<T>> tryCatch<T>(
    Future<T> Function() operation, {
    Failure Function(Object error)? onError,
  }) async {
    try {
      final result = await operation();
      return Right(result);
    } catch (e) {
      final failure = onError?.call(e) ?? Failure.unknown(e.toString());
      return Left(failure);
    }
  }
}
