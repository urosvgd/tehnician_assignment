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
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const LandingScreen(),
      );
    },
    FormRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: FormScreen(),
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
class FormRoute extends PageRouteInfo<void> {
  const FormRoute()
      : super(
          FormRoute.name,
          path: '/form-screen',
        );

  static const String name = 'FormRoute';
}
