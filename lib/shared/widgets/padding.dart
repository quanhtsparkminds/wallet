import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:myapp/commands/core/app_spacing.dart';

EdgeInsets getScreenPadding(BuildContext context,
    {double padding = AppSpacing.x16}) {
  return EdgeInsets.all(padding).copyWith(
      bottom: (MediaQuery.of(context).viewInsets.bottom >
              (padding + MediaQuery.of(context).viewPadding.bottom)
          ? padding
          : max(padding, MediaQuery.of(context).viewPadding.bottom)));
}
