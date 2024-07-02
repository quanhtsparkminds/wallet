import 'package:flutter/material.dart';
import 'package:myapp/commands/core/screen_edit.dart';
import 'package:myapp/commands/core/app_spacing.dart';
import 'package:myapp/shared/widgets/app_text/app_text.types.dart';
import 'package:myapp/shared/widgets/app_text/text_custom.dart';

class WrapCircleIcon extends StatelessWidget {
  final String text;
  final Widget icon;
  const WrapCircleIcon({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.x16),
      height: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffdb147f)),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
              width: Screen.resizeFitDevice(context, 52),
              height: Screen.resizeFitDevice(context, 52),
              child: icon),
          Center(
              child: TextCustom(
            text,
            textAlign: TextAlign.center,
            variant: AppTextVariant.input,
          )),
        ],
      ),
    );
  }
}
