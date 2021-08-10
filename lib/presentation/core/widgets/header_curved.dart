import 'package:digiresto/domain/core/theme.dart';
import 'package:flutter/material.dart';

class HeaderCurvedContainer extends CustomPainter {
  final double height;
  final Color color;
  HeaderCurvedContainer({this.height = 120, this.color = mainColor});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = color;
    Path path = Path()
      ..relativeLineTo(0, height - 120)
      ..quadraticBezierTo(size.width / 2, height, size.width, height - 120)
      ..relativeLineTo(0, -height - 120)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class HeaderCurvedWidget extends StatelessWidget {
  final double height;
  final Color color;
  const HeaderCurvedWidget({
    Key? key,
    this.height = 120,
    this.color = mainColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: height,
      ),
      painter: HeaderCurvedContainer(
        height: height,
        color: color,
      ),
    );
  }
}
