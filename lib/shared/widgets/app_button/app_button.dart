import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/commands/core/app_color.dart';
import 'package:myapp/shared/widgets/app_button/app_button.types.dart';

class AppButton extends StatelessWidget {
  final Function()? onPressed;
  final ButtonStyle? style;
  final TextStyle? textStyle;
  final AppButtonIcon? icon;
  final Widget? child;
  final String title;
  final AppButtonVariant? variant;
  final bool? isWithTrailingIcon;

  const AppButton({
    super.key,
    this.child,
    this.title = '',
    this.onPressed,
    this.style,
    this.textStyle,
    this.icon,
    this.variant = AppButtonVariant.primary,
    this.isWithTrailingIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    ButtonStyle mergedStyle = getAppButtonStyleByVariant(variant!, context,
            isEnable: onPressed != null ? true : false)
        .merge(style);
    String iconName = getAppButtonIconByType(icon);
    Widget iconWidget = iconName.isNotEmpty
        ? SvgPicture.asset(
            iconName,
            colorFilter: ColorFilter.mode(
                (onPressed != null
                        ? getAppButtonIconColor(variant!, context)['active']
                        : getAppButtonIconColor(
                            variant!, context)['disabled']) ??
                    AppColors.white,
                BlendMode.srcIn),
          )
        : Container();
    Widget labelWidget = child != null
        ? child!
        : Text(
            title,
            style: getAppTextButtonStyleByVariant(variant!,
                    isEnable: onPressed != null ? true : false)
                .merge(textStyle),
          );
    TextDirection textDirection =
        isWithTrailingIcon! ? TextDirection.rtl : TextDirection.ltr;

    switch (variant) {
      case AppButtonVariant.primary:
        return Directionality(
            textDirection: textDirection,
            child: OutlinedButton.icon(
              onPressed: onPressed,
              style: mergedStyle,
              icon: iconWidget,
              label: labelWidget,
            ));
      case AppButtonVariant.secondary:
      case AppButtonVariant.ghost:
        return Directionality(
            textDirection: textDirection,
            child: TextButton.icon(
              onPressed: onPressed,
              style: mergedStyle,
              icon: iconWidget,
              label: labelWidget,
            ));
      default:
        return Directionality(
          textDirection: textDirection,
          child: ElevatedButton.icon(
            onPressed: onPressed,
            style: mergedStyle,
            icon: iconWidget,
            label: labelWidget,
          ),
        );
    }
  }
}
