import 'package:flutter/material.dart';

class TopBackgound extends StatelessWidget {
  final Color backgroundColor;
  const TopBackgound({
    Key? key,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).padding.top,
      color: backgroundColor,
    );
  }
}
