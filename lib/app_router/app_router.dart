import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tehnician_assignment_uros/presentation/form_screen/form_screen.dart';
import 'package:flutter_tehnician_assignment_uros/presentation/landing/landing_screen.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    CustomRoute(
      page: LandingScreen,
      transitionsBuilder: TransitionsBuilders.slideRight,
      initial: true,
    ),
    CustomRoute(
      page: FormScreen,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
    ),
  ],
  replaceInRouteName: 'Screen,Route',
)
class AppRouter extends _$AppRouter {}
