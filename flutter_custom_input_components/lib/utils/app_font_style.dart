import 'package:flutter/cupertino.dart';
import 'app_colors.dart';

enum FontType {
  light,
  regular,
  medium,
  semiBold,
  bold,
  extraBold
}

class AppFontStyle {
  static const String fontFamilySatoshi = 'Satoshi';

  static FontWeight fontWeight(FontType fontType) {
    switch (fontType) {
      case FontType.light:
        return FontWeight.w300;
      case FontType.regular:
        return FontWeight.w400;
      case FontType.medium:
        return FontWeight.w500;
      case FontType.semiBold:
        return FontWeight.w600;
      case FontType.bold:
        return FontWeight.w700;
      case FontType.extraBold:
        return FontWeight.w900;
    }
  }

  static TextStyle textFieldTitleStyle() {
    return TextStyle(
        color: AppColor.primaryBlueColor,
        fontFamily: AppFontStyle.fontFamilySatoshi,
        fontWeight: AppFontStyle.fontWeight(FontType.medium),
        fontSize: 16);
  }

  static TextStyle textFieldAdditionalTitleStyle() {
    return TextStyle(
        color: AppColor.primaryBlueShade2,
        fontFamily: AppFontStyle.fontFamilySatoshi,
        fontWeight: AppFontStyle.fontWeight(FontType.medium),
        fontSize: 16);
  }

  static TextStyle textFieldPlaceholderStyle() {
    return TextStyle(
        color: AppColor.primaryGray,
        fontFamily: AppFontStyle.fontFamilySatoshi,
        fontWeight: AppFontStyle.fontWeight(FontType.regular),
        fontSize: 17);
  }

  static TextStyle textFieldTextStyle() {
    return TextStyle(
        color: AppColor.primaryBlueColor,
        fontFamily: AppFontStyle.fontFamilySatoshi,
        fontWeight: AppFontStyle.fontWeight(FontType.regular),
        fontSize: 17);
  }

  static TextStyle errorTextStyle() {
    return TextStyle(
        color: AppColor.primaryRed,
        fontFamily: AppFontStyle.fontFamilySatoshi,
        fontWeight: AppFontStyle.fontWeight(FontType.regular),
        fontSize: 14);
  }

 /* static TextStyle buttonTextStyle() {
    return TextStyle(
        color: AppColor.primaryWhite,
        fontFamily: AppFontStyle.fontFamilyPoppins,
        fontWeight: AppFontStyle.fontWeight(FontType.medium),
        fontSize: 15);
  }*/

  static TextStyle tabLabelSelectedTextStyle() {
    return TextStyle(
        color: AppColor.primaryBlueColor,
        fontFamily: AppFontStyle.fontFamilySatoshi,
        fontWeight: AppFontStyle.fontWeight(FontType.bold),
        fontSize: 14);
  }

/*  static TextStyle tabLabelUnSelectedTextStyle() {
    return TextStyle(
        color: AppColor.primaryTextFieldPlaceholder,
        fontFamily: AppFontStyle.fontFamilyPoppins,
        fontWeight: AppFontStyle.fontWeight(FontType.medium),
        fontSize: 14);
  }*/

/*  static TextStyle navbarTitleTextStyle() {
    return TextStyle(
        color: AppColor.primaryWhite,
        fontFamily: AppFontStyle.fontFamilyPoppins,
        fontWeight: AppFontStyle.fontWeight(FontType.semiBold),
        fontSize: 17);
  }*/

  static TextStyle customTextStyle(
      Color color,  FontType fontType, double fontSize,
      {TextDecoration? decoration, double? height}) {
    return TextStyle(
        color: color,
        fontFamily: AppFontStyle.fontFamilySatoshi,
        fontWeight: AppFontStyle.fontWeight(fontType),
        fontSize: fontSize,
        decoration: decoration,
        height: height);
  }
}
