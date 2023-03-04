import 'package:injectable/injectable.dart';
import 'package:prepared_flutter_project/api/sample_api.dart';

/// Репозиторий
abstract class SampleRepository {}

/// Имплементация к [HomeRepository]
@Injectable(as: SampleRepository)
class SampleRepositoryImpl extends SampleRepository {
  SampleRepositoryImpl(
    this._api,
  );

  final SampleApi _api;
}
