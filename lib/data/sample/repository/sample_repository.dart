import 'package:injectable/injectable.dart';
import 'package:prepared_flutter_project/data/sample/api/sample_api.dart';
import 'package:prepared_flutter_project/data/sample/mapper/info_mapper.dart';
import 'package:prepared_flutter_project/domain/sample/entity/entity_export.dart';

/// Репозиторий
abstract class SampleRepository {
  Future<Info> getInfo();
}

/// Имплементация к [SampleRepository]
@Injectable(as: SampleRepository)
class SampleRepositoryImpl implements SampleRepository {
  /// Апи
  final SampleApi _api;

  SampleRepositoryImpl(
    this._api,
  );

  @override
  Future<Info> getInfo() async{
    final info = await _api.getV1Info();

    return mapInfo(info);
  }
}
