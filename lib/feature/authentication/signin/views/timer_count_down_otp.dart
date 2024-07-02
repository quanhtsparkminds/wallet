import 'package:flutter/material.dart';
import 'package:myapp/commands/core/app_string.dart';
import 'package:myapp/constants/app_color.dart';
import 'package:myapp/feature/authentication/signin/login_cubit/login_cubit.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

Widget otpCountDown(LoginCubit bloc, CountdownController countController) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        AppString.timeTxt,
        style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: 13,
          fontWeight: FontWeight.w600,
        ),
      ),
      Countdown(
        controller: countController,
        seconds: 60,
        build: (_, double time) => Text(
          time.toStringAsFixed(0),
          style: const TextStyle(
            color: AppColors.redorange,
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
        ),
        onFinished: () {
          bloc.countdownStartSink.add(false);
        },
      ),
      const Text(
        AppString.secondText,
        style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: 13,
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  );
  // });
}
