import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/constants/font_family.dart';

class TopBackgound extends StatelessWidget {
  final Color backgroundColor;
  const TopBackgound({
    Key key,
   this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height/25,
        color: AppColors.red,
  );
  }
}
