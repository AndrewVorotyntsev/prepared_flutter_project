// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:prepared_flutter_project/data/sample/api/sample_api.dart'
    as _i6;
import 'package:prepared_flutter_project/data/sample/repository/sample_repository.dart'
    as _i7;
import 'package:prepared_flutter_project/di/module/dio_module.dart' as _i9;
import 'package:prepared_flutter_project/domain/interactors/sample_interactor.dart'
    as _i8;
import 'package:prepared_flutter_project/navigation/app_router.dart' as _i3;
import 'package:prepared_flutter_project/util/error_handling/error_handler.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.singleton<_i4.DefaultErrorHandler>(_i4.DefaultErrorHandler());
    gh.lazySingleton<_i5.Dio>(() => dioModule.getDio());
    gh.singleton<_i6.SampleApi>(_i6.SampleApi(
      gh<_i5.Dio>(),
      baseUrl: gh<String>(),
    ));
    gh.factory<_i7.SampleRepository>(
        () => _i7.SampleRepositoryImpl(gh<_i6.SampleApi>()));
    gh.lazySingleton<_i8.SampleInteractor>(
        () => _i8.SampleInteractorImpl(gh<_i7.SampleRepository>()));
    return this;
  }
}

class _$DioModule extends _i9.DioModule {}
