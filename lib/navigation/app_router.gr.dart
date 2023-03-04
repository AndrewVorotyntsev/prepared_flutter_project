// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: HomeScreen(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          HomeRoute.name,
          path: '/',
        )
      ];
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = homeScreenWidgetModelFactory,
  }) : super(
          HomeRoute.name,
          path: '/',
          args: HomeRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
        );

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    this.wmFactory = homeScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}
