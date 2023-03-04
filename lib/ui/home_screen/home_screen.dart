// Домашняя страница профиля пользователя
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

import 'home_screen_wm.dart';

class HomeScreen extends ElementaryWidget<IHomeScreenWidgetModel> {
  const HomeScreen({
    Key? key,
    WidgetModelFactory wmFactory = defaultAppWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IHomeScreenWidgetModel wm) {
    return Scaffold();
  }
}

/// Навигация к странице [HomeScreen]
class HomeScreenRoute extends MaterialPageRoute {
  HomeScreenRoute()
      : super(
          builder: (context) => HomeScreen(),
        );
}
