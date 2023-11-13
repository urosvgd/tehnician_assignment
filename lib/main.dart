import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_tehnician_assignment_uros/app_router/app_router.dart';
import 'package:flutter_tehnician_assignment_uros/constants/dependency_injection.dart';
import 'package:flutter_tehnician_assignment_uros/constants/locale.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await getIt.reset();
  await setupDI();
  await getIt.allReady();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FlutterLocalization localization = FlutterLocalization.instance;
  @override
  void initState() {
    localization.init(
      mapLocales: [
        const MapLocale('en', AppLocale.EN),
        const MapLocale('esp', AppLocale.ESP),
      ],
      initLanguageCode: 'en',
    );
    localization.onTranslatedLanguage = _onTranslatedLanguage;
    super.initState();
  }

// the setState function here is a must to add
  void _onTranslatedLanguage(Locale? locale) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: GlobalKey<ScaffoldMessengerState>(),
      routerDelegate: getIt<AppRouter>().delegate(),
      routeInformationParser: getIt<AppRouter>().defaultRouteParser(),
      supportedLocales: localization.supportedLocales,
      localizationsDelegates: localization.localizationsDelegates,
    );
  }
}
