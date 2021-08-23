import 'package:digiresto/domain/core/theme.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final String hintText;
  final TextStyle? hintStyle;
  final TextStyle? inputStyle;
  final Color? focusBorderColor;
  final TextInputType? keyboardType;
  final Widget? prefix;
  final Function(String)? onChange;
  const CustomTextField(
      {Key? key,
      this.controller,
      this.autovalidateMode,
      this.prefix,
      this.validator,
      this.hintText = '',
      this.hintStyle,
      this.inputStyle,
      this.focusBorderColor,
      this.keyboardType,
      this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: autovalidateMode,
      onChanged: onChange,
      controller: controller,
      style: inputStyle ?? Styles.inputStyle,
      decoration: InputDecoration(
        prefix: prefix,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          borderSide:
              BorderSide(color: focusBorderColor ?? Colors.grey, width: 0.7),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          borderSide: BorderSide(color: AppColors.inputFillColor, width: 0.7),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          borderSide: BorderSide(color: Colors.black, width: 0.7),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          borderSide: BorderSide(color: AppColors.inputFillColor, width: 0.7),
        ),
        errorStyle: Styles.hintStyle.copyWith(color: AppColors.yellow),
        hintText: hintText,
        hintStyle: hintStyle ?? Styles.hintStyle,
        fillColor: AppColors.inputFillColor,
        filled: true,
      ),
      keyboardType: keyboardType,
      autocorrect: false,
      validator: validator,
    );
  }
}
