import 'package:digiresto/domain/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final String hintText;
  final TextStyle? hintStyle;
  final TextStyle? inputStyle;
  final Color? focusBorderColor;
  final Color? borderColor;
  final Color? fillColor;
  final TextInputType? keyboardType;
  final Widget? prefix;
  final bool? enabled;
  final int? minLines;
  final int? maxLines;
  final Function(String)? onChange;
  final List<TextInputFormatter>? inputFormatters;
  const CustomTextField({
    Key? key,
    this.controller,
    this.autovalidateMode,
    this.prefix,
    this.validator,
    this.hintText = '',
    this.hintStyle,
    this.inputStyle,
    this.focusBorderColor,
    this.keyboardType,
    this.onChange,
    this.inputFormatters,
    this.fillColor = AppColors.inputFillColor,
    this.borderColor,
    this.enabled,
    this.minLines,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      inputFormatters: inputFormatters,
      autovalidateMode: autovalidateMode,
      onChanged: onChange,
      controller: controller,
      minLines: minLines,
      maxLines: maxLines,
      style: inputStyle ?? Styles.inputStyle,
      decoration: InputDecoration(
        prefixIcon: prefix,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          borderSide:
              BorderSide(color: focusBorderColor ?? Colors.grey, width: 0.7),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          borderSide: BorderSide(
              color: borderColor ?? AppColors.inputFillColor, width: 0.7),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          borderSide: BorderSide(color: Colors.black, width: 0.7),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          borderSide: BorderSide(
              color: borderColor ?? AppColors.inputFillColor, width: 0.7),
        ),
        errorStyle: Styles.hintStyle.copyWith(color: AppColors.yellow),
        hintText: hintText,
        hintStyle: hintStyle ?? Styles.hintStyle,
        fillColor: fillColor,
        filled: true,
      ),
      keyboardType: keyboardType,
      autocorrect: false,
      validator: validator,
    );
  }
}
