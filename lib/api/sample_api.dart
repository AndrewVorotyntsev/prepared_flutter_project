import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:prepared_flutter_project/models/info_response/info_response.dart';
import 'package:retrofit/retrofit.dart';

part 'sample_api.g.dart';

/// класс для запросов о профиле
@singleton
@RestApi(baseUrl: '')
abstract class SampleApi {
  @factoryMethod
  factory SampleApi(Dio dio) = _SampleApi;

  /// Отправка запроса на получение информации о пользователе
  @GET('/api/v1/info')
  Future<InfoResponse> getInfo();
}
