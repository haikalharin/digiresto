import 'package:flutter/material.dart';
import 'package:digiresto/domain/core/theme.dart';

class CustomCheckBox extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final bool value;
  final void Function(bool?)? onChanged;
  final String label;
  const CustomCheckBox({
    Key? key,
    this.padding = EdgeInsets.zero,
    required this.value,
    required this.onChanged,
    this.label = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: value ? AppColors.yellow : Colors.white,
              borderRadius: BorderRadius.circular(3),
            ),
            width: 24,
            height: 24,
            child: Theme(
              data: ThemeData(unselectedWidgetColor: Colors.white),
              child: Checkbox(
                checkColor: AppColors.mainColor,
                activeColor: Colors.transparent,
                value: value,
                onChanged: onChanged,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Text(
              label,
              style: Styles.checkBoxLabelStyle.copyWith(height: 2),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
