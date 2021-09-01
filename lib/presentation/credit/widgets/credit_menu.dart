import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/constants/dimens.dart';
import 'package:digiresto/domain/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreditAssetIcon {
  final String destination;
  CreditAssetIcon(this.destination);
  Map<String, String> assetsByDestination = {
    "TOP_UP_BANK": 'assets/credit_transfer.svg',
    "TOP_UP_VA": 'assets/credit_virtual_acc.svg'
  };

  String get asset =>
      assetsByDestination[destination] ?? 'assets/credit_transfer.svg';
}

class CreditMenu extends StatelessWidget {
  final void Function()? onTap;
  final String assetSvgIcon;
  final String label;
  const CreditMenu({
    Key? key,
    this.onTap,
    required this.assetSvgIcon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: 12,
          color: AppColors.dividerColor,
        ),
        InkWell(
          onTap: onTap,
          child: Ink(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: Dimens.defaultMargin,
              vertical: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                      child: SvgPicture.asset(assetSvgIcon),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      label,
                      style: Styles.creditMenuTitleStyle,
                    )
                  ],
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 30,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
