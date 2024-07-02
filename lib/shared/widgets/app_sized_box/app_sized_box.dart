import 'package:flutter/widgets.dart';
import 'package:myapp/shared/widgets/app_spacing.dart';

class AppSizedBox extends StatelessWidget {
  const AppSizedBox({super.key});
  static Widget square0 = const SizedBox.square(
    dimension: AppSpacing.x4 / 0,
  );
  static Widget square2 = const SizedBox.square(
    dimension: AppSpacing.x4 / 2,
  );

  static Widget square4 = const SizedBox.square(
    dimension: AppSpacing.x4,
  );

  static Widget square8 = const SizedBox.square(
    dimension: AppSpacing.x8,
  );

  static Widget square10 = const SizedBox.square(
    dimension: AppSpacing.x10,
  );

  static Widget square12 = const SizedBox.square(
    dimension: AppSpacing.x12,
  );

  static Widget square14 = const SizedBox.square(
    dimension: AppSpacing.x14,
  );

  static Widget square15 = const SizedBox.square(
    dimension: AppSpacing.x15,
  );

  static Widget square16 = const SizedBox.square(
    dimension: AppSpacing.x16,
  );

  static Widget square20 = const SizedBox.square(
    dimension: AppSpacing.x20,
  );

  static Widget square24 = const SizedBox.square(
    dimension: AppSpacing.x24,
  );

  static Widget square28 = const SizedBox.square(
    dimension: AppSpacing.x24 + AppSpacing.x4,
  );
  static Widget square30 = const SizedBox.square(
    dimension: AppSpacing.x30,
  );
  static Widget square32 = const SizedBox.square(
    dimension: AppSpacing.x32,
  );

  static Widget square36 = const SizedBox.square(
    dimension: AppSpacing.x36,
  );
  static Widget square40 = const SizedBox.square(
    dimension: AppSpacing.x40,
  );
  static Widget square48 = const SizedBox.square(
    dimension: AppSpacing.x48,
  );
  static Widget square60 = const SizedBox.square(
    dimension: AppSpacing.x60,
  );
  static Widget square100 = const SizedBox.square(
    dimension: AppSpacing.x100,
  );
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
