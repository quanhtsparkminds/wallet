import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/commands/core/app_color.dart';
import 'package:myapp/constants/size_constant.dart';
import 'package:myapp/shared/language/translation_key.dart';
import 'package:myapp/commands/core/app_spacing.dart';
import 'package:myapp/shared/widgets/app_text/app_text.types.dart';
import 'package:myapp/shared/widgets/app_text/text_custom.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class AppCountdownButton extends StatefulWidget {
  final bool autoStart;
  final int seconds;
  final String? title;
  final Color? colorTimeDown;
  final Future<bool> Function()? onResend;

  const AppCountdownButton(
      {super.key,
      this.autoStart = true,
      this.seconds = 30,
      this.title,
      this.colorTimeDown,
      this.onResend});

  @override
  State<AppCountdownButton> createState() => _AppCountdownButtonState();
}

class _AppCountdownButtonState extends State<AppCountdownButton>
    with SingleTickerProviderStateMixin {
  late CountdownController countdownController;
  late AnimationController controller;

  late Animation animation;
  late Color color = Colors.transparent;

  void _animationListener() {
    setState(() {
      color = animation.value;
    });
  }

  @override
  initState() {
    super.initState();
    countdownController = CountdownController(autoStart: widget.autoStart);
    controller = AnimationController(
        duration: Duration(seconds: widget.seconds), vsync: this);
    animation = ColorTween(begin: AppColors.transparent, end: AppColors.white)
        .animate(controller);

    animation.addListener(_animationListener);
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    animation.removeListener(_animationListener);
    super.dispose();
  }

  bool get isRunning => !(countdownController.isCompleted ?? false);
  bool get isCompleted => (countdownController.isCompleted ?? false);

  @override
  Widget build(BuildContext context) {
    bool isResendAble =
        !isRunning && widget.onResend is Future<bool> Function();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: isResendAble
              ? () async {
                  if (await widget.onResend!()) {
                    countdownController.restart();
                    setState(() {
                      color = AppColors.white;
                    });

                    controller.reset();
                    controller.forward();
                  }
                }
              : null,
          borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.x4)),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.x16, vertical: AppSpacing.x16),
            child: TextCustom(
              widget.title ?? TranslationKeys.resendCode.tr,
              variant: AppTextVariant.button,
              style: TextStyle(color: color),
            ),
          ),
        ),
        AnimatedSwitcher(
          duration: animationDuration,
          child: isRunning
              ? Countdown(
                  controller: countdownController,
                  seconds: widget.seconds,
                  build: (BuildContext context, double time) => TextCustom(
                    time == 0
                        ? ''
                        : '(${Duration(seconds: time.toInt()).toString().substring(2, 7)})',
                    variant: AppTextVariant.subtitle1,
                    style: TextStyle(
                      color: widget.colorTimeDown ?? AppColors.white,
                    ),
                  ),
                  interval: const Duration(seconds: 1),
                  onFinished: () {
                    setState(() {});
                    controller.forward();
                  },
                )
              : null,
        )
      ],
    );
  }
}
