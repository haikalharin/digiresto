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

  const CustomButton({
    Key? key,
    this.onPressed,
    required this.label,
    this.color = AppColors.yellowButtonColor,
    this.fontColor = Colors.black,
    this.borderColor = Colors.transparent,
    this.gradient,
    this.height = 50,
    this.width = double.infinity,
    this.margin = EdgeInsets.zero,
    this.child,
    this.padding = EdgeInsets.zero,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
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
        ),
      ),
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
          padding: MaterialStateProperty.all(padding),
        ),
        onPressed: onPressed,
        child: child ??
            Text(
              label,
              style: Styles.buttonLabelStyle.copyWith(color: fontColor),
            ),
      ),
    );
  }
}
