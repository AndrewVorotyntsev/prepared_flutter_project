import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:prepared_flutter_project/di/di_container.dart';
import 'package:prepared_flutter_project/error_handling/error_handler.dart';
import 'package:prepared_flutter_project/interactors/sample_interactor.dart';
import 'package:prepared_flutter_project/ui/home_screen/home_screen.dart';

import 'home_screen_model.dart';

/// Абстракция Widget Model для экрана
abstract class IHomeScreenWidgetModel extends IWidgetModel {}

HomeScreenWidgetModel defaultAppWidgetModelFactory(BuildContext context) {
  return HomeScreenWidgetModel(
    HomeScreenModel(
      getIt.get<TestErrorHandler>(),
      getIt.get<SampleInteractor>(),
    ),
  );
}

/// Имплементация и реализация Виджет модели [IHomeScreenWidgetModel]
class HomeScreenWidgetModel extends WidgetModel<HomeScreen, HomeScreenModel>
    implements IHomeScreenWidgetModel {
  HomeScreenWidgetModel(HomeScreenModel model) : super(model);
}
