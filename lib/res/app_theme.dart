import 'package:flutter/material.dart';
import 'package:tutor_bin/res/app_colors.dart';
import 'package:tutor_bin/utils/sizes.dart';
import 'package:tutor_bin/utils/textstyles.dart';


ThemeData appTheme = ThemeData(
  iconTheme: IconThemeData(size: Sizes.s20, color: Colors.black),
  brightness: Brightness.light,
  primaryColor: AppColors.primary,
  primaryColorLight: AppColors.primaryLightColor,
  primaryColorDark: AppColors.primary,
  //accentColor: AppColors.primaryLightColor,
  //accentColorBrightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  bottomAppBarColor: AppColors.primaryLightColor,
  cardColor: Colors.white,
  dividerColor: Colors.black,
  splashFactory: InkSplash.splashFactory,
  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
  fontFamily: FontFamily.regular,
);