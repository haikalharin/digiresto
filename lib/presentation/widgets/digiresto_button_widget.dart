import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/constants/font.dart';
import 'package:flutter/material.dart';

class DigirestoButtonNormal extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final Color? borderColor;
  final Color? buttonColor;

  const DigirestoButtonNormal({
    Key? key,
    required this.text,
    required this.onPressed,
    this.borderColor,
    this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: AppFont.textBlack14Bold.copyWith(
              color: buttonColor.hashCode != borderColor.hashCode
                  ? (borderColor ?? AppColors.white)
                  : AppColors.white),
        ),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            primary: buttonColor ?? AppColors.red),
      ),
    );
  }
}

class DigirestoButtonOutline extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final Color? borderColor;
  final Color? buttonColor;

  const DigirestoButtonOutline({
    Key? key,
    required this.text,
    required this.onPressed,
    this.borderColor,
    this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: AppFont.textBlack14Bold.copyWith(
              color: buttonColor.hashCode != borderColor.hashCode
                  ? (borderColor ?? AppColors.red)
                  : AppColors.red),
        ),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                side: BorderSide(color: borderColor ?? AppColors.red),
                borderRadius: BorderRadius.circular(6)),
            primary: buttonColor ?? AppColors.white),
      ),
    );
  }
}
