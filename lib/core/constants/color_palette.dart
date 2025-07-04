import 'package:flutter/material.dart';
import 'package:webly_task/common/utils/helper.dart';

class ColorPalette {
  ColorPalette._();

  static const int primaryColor = 0xff6ACAC6;
  static const int primaryColorDark = 0xff08ACA5;

  static MaterialColor primaryMaterialColor = getSwatch(const Color.fromARGB(255, 0, 0, 0));
  static MaterialColor primaryMaterialColorDark = getSwatch(const Color.fromARGB(255, 4, 6, 6));

  static const int secondaryColor = 0xff3544C4;

  static const Color greyShade100 = Color(0xFFEEEEEE);
  static const Color greyShade200 = Color(0xFFEEEEEE);
  static const Color greyShade300 = Color(0xFFE0E0E0);
  static const Color greyShade400 = Color(0xFFBDBDBD);
  static const Color greyShade500 = Color(0xFF9E9E9E);
  static const Color greyShade600 = Color(0xFF757575);
  static const Color greyShade700 = Color(0xFF616161);
  static const Color greyShade800 = Color(0xFF424242);
  static const Color greyShade900 = Color(0xFF212121);

  static const Color blue = Color(0xFF2874F0);
  static const Color black = Colors.black;
  static const Color grey = Color.fromARGB(255, 123, 126, 130);
  static const Color white = Colors.white;
  static const Color green = Colors.green;
  static const Color transparent = Colors.transparent ;
  static const Color red = Color.fromARGB(255, 248, 42, 38);

}