import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioModule {
  @lazySingleton
  Dio getDio() => Dio();
}

@singleton
class DioInteractor {
  final Dio dio;

  DioInteractor(Dio this.dio);

  Future<Response<Map<String, dynamic>>> fetch({
    required String url,
    required String method,
    ResponseType responseType = ResponseType.json,
    FormData? data,
    Map<String, dynamic>? queryParameters,
  }) {
    return dio.fetch<Map<String, dynamic>>(
      Options(
        method: method,
        responseType: ResponseType.json,
        contentType: 'multipart/form-data',
      )
          .compose(
            dio.options,
            url,
            data: data,
            queryParameters: queryParameters,
          )
          .copyWith(baseUrl: baseApiUrl),
    );
  }
}

String baseApiUrl = '';
