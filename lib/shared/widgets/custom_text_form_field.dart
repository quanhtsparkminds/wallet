import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:myapp/commands/core/app_color.dart';
import 'package:myapp/commands/core/app_style.dart';
import 'package:myapp/commands/core/app_spacing.dart';
import 'package:myapp/shared/widgets/app_text/app_text.types.dart';
import 'package:myapp/validate_builder.dart';

class CustomTextFormField extends StatefulWidget {
  final String? labelText;
  final String name;
  final String? hintText;
  final bool obscureText;
  final BorderRadiusGeometry? borderRadius;
  final ValueChanged<String>? onSubmitted;
  final TextEditingController? controller;
  final AutovalidateMode? autovalidateMode;
  final GlobalKey<FormBuilderFieldState>? fieldKey;
  final int? maxLine;
  final int? minLine;
  final String? suffixText;
  final String? initialValue;
  final bool enabled;
  final bool? turnOffValidate;
  final TextInputType? keyboardType;
  final TextStyle? textStyle;
  final FontCustom fontCustom;
  final String? helperText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? backgroundColor;
  final Function(String?)? onChange;
  final Function()? onTap;
  final EdgeInsetsGeometry? padding;
  final bool? autofocus;
  final Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final String? textError;
  final List<CurrencyTextInputFormatter>? formatter;
  final bool? isFormText;
  final InputDecoration? inputDecoration;
  final Function()? onSuffixIconPressed;
  final bool? isObscureIcon;

  const CustomTextFormField(
      {Key? key,
      this.formatter,
      this.suffixText,
      this.autofocus,
      this.borderRadius,
      this.labelText,
      this.onChange,
      this.onSaved,
      this.validator,
      this.onTap,
      this.backgroundColor,
      this.controller,
      this.hintText,
      this.enabled = true,
      this.turnOffValidate = true,
      this.onSubmitted,
      this.obscureText = false,
      this.autovalidateMode,
      this.maxLine,
      this.minLine,
      this.keyboardType,
      this.suffixIcon,
      this.prefixIcon,
      this.padding,
      this.helperText,
      this.textError,
      this.initialValue,
      this.isFormText,
      this.fontCustom = FontCustom.robotoRegular,
      this.inputDecoration,
      this.isObscureIcon = false,
      this.textStyle,
      this.onSuffixIconPressed,
      this.fieldKey,
      required this.name})
      : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final ValueNotifier<String?> text = ValueNotifier<String?>(null);
  bool innerObscureText = true;

  @override
  void initState() {
    super.initState();
    text.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle inputMergedStyle =
        getAppTextStyleByVariant(AppTextVariant.input).merge(widget.textStyle);
    return GestureDetector(
      onTap: () {
        widget.onTap?.call();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            autovalidateMode:
                widget.autovalidateMode ?? AutovalidateMode.onUserInteraction,
            inputFormatters:
                (widget.formatter != null) ? widget.formatter : null,
            style: inputMergedStyle,
            controller: widget.controller,
            // name: widget.name,
            initialValue: widget.initialValue,
            enabled: widget.isFormText ?? widget.enabled,
            autofocus: widget.autofocus ?? false,
            obscureText: (innerObscureText && (widget.obscureText)),
            keyboardType: widget.keyboardType ?? TextInputType.text,
            maxLines: widget.maxLine ?? 1,
            minLines: widget.minLine ?? 1,
            onSaved: widget.onSaved,

            onChanged: (value) {
              text.value = value;
              widget.onChange?.call(value);
              widget.onChange != null ? widget.onChange!(value) : null;
            },
            // onSubmitted: onSubmitted,
            validator: widget.validator != null
                ? (value) {
                    if (context == scrollContext) {
                      scrollContext = null;
                    }
                    String? errMsg = widget.validator!(value!);
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
              widget.onTap?.call();
            },
            decoration: widget.inputDecoration
                    ?.applyDefaults(Theme.of(context).inputDecorationTheme) ??
                InputDecoration(
                  helperText: widget.helperText,
                  isDense: true,
                  border: InputBorder.none,
                  labelText: widget.labelText,
                  labelStyle: TextStyles.defaultReg,
                  hintStyle: TextStyles.defaultReg,
                  suffixText: widget.suffixText,
                  hintText: widget.hintText,
                  errorStyle: const TextStyle(color: Colors.red),
                  suffixIcon: widget.suffixIcon != null
                      ? IconButton(
                          onPressed: widget.onSuffixIconPressed,
                          icon: widget.suffixIcon!,
                        )
                      : widget.isObscureIcon ?? false
                          ? IconButton(
                              onPressed: () {
                                setState(() {
                                  innerObscureText = !innerObscureText;
                                });
                              },
                              splashColor: AppColors.transparent,
                              icon: Icon(
                                innerObscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                size: 24,
                                color: Colors.grey.withOpacity(.8),
                              ),
                            )
                          : ValueListenableBuilder<String?>(
                              valueListenable: text,
                              child: IconButton(
                                onPressed: () => widget.fieldKey?.currentState
                                    ?.didChange(null),
                                icon: Icon(
                                  Icons.close,
                                  size: AppSpacing.x20,
                                  color: AppColors.white,
                                ),
                              ),
                              builder: (context, value, child) =>
                                  (value?.isEmpty ?? true)
                                      ? const SizedBox()
                                      : child!,
                            ),
                  fillColor:
                      (widget.enabled) ? AppColors.grey3Dark : Colors.grey[100],
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                ).applyDefaults(Theme.of(context).inputDecorationTheme),
          ),
        ],
      ),
    );
  }
}
