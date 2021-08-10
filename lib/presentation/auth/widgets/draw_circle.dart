import 'package:digiresto/domain/core/theme.dart';
import 'package:flutter/material.dart';

class DrawerCircle extends CustomPainter {
  Paint? _paint;
  final Color color;
  final double radius;

  DrawerCircle({
    required this.color,
    required this.radius,
  }) {
    _paint = Paint()
      ..color = this.color
      ..strokeWidth = 10.0
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(0.0, 0.0), 8.0, _paint!);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class DrawCircle extends StatelessWidget {
  final Color color;
  final double radius;
  const DrawCircle({
    Key? key,
    this.color = AppColors.mainColor,
    this.radius = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DrawerCircle(
        color: color,
        radius: radius,
      ),
    );
  }
}
