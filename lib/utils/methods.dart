
import 'dart:developer' as d;

import 'package:tutor_bin/app.dart';

class System{
  static void print(Object object) {
    if (App.instance.devMode) d.log("APP LOG :: $object");
  }
}


