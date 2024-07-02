import 'package:flutter/material.dart';
import 'package:myapp/constants/app_color.dart';
import 'package:myapp/shared/widgets/app_spacing.dart';
import 'package:myapp/shared/widgets/app_text/app_text.types.dart';

class AppTheme {
  static ThemeData light() => ThemeData.light().copyWith(
        textTheme: ThemeData.light().textTheme.apply(
              fontFamily: getFont(FontCustom.robotoRegular),
              bodyColor: AppColors.darkModeColor,
              displayColor: AppColors.darkModeColor,
            ),
        colorScheme: ColorScheme.light(
            brightness: Brightness.dark,
            primary: AppColors.darkModeColor,
            secondary: AppColors.darkModeColor,
            background: AppColors.canvasColorDark,
            surface: AppColors.white,
            error: AppColors.focus),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: AppColors.darkModeColor,
          selectionHandleColor: Colors.transparent,
          selectionColor: AppColors.darkModeColor,
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.x16, vertical: AppSpacing.x8),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          hintStyle: const TextStyle(
              color: AppColors.grey6Light, fontWeight: FontWeight.w500),
          errorStyle: getAppTextStyleByVariant(AppTextVariant.text1).apply(
              color: AppColors.focus,
              fontWeightDelta: 500,
              overflow: TextOverflow.ellipsis),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.transparent, width: 1.5),
            borderRadius: BorderRadius.circular(AppSpacing.x8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.transparent, width: 1.5),
            borderRadius: BorderRadius.circular(AppSpacing.x8),
          ),
          errorBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: AppColors.redorange, width: 1.5),
            borderRadius: BorderRadius.circular(AppSpacing.x8),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: AppColors.redorange, width: 1.5),
            borderRadius: BorderRadius.circular(AppSpacing.x8),
          ),
        ),
      );

  static ThemeData dark() => ThemeData.dark().copyWith(
      textTheme: ThemeData.light().textTheme.apply(
            fontFamily: getFont(FontCustom.robotoRegular),
            bodyColor: AppColors.grey7Light,
            displayColor: AppColors.grey7Light,
          ),
      colorScheme: ColorScheme.light(
          brightness: Brightness.dark,
          primary: AppColors.darkModeColor,
          secondary: AppColors.darkModeColor,
          background: AppColors.darkModeColor,
          surface: AppColors.white,
          error: AppColors.focus),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColors.darkModeColor,
        selectionHandleColor: Colors.transparent,
        selectionColor: AppColors.darkModeColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.x16, vertical: AppSpacing.x8),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintStyle: const TextStyle(
            color: AppColors.grey6Light, fontWeight: FontWeight.w500),
        errorStyle: getAppTextStyleByVariant(AppTextVariant.text1).apply(
            color: AppColors.focus,
            fontWeightDelta: 500,
            overflow: TextOverflow.ellipsis),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.transparent, width: 1.5),
          borderRadius: BorderRadius.circular(AppSpacing.x8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.transparent, width: 1.5),
          borderRadius: BorderRadius.circular(AppSpacing.x8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.redorange, width: 1.5),
          borderRadius: BorderRadius.circular(AppSpacing.x8),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.redorange, width: 1.5),
          borderRadius: BorderRadius.circular(AppSpacing.x8),
        ),
      ),
      appBarTheme: const AppBarTheme(backgroundColor: AppColors.darkModeColor));
}
