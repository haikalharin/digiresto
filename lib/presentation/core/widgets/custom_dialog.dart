import 'package:digiresto/domain/core/theme.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final Color backgroundColor;
  final Widget content;
  final BorderRadius borderRadius;

  const CustomDialog({
    Key? key,
    required this.content,
    this.backgroundColor = AppColors.mainColor,
    this.borderRadius =
        const BorderRadius.all(Radius.circular(Dimens.dialogBorderRadius)),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: borderRadius,
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
