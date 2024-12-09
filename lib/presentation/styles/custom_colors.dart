import 'package:flutter/material.dart';

///
class CustomColors {
  ///
  /// Text('hello',style: TextStyle(color:CustomColors.bgColor.of(context)));
  ///
  static ThemedColor sampleColor =
      ThemedColor(darkColor: Colors.red, lightColor: Colors.green);

  ///
  static const Color midBlue = Color(0xff5393d2);
  ///
  static const Color test = Color(0xffF3E766);
  ///
  static const Color midGreen = Color(0xff5393d2);
  ///
  static const Color lightBlue = Color(0xffcbdff2);
  ///
  static const Color dimRed = Color(0xfff5e8e7);

  ///
  static const Color dimWhite = Color(0xffffffff);

  ///
  static const Color darkGreen = Color(0xffbfeead);

  ///
  static const Color green = Color(0xff16a70b);

  ///
  static const Color red = Color(0xff5393d2);

  ///
  static const Color lipstick = Color(0xff5393d2);
  ///
  static const Color ligthRed = Color(0xffd0cac9);

  ///
  static const Color blue = Color(0xff53dee3);
  ///
  static const Color darkBlue = Color(0xff313767);

  ///
  static const Color lightGrey = Color(0xffeff6ec);

  ///
  static const Color dimGreen = Color(0xFFEFF6EC);

  ///
  static const Color cornflowerBlue = Color(0xff5393d2);

  ///
  static const Color whiteTwo = Color(0xffdadada);

  ///
  static const Color grey900 = Color(0xFFF5F5F5);

  ///
  static const Color white = Color(0xFFFFFFFF);

  ///
  static const Color darkBrown = Color(0xFF2c0606);

  ///
  static const Color lightWhite = Color(0xFFf3f3f3);

  ///
  static const Color purpleBrown = Color(0xFF231f20);

  ///
  static const Color darkGrey = Color(0xffc9c6c6);

  ///
  static const Color dimGrey = Color(0xffdcd9d9);

  ///
  static const Color purpleBrownLight = Color(0xfff3f3f3);

  ///
  static const Color black = Color(0xff000000);

  ///
  static const Color dimBlack = Color(0xff5b5858);

  ///
  static const Color darkBlack = Color(0xff000000);

  ///
  static const Color greyishBrown = Color(0xFF555555);

  ///
  static const Color greyishBlack = Color(0xFF485966);

  ///
  static const Color greyishBrown2 = Color(0xFFDFDFDF);

  ///
  static const Color greyish = Color(0xFFa5a5a5);

  ///
  static const Color warning = Color(0xffff6a00);
}

///
/// This works fine with dark/light custom colors
///
///
class ThemedColor {
  ///
  Color darkColor;

  ///
  Color lightColor;

  ///
  ThemedColor({required this.darkColor, required this.lightColor});

  ///
  Color of(BuildContext context) {
    return MediaQuery.platformBrightnessOf(context) == Brightness.dark
        ? darkColor
        : lightColor;
  }
}

///
class AppColor {
  ///
  static const Color greenDark = Color(0xFF61a644);
}
