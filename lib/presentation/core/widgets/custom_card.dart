import 'package:flutter/material.dart';
import 'package:digiresto/domain/core/theme.dart';

class CustomCard extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final Widget child;
  final Color color;

  const CustomCard({
    Key? key,
    this.padding = const EdgeInsets.all(defaulCardPadding),
    this.margin = const EdgeInsets.symmetric(horizontal: defaultMargin),
    this.child = const SizedBox(
      width: double.infinity,
    ),
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.05),
            spreadRadius: 4,
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }
}
