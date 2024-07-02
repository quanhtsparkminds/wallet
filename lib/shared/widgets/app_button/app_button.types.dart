import 'package:flutter/material.dart';
import 'package:myapp/constants/app_color.dart';
import 'package:myapp/constants/size_constant.dart';
import 'package:myapp/gen/assets.gen.dart';
import 'package:myapp/shared/widgets/app_spacing.dart';
import 'package:myapp/shared/widgets/app_text/app_text.types.dart';

const double appButtonIconSize = 20;
const double appButtonHeight = AppSpacing.x48;

enum AppButtonVariant { primary, secondary, ghost }

TextStyle getFontSizeAndLineHeightByVariant() {
  return TextStyle(
      fontFamily: getFont(FontCustom.robotoRegular),
      fontSize: AppSpacing.x16,
      height: AppSpacing.x24 / AppSpacing.x16);
}

TextStyle getAppTextButtonStyleByVariant(AppButtonVariant appButtonVariant,
    {required bool isEnable}) {
  TextStyle baseStyle = getFontSizeAndLineHeightByVariant();

  switch (appButtonVariant) {
    case AppButtonVariant.primary:
      return TextStyle(
              fontWeight: FontWeight.w700,
              letterSpacing: 0.0,
              color: getAppTextButtonStyleByVariantButton(
                  appButtonVariant)[isEnable ? 'active' : 'disabled'])
          .merge(baseStyle);
    case AppButtonVariant.secondary:
      return TextStyle(
              fontWeight: FontWeight.w500,
              letterSpacing: 0.0,
              color: getAppTextButtonStyleByVariantButton(
                  appButtonVariant)[isEnable ? 'active' : 'disabled'])
          .merge(baseStyle);
    case AppButtonVariant.ghost:
      return TextStyle(
              fontWeight: FontWeight.w500,
              letterSpacing: 0.0,
              color: AppColors.white)
          .merge(baseStyle);
    default:
      return const TextStyle();
  }
}

enum AppButtonIcon { import, export, copy }

String getAppButtonIconByType(AppButtonIcon? appButtonIcon) {
  switch (appButtonIcon) {
    case AppButtonIcon.import:
      return Assets.svg.import;
    case AppButtonIcon.export:
      return Assets.svg.export;
    case AppButtonIcon.copy:
      return Assets.svg.copy;
    default:
      return '';
  }
}

Map<String, Color> getAppButtonIconColor(
    AppButtonVariant appButtonVariant, BuildContext context) {
  switch (appButtonVariant) {
    case AppButtonVariant.primary:
      return {
        'disabled': AppColors.darkModeColor.withOpacity(0.5),
        'active': AppColors.primaryColor,
      };

    default:
      return {
        'disabled': AppColors.white,
        'active': AppColors.white,
      };
  }
}

Map<String, Color> getAppTextButtonStyleByVariantButton(
    AppButtonVariant appButtonVariant) {
  switch (appButtonVariant) {
    case AppButtonVariant.primary:
      return {
        'disabled': AppColors.white,
        'active': AppColors.white,
      };

    case AppButtonVariant.secondary:
      return {
        'disabled': AppColors.white.withOpacity(0.4),
        'active': AppColors.white,
      };
    default:
      return {
        'disabled': AppColors.white,
        'active': AppColors.white,
      };
  }
}

Map<String, Color> getAppButtonColorByVariantButton(
    AppButtonVariant appButtonVariant) {
  switch (appButtonVariant) {
    case AppButtonVariant.primary:
      return {
        'disabled': AppColors.primaryColor.withOpacity(.6),
        'active': AppColors.primaryColor,
      };
    default:
      return {
        'disabled': AppColors.white,
        'active': AppColors.white,
      };
  }
}

ButtonStyle getAppButtonStyleByVariant(
    AppButtonVariant appButtonVariant, BuildContext context,
    {required bool isEnable}) {
  /*
    Base style common for primary button
    Text style - shape - elevation
  */
  ButtonStyle baseStylePrimary = ButtonStyle(
    minimumSize:
        const MaterialStatePropertyAll(Size(double.infinity, appButtonHeight)),
    textStyle: MaterialStatePropertyAll(
        getAppTextButtonStyleByVariant(appButtonVariant, isEnable: isEnable)),
    animationDuration: animationDuration,
    elevation: const MaterialStatePropertyAll(elevation),
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.x8),
      ),
    ),
  );

  ButtonStyle baseStyleSecondary = ButtonStyle(
    minimumSize:
        const MaterialStatePropertyAll(Size(double.infinity, appButtonHeight)),
    textStyle: MaterialStatePropertyAll(
        getAppTextButtonStyleByVariant(appButtonVariant, isEnable: isEnable)),
    animationDuration: animationDuration,
  );

  ButtonStyle baseStyle = ButtonStyle(
      minimumSize: const MaterialStatePropertyAll(
          Size(double.infinity, appButtonHeight)),
      textStyle: MaterialStatePropertyAll(
          getAppTextStyleByVariant(AppTextVariant.button)),
      elevation: const MaterialStatePropertyAll(0),
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.x8),
      )));

  switch (appButtonVariant) {
    case AppButtonVariant.primary:
      return baseStylePrimary.merge(ElevatedButton.styleFrom(
          disabledBackgroundColor:
              getAppButtonColorByVariantButton(appButtonVariant)['disabled'],
          disabledForegroundColor: AppColors.primaryColor,
          backgroundColor:
              getAppButtonColorByVariantButton(appButtonVariant)['active'],
          shadowColor: AppColors.primaryColor.withOpacity(0.3)));

    case AppButtonVariant.secondary:
      return baseStyleSecondary.merge(ElevatedButton.styleFrom(
        disabledBackgroundColor: AppColors.grey,
        disabledForegroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.x8),
          side: BorderSide(
              color: getAppTextButtonStyleByVariantButton(
                  appButtonVariant)[isEnable ? 'active' : 'disabled']!,
              width: 1.5),
        ),
      ));

    case AppButtonVariant.ghost:
      return baseStyle;
    default:
      return baseStyleSecondary.merge(ElevatedButton.styleFrom(
        disabledBackgroundColor: AppColors.grey,
        disabledForegroundColor: AppColors.white,
      ));
  }
}
