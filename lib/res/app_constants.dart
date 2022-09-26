import 'dart:ui';

import 'package:tutor_bin/models/locale_model.dart';



class AppConstants {
  static const double mapCameraZoom = 17;
}

final supportedLanguages = <LocaleModel>[
  LocaleModel('English', const Locale('en', 'US')),
  LocaleModel('Spanish', const Locale('es')),
  LocaleModel('Portuguese', const Locale('pt')),
];

class UserType {
  static const String fr = "Field Representative";
  static const String fm = "Field Manager";
  static const String dispatcher = "Dispatcher";
}