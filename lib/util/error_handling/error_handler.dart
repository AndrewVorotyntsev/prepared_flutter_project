import 'package:elementary/elementary.dart';
import 'package:injectable/injectable.dart';
import 'package:prepared_flutter_project/util/logger/logger.dart';

/// Error handler that print info to console
@singleton
class DefaultErrorHandler implements ErrorHandler {
  @override
  void handleError(Object error, {StackTrace? stackTrace}) {
    logger.e(error, null, stackTrace);
  }
}
