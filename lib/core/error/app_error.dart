sealed class AppError implements Exception {
  const AppError(this.message);

  final String message;
}

final class UnknownError extends AppError {
  const UnknownError(super.message);
}

final class NetworkError extends AppError {
  const NetworkError(super.message);
}
