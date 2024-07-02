import 'package:flutter/material.dart';
import 'package:myapp/constants/app_color.dart';

import 'size_constant.dart';

String fontMedium = 'Font-Medium';
String fontBold = 'Font-Bold';
String fontRegular = 'Font-Regular';

class StyleConst {
  static TextStyle boldStyle(
          {Color? color,
          double? fontSize,
          double? height,
          FontWeight? fontWeight,
          FontStyle? fontStyle,
          TextDecoration? textDecoration,
          String? package}) =>
      TextStyle(
          color: color ?? AppColors.greyWeak,
          fontFamily: fontBold,
          package: package,
          height: height,
          fontWeight: fontWeight ?? FontWeight.normal,
          fontStyle: fontStyle ?? FontStyle.normal,
          fontSize: fontSize ?? defaultSize,
          decorationThickness: 3.0,
          decoration: textDecoration ?? TextDecoration.none);

  static TextStyle regularStyle(
          {Color? color,
          double? fontSize,
          double? height,
          FontWeight? fontWeight,
          FontStyle? fontStyle,
          TextDecoration? textDecoration,
          String? package}) =>
      TextStyle(
          color: color ?? AppColors.greyWeak,
          fontWeight: fontWeight ?? FontWeight.normal,
          fontSize: fontSize ?? defaultSize,
          fontStyle: fontStyle ?? FontStyle.normal,
          fontFamily: fontRegular,
          package: package,
          height: height,
          decorationThickness: 3.0,
          decoration: textDecoration ?? TextDecoration.none);

  static TextStyle mediumStyle(
          {Color? color,
          double? fontSize,
          double? height,
          FontWeight? fontWeight,
          FontStyle? fontStyle,
          TextDecoration? textDecoration,
          String? package,
          double? decorationThickness}) =>
      TextStyle(
          color: color ?? AppColors.greyWeak,
          fontStyle: fontStyle ?? FontStyle.normal,
          fontSize: fontSize ?? defaultSize,
          fontFamily: fontMedium,
          height: height,
          fontWeight: fontWeight ?? FontWeight.normal,
          decorationThickness: decorationThickness ?? 2.0,
          package: package,
          decoration: textDecoration ?? TextDecoration.none);
}
