import 'package:flutter/material.dart';

abstract class AppColors {
  const AppColors._();

  static const Color blue = Color(0xff3461FD);
  static const Color blue100 = Color(0xff133BB7);
  static const Color bgColor = Color(0xffF8F7F7);
  static const Color primaryColor = Color(0xff00B17F);
  static const Color borderColor = Color(0xffF6F6F6);
  static const Color lightGreyColor = Color(0xffF8F9FB);
  static const Color fieldBorderColor = Color(0xffF3F3F3);
  static const Color dividerColor = Color(0xffDFE2EB);
  static const Color cardBorderColor = Color(0xffA8AAB8);
  static const Color messageItemColor = Color(0xffF1F7FF);
  static const Color myInfoCardColor = Color(0xffEDF3F9);
  static const Color yellowColor = Color(0xffFFC700);
  static const Color profileCardColor = Color(0xffF9F9F9);
  static Color shadowColor = const Color(0xff8A8C98).withOpacity(.25);

  static const Color grey = Color(0xffA7A9B7);
  static const Color dartGrey = Color(0xff324054);
  static const Color white = Color(0xffFFFFFF);
  static const Color black = Color(0xff000000);
  static const Color searchBg = Color(0xffF0F0F0);
  static const Color buttonBg = Color(0xffA887FF);
  static const Color buttonUnActiveBg = Color(0xffEAEAEA);
  static const Color cardBg = Color(0xffEDECEC);
  static const Color fieldColor = Color(0xffECECEC);

  static List<Color> gradients = [
    Colors.white.withOpacity(0),
    const Color(0xff000000).withOpacity(.3),
  ];

  static const Color textColor = Color(0xffA7A9B7);
  static const Color greyTextColor = Color(0xffB9B9B9);
  static const Color textColor87 = Color(0xff878787);
  static const Color textColor3 = Color(0xffA7A9B7);

  static Color buttonColor = const Color(0xffDDD0FF).withOpacity(.19);
  static Color navBarBg = const Color(0xF386BF61).withOpacity(.1);
}
