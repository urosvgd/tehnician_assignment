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
    LandingRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const LandingScreen(),
        transitionsBuilder: TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    FormRoute.name: (routeData) {
      final args =
          routeData.argsAs<FormRouteArgs>(orElse: () => const FormRouteArgs());
      return CustomPage<dynamic>(
        routeData: routeData,
        child: FormScreen(key: args.key),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          LandingRoute.name,
          path: '/',
        ),
        RouteConfig(
          FormRoute.name,
          path: '/form-screen',
        ),
      ];
}

/// generated route for
/// [LandingScreen]
class LandingRoute extends PageRouteInfo<void> {
  const LandingRoute()
      : super(
          LandingRoute.name,
          path: '/',
        );

  static const String name = 'LandingRoute';
}

/// generated route for
/// [FormScreen]
class FormRoute extends PageRouteInfo<FormRouteArgs> {
  FormRoute({Key? key})
      : super(
          FormRoute.name,
          path: '/form-screen',
          args: FormRouteArgs(key: key),
        );

  static const String name = 'FormRoute';
}

class FormRouteArgs {
  const FormRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'FormRouteArgs{key: $key}';
  }
}
