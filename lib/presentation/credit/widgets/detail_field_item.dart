import 'package:digiresto/domain/core/theme.dart';
import 'package:flutter/material.dart';

class DetailFieldItem extends StatelessWidget {
  final String title;
  final String value;
  const DetailFieldItem({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Styles.creditDetailsLabelStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          value,
          style: Styles.creditDetailsStyle,
        ),
        Divider(
          thickness: 1,
          height: 30,
          color: AppColors.greyColor,
        ),
      ],
    );
  }
}
