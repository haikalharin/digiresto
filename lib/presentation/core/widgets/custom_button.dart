import 'package:flutter/material.dart';
import 'package:digiresto/domain/core/theme.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final Color color;
  final Color fontColor;
  final Color borderColor;
  final Gradient? gradient;
  final double height;
  final double width;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final BorderRadius borderRadius;
  final Widget? child;
  final TextStyle? fontStyle;
  final double borderWidth;

  const CustomButton({
    Key? key,
    this.onPressed,
    this.label = 'Submit',
    this.color = AppColors.yellowButtonColor,
    this.fontColor = Colors.black,
    this.borderColor = Colors.transparent,
    this.gradient,
    this.height = 50,
    this.width = double.infinity,
    this.margin = EdgeInsets.zero,
    this.child,
    this.padding = EdgeInsets.zero,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(8),
    ),
    this.fontStyle,
    this.borderWidth = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: gradient,
        color: onPressed == null ? AppColors.greyColor2 : color,
        borderRadius: borderRadius,
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
      ),
      height: height,
      width: width,
      margin: margin,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: borderRadius,
          )),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
          padding: MaterialStateProperty.all(padding),
          overlayColor: color == Colors.white
              ? MaterialStateProperty.all(
                  AppColors.mainColor.withOpacity(0.1),
                )
              : null,
        ),
        onPressed: onPressed,
        child: child ??
            Text(
              label,
              style: fontStyle ??
                  Styles.buttonLabelStyle.copyWith(color: fontColor),
            ),
      ),
    );
  }
}
