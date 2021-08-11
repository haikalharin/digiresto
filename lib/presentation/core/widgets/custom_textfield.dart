import 'package:digiresto/domain/core/theme.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final String hintText;
  final TextInputType? keyboardType;
  const CustomTextField({
    Key? key,
    this.controller,
    this.autovalidateMode,
    this.validator,
    this.hintText = '',
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: autovalidateMode,
      controller: controller,
      style: Styles.inputStyle,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          borderSide: BorderSide(color: Colors.grey, width: 0.7),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          borderSide: BorderSide(color: AppColors.inputFillColor, width: 0.7),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          borderSide: BorderSide(color: Colors.red, width: 0.7),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          borderSide: BorderSide(color: AppColors.inputFillColor, width: 0.7),
        ),
        hintText: hintText,
        hintStyle: Styles.hintStyle,
        fillColor: AppColors.inputFillColor,
        filled: true,
      ),
      keyboardType: keyboardType,
      autocorrect: false,
      validator: validator,
    );
  }
}
