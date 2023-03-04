import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:prepared_flutter_project/ui/home_screen/home_screen_export.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeScreen,
      initial: true,
    ),
    /*AutoRoute(
      page: OtherScreen,
      path: '/other-screen',
    ),*/
  ],
)
@singleton
class AppRouter extends _$AppRouter {}
