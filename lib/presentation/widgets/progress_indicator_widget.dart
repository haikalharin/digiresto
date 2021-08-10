import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomProgressIndicatorWidget extends StatelessWidget {
  const CustomProgressIndicatorWidget({Key? key, this.size = 25})
      : super(key: key);
  final double size;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.all(2),
        child: CircularProgressIndicator(
          strokeWidth: 3.0,
          valueColor: AlwaysStoppedAnimation(AppColors.redYoung),
        ),
        height: size,
        width: size,
      ),
    );
  }
}
