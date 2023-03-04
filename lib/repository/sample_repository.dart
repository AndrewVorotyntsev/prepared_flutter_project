import 'package:injectable/injectable.dart';
import 'package:prepared_flutter_project/api/sample_api.dart';

/// Репозиторий
abstract class SampleRepository {}

/// Имплементация к [SampleRepository]
@Injectable(as: SampleRepository)
class SampleRepositoryImpl extends SampleRepository {
  SampleRepositoryImpl(
    this._api,
  );

  /// Апи
  final SampleApi _api;
}
