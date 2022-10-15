import 'package:creative_company_task/core/managers/colors_manager.dart';
import 'package:flutter/material.dart';

class AppStyleManager {
  static final AppStyleManager _appStyle = AppStyleManager._internal();

  factory AppStyleManager() {
    return _appStyle;
  }

  AppStyleManager._internal();

  static TextStyle boldTextStyle(double fontSize,
      {bool lineThrough = false, Color color = AppColorManager.mainTextColor}) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.bold,
      decoration: lineThrough ? TextDecoration.lineThrough : null,
    );
  }

  static TextStyle semiBoldTextStyle(double fontSize,
      {bool showDecoration = false}) {
    return TextStyle(
      fontSize: fontSize,
      color: AppColorManager.mainTextColor,
      fontWeight: FontWeight.w500,
      decoration: showDecoration ? TextDecoration.underline : null,
    );
  }

  static TextStyle regularTextStyle(double fontSize,
      {bool showDecoration = false,
      Color color = AppColorManager.mainTextColor}) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.normal,
      decoration: showDecoration ? TextDecoration.underline : null,
    );
  }
}
