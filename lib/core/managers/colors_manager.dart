import 'dart:ui';

import 'package:flutter/material.dart';

class AppColorManager {
  static final AppColorManager _appColor = AppColorManager._internal();

  factory AppColorManager() {
    return _appColor;
  }

  AppColorManager._internal();

  static const lightRed = Color(0xffEE6A61);
  static const darkRed = Color(0xffB13E55);
  static const lightGray = Color(0xffF5F7F9);
  static const darkGray = Color(0xffD7D7D7);
  static const orange = Color(0xffD93E11);
  static const lightBlue = Color(0xffB0EAFD);
  static const darkBlue = Color(0xff47B6DA);
  static const veryDarkBlue = Color(0xff21114B);
  static const bottomNavBarColor = Color(0xffF4F9FA);
  static const unSelectedBottomNavBarColor = Color(0xff707070);
  static const mainTextColor = Color(0xff474749);
  static const subTextColor = Color(0xff929294);
  static const white = Color(0xffffffff);
  static const backgroundColor = Color(0xfffdffff);
  static const circleBorder = Color(0xff5A7081);
  static const searchBorderColor = Color(0xff707070);
  static const offerContainerBGColor = Color(0xffFEC8BD);
  static const offerContainerTextColor = Color(0xffD13A27);
}
