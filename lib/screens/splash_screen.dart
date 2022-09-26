import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tutor_bin/controller/dashBoard_controller.dart';
import 'package:tutor_bin/mixins/after_layout.dart';
import 'package:tutor_bin/network/api_client.dart';
import 'package:tutor_bin/res/app_constants.dart';
import 'package:tutor_bin/utils/assets.dart';
import 'package:tutor_bin/utils/shared_pref_manager/sp_keys.dart';
import 'intro_screens/intro_screen.dart';

const Duration splashDuration = Duration(seconds: 3);

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with AfterLayoutMixin<SplashScreen> {
  @override
  Future<void> afterFirstLayout(BuildContext context) async {
    await _setupDependency();
    _startApp();
  }

  _startApp() async {
    //if (App.instance.devMode) return _checkForPermissions();
    //final remoteConfig = FirebaseRemoteConfig.instance;
    return Timer(splashDuration, () async {
      Get.offAll(() => IntroScreen());
    });
  }

  _setupDependency() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    Get.put(preferences);
    Get.put(APIClient());
    Get.put(DashBoardController());

    //set language
    var savedLanguage = preferences.getString(SPKeys.selectedLanguage.value);
    if (savedLanguage != null) {
      var l = supportedLanguages.firstWhere((e) => e.title == savedLanguage);
      Get.updateLocale(l.locale);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          Assets.logo,
          color: Colors.red,
        ),
      ),
    );
  }
}
