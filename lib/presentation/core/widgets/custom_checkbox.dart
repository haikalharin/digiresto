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
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: value ? mainColor : greyColor,
              ),
              borderRadius: BorderRadius.circular(2),
            ),
            width: 24,
            height: 24,
            child: Theme(
              data: ThemeData(unselectedWidgetColor: Colors.white),
              child: Checkbox(
                checkColor: Colors.black,
                activeColor: Colors.transparent,
                value: value,
                onChanged: onChanged,
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            label,
            style: checkBoxLabelStyle,
          ),
        ],
      ),
    );
  }
}
