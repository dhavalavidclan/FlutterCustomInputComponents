import 'package:flutter/material.dart';

/// APIConstants
class AppColor {

  static const Color primaryBlueColor = Color(0xFF001F49);
  static const Color primaryBlueShade2 = Color(0xFF006083);
  static const Color primaryGray = Color(0xFFAFAFAD);
  static const Color primaryRed = Color(0xFFDC3545);
  static const Color secondaryGray = Color(0xFF878786);
  static const Color secondaryGray4 = Color(0xFFFCEBEC);
  static const Color secondaryGray5 = Color(0xFFE6E9ED);
  static const Color secondaryGray6 = Color(0xFFE8E8E8);
  static const Color secondaryBlue = Color(0xFF007CAA);
  static const Color secondaryBlue2 = Color(0xFF334C6D);
  static const Color secondaryBlue3 = Color(0xFF546985);
  static const Color secondaryGray2 = Color(0xFFFBFBFA);
  static const Color secondaryGray3 = Color(0xFFE6F7FD);
  static const Color primaryBlueLight = Color(0xFF00AEEF);
  static const Color primaryBlueLight2 = Color(0xFFB0E6FA);
  static const Color primaryBlueLight3 = Color(0xFF004964);
  static const Color primaryBlueLight4 = Color(0xFF009ED9);
  static const Color primaryBlueDark = Color(0xFF000D1F);
  static const Color defaultBlack = Color(0xFF000000);
  static const Color defaultWhite = Color(0xFFFFFFFF);
  static const Color primaryWhite = Color(0xFFE0E0DE);
  static const Color primaryYellow = Color(0xFFE8B006);
  static const Color primaryGreenLight = Color(0xFFFFECB2);
  static const Color primaryOrange = Color(0xFF6B5103);
  static const Color transparent = Colors.transparent;


  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    final swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }
}
