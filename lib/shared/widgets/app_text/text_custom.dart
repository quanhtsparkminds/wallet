import 'package:flutter/material.dart';
import 'package:myapp/shared/widgets/app_text/app_text.types.dart';

class TextCustom extends StatelessWidget {
  final String text;
  final FontCustom fontCustom;
  final TextStyle? style;
  final TextAlign textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final AppTextVariant? variant;
  final TextDecoration textDecoration;
  final List<Shadow>? shadows;
  final double letterSpacing = 0.7;

  const TextCustom(
    this.text, {
    super.key,
    this.fontCustom = FontCustom.robotoRegular,
    this.textAlign = TextAlign.left,
    this.maxLines,
    this.overflow,
    this.textDecoration = TextDecoration.none,
    this.style,
    this.variant,
    this.shadows,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle baseStyle =
        Theme.of(context).textTheme.bodyMedium ?? const TextStyle();
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: (baseStyle)
          .merge(getAppTextStyleByVariant(variant ?? AppTextVariant.text1))
          .merge(style)
          .copyWith(letterSpacing: letterSpacing),
    );
  }
}
