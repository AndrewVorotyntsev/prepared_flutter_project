import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:prepared_flutter_project/data/sample/model/model_export.dart';
import 'package:prepared_flutter_project/data/sample/sample_url.dart';
import 'package:retrofit/retrofit.dart';

part 'sample_api.g.dart';

/// класс для запросов информации к серверу
@singleton
@RestApi()
abstract class SampleApi {
  @factoryMethod
  factory SampleApi(Dio dio, {String baseUrl}) = _SampleApi;

  /// Отправка запроса на получение информации
  @GET(SampleUrl.v1Info)
  Future<InfoResponseDto> getV1Info();
}
