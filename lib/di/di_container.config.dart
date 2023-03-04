// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:prepared_flutter_project/api/sample_api.dart' as _i5;
import 'package:prepared_flutter_project/error_handling/error_handler.dart'
    as _i7;
import 'package:prepared_flutter_project/interactors/dio/dio_interactor.dart'
    as _i4;
import 'package:prepared_flutter_project/interactors/sample_interactor.dart'
    as _i8;
import 'package:prepared_flutter_project/repository/sample_repository.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

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
    gh.lazySingleton<_i3.Dio>(() => dioModule.getDio());
    gh.singleton<_i4.DioInteractor>(_i4.DioInteractor(gh<_i3.Dio>()));
    gh.singleton<_i5.SampleApi>(_i5.SampleApi(gh<_i3.Dio>()));
    gh.factory<_i6.SampleRepository>(
        () => _i6.SampleRepositoryImpl(gh<_i5.SampleApi>()));
    gh.singleton<_i7.TestErrorHandler>(_i7.TestErrorHandler());
    gh.lazySingleton<_i8.SampleInteractor>(
        () => _i8.SampleInteractorImpl(gh<_i6.SampleRepository>()));
    return this;
  }
}

class _$DioModule extends _i4.DioModule {}
