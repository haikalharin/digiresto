import 'package:digiresto/domain/core/constants/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CheckList extends StatelessWidget {
  final int value;
  final int groupValue;
  final String label;
  const CheckList({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isSelected = value == groupValue;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(Dimens.defaultMargin),
      child: Row(
        children: [
          SvgPicture.asset(
            isSelected
                ? 'assets/checklist_selected.svg'
                : 'assets/checklist.svg',
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(label),
          )
        ],
      ),
    );
  }
}
