import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:prepared_flutter_project/di/di_container.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
GetIt initDi() => getIt.init();
