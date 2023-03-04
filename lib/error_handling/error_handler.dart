import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

/// Error handler that print info to console
@singleton
class TestErrorHandler implements ErrorHandler {
  @override
  void handleError(Object error, {StackTrace? stackTrace}) {
    if (kDebugMode) {
      print(error);
      print(stackTrace);
    }
  }
}
