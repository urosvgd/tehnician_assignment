import 'package:flutter_tehnician_assignment_uros/app_router/app_router.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupDI() async {
  getIt.registerSingleton(AppRouter());
}
