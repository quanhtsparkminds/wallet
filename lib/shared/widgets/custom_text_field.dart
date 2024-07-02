//import '../../configs/export_config.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:myapp/commands/core/app_color.dart';
import 'package:myapp/commands/core/app_style.dart';

///example
//        WidgetTextField(
//                 controller: TextEditingController(),
//                 hintText: "Nhập số điện thoại",
//               ),
class CustomTextField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final bool? obscureText;
  final BorderRadiusGeometry? borderRadius;
  final ValueChanged<String>? onSubmitted;
  final TextEditingController controller;
  final int? maxLine;
  final int? minLine;
  final bool? enabled;
  final bool? turnOffValidate;
  final TextInputType? keyboardType;
  final String? helperText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? backgroundColor;
  final Function(String)? onChange;
  final Function()? onTap;
  final EdgeInsetsGeometry? padding;
  final bool? autofocus;
  final String? Function(String?)? validator;
  final String? textError;
  final List<CurrencyTextInputFormatter>? formatter;

  CustomTextField(
      {Key? key,
      this.formatter,
      this.autofocus,
      this.borderRadius,
      this.labelText,
      this.onChange,
      this.validator,
      this.onTap,
      this.backgroundColor,
      required this.controller,
      this.hintText,
      this.enabled,
      this.turnOffValidate = true,
      this.onSubmitted,
      this.obscureText,
      this.maxLine,
      this.minLine,
      this.keyboardType,
      this.suffixIcon,
      this.prefixIcon,
      this.padding,
      this.helperText,
      this.textError})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? errorText;
    Color borderColor = AppColors.borderInputColor;

    if (textError != null && textError!.isNotEmpty) {
      borderColor = Colors.red;
      errorText = textError;
    } else {
      if ((controller.text.isEmpty) && turnOffValidate == false) {
        errorText = textError ?? "";
        borderColor = Colors.red;
      }
    }
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: borderRadius ?? BorderRadius.circular(10),
                border: Border.all(color: borderColor),
                color: backgroundColor ?? Colors.white),
            padding: padding ??
                const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                prefixIcon ?? const SizedBox(),
                Expanded(
                  child: TextField(
                    inputFormatters: (formatter != null) ? formatter : null,
                    controller: controller,
                    enabled: enabled,
                    autofocus: autofocus ?? false,
                    obscureText: obscureText ?? false,
                    style: TextStyles.defaultReg.copyWith(color: Colors.black),
                    keyboardType: keyboardType ?? TextInputType.text,
                    maxLines: maxLine ?? 1,
                    minLines: minLine ?? 1,
                    onChanged: (value) {
                      onChange?.call(value);
                    },
                    onSubmitted: onSubmitted,
                    // validator: validator != null
                    //     ? (value) {
                    //         if (context == scrollContext) {
                    //           scrollContext = null;
                    //         }
                    //         String? errMsg = validator?.call(value!);
                    //         if (errMsg != null) {
                    //           Scrollable.ensureVisible(priorityContext(context),
                    //               // alignment: 0.0,
                    //               alignmentPolicy: ScrollPositionAlignmentPolicy
                    //                   .keepVisibleAtStart,
                    //               duration: const Duration(milliseconds: 800));
                    //         }
                    //         return errMsg;
                    //       }
                    //     : (value) => null,
                    onTap: () {
                      onTap?.call();
                    },
                    decoration: InputDecoration(
                      helperText: helperText,
                      // contentPadding: EdgeInsets.zero,
                      isDense: true,
                      border: InputBorder.none,
                      labelText: labelText,
                      labelStyle: TextStyles.defaultReg,
                      hintStyle: TextStyles.defaultReg,
                      hintText: hintText,
                    ),
                  ),
                ),
                suffixIcon ?? const SizedBox()
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              errorText != null && errorText.isNotEmpty
                  ? Text(errorText, style: TextStyles.defaultError)
                  : const SizedBox(
                      height: 20,
                    ),
            ],
          )
        ],
      ),
    );
  }
}
