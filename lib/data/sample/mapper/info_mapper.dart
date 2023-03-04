import 'package:prepared_flutter_project/data/sample/model/model_export.dart';
import 'package:prepared_flutter_project/domain/sample/entity/entity_export.dart';

Info mapInfo(InfoResponseDto dto) {
  return Info(
      name: dto.name,
    );
}
