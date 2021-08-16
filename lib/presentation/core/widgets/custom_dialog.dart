import 'package:digiresto/domain/core/theme.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final Color backgroundColor;
  final Widget content;

  const CustomDialog({
    Key? key,
    required this.content,
    this.backgroundColor = AppColors.mainColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimens.dialogBorderRadius),
            color: backgroundColor,
          ),
          padding: EdgeInsets.all(Dimens.dialogPadding),
          margin: EdgeInsets.all(Dimens.dialogMargin),
          child: Material(
            color: Colors.transparent,
            child: content,
          ),
        ),
      ),
    );
  }
}
