
import 'ErrorMessagModel.dart';

class ServerException implements Exception {
  final ErrorMessagModel errorMessageModel;

  const ServerException({
    required this.errorMessageModel,
  });
}

class LocalDatabaseException implements Exception {
  final String message;

  const LocalDatabaseException({
    required this.message,
  });
}