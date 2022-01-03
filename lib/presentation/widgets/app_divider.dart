import 'package:digiresto/domain/core/theme.dart';
import 'package:flutter/material.dart';

class AppDivider {
  AppDivider._();
  static Widget normal = Divider(
    indent: 16,
    endIndent: 16,
    height: 1.0,
    color: AppColors.greyDivider,
  );
}
