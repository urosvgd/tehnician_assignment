import 'package:flutter/material.dart';
import 'package:flutter_tehnician_assignment_uros/app_router/app_router.dart';
import 'package:flutter_tehnician_assignment_uros/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await getIt.reset();
  await setupDI();
  await getIt.allReady();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: GlobalKey<ScaffoldMessengerState>(),
      routerDelegate: getIt<AppRouter>().delegate(),
      routeInformationParser: getIt<AppRouter>().defaultRouteParser(),
    );
  }
}
