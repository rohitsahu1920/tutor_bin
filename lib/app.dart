
import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutor_bin/res/app_theme.dart';
import 'package:tutor_bin/screens/splash_screen.dart';
import 'package:tutor_bin/translations/app_translations.dart';

class App {
  static App instance = App();

  bool _devMode = false;

  bool get devMode => _devMode;

  startApp({
    required bool devMode,
  }) async {
    _devMode = devMode;
    WidgetsFlutterBinding.ensureInitialized();
    runApp(ConnectivityAppWrapper(
      app: GetMaterialApp(
        translations: AppTranslations(),
        locale: const Locale('en', 'US'),
        fallbackLocale: const Locale('en', 'US'),
        home: const SplashScreen(),
        theme: appTheme,
      ),
    ));
  }
}

