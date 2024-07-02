import 'package:flutter/material.dart';
import 'package:myapp/constants/style_constant.dart';
import 'package:myapp/constants/styles.dart';
import 'package:myapp/validate_builder.dart';

class CustomFormComboboxButton extends StatelessWidget {
  final Function()? onTap;
  final TextEditingController? controller;
  final bool? enabled;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final String? hintText;
  const CustomFormComboboxButton(
      {Key? key,
      this.onTap,
      this.controller,
      this.enabled,
      this.validator,
      this.hintText,
      this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            autovalidateMode: AutovalidateMode.disabled,
            style: StyleConst.mediumStyle(
                color: Colors.black, decorationThickness: 0),
            controller: controller,
            enabled: enabled,
            // onSubmitted: onSubmitted,
            validator: validator != null
                ? (value) {
                    if (context == scrollContext) {
                      scrollContext = null;
                    }
                    String? errMsg = validator!(value!);
                    if (errMsg != null) {
                      Scrollable.ensureVisible(priorityContext(context),
                          // alignment: 0.0,
                          alignmentPolicy:
                              ScrollPositionAlignmentPolicy.keepVisibleAtStart,
                          duration: const Duration(milliseconds: 800));
                    }
                    return errMsg;
                  }
                : (value) => null,
            onTap: () {
              onTap?.call();
            },
            decoration: kDefaultInputDecoration.copyWith(
                isDense: true,
                border: InputBorder.none,
                labelStyle: TextStyles.defaultReg,
                hintStyle: TextStyles.defaultReg,
                hintText: hintText,
                errorStyle: TextStyle(color: Colors.red),
                suffixIcon: suffixIcon,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                )),
          ),
        ],
      ),
    );
  }
}
