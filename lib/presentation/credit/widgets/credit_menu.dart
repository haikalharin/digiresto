import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/constants/dimens.dart';
import 'package:digiresto/domain/core/constants/styles.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreditByDestination {
  final String destination;
  CreditByDestination(this.destination);
  Map<String, String> assetsByDestination = {
    "TOP_UP_BANK": 'assets/credit_transfer.svg',
    "TOP_UP_VA": 'assets/credit_virtual_acc.svg'
  };

  Map<String, String> titleByDestination = {
    "TOP_UP_BANK": I10n.current.credit_fund_transfer,
    "TOP_UP_VA": 'Virtual Account',
  };

  String get asset =>
      assetsByDestination[destination] ?? 'assets/credit_transfer.svg';
  String get title => titleByDestination[destination] ?? '';
}

class CreditMenu extends StatelessWidget {
  final void Function()? onTap;
  final String assetSvgIcon;
  final String label;
  final int badgeCount;
  const CreditMenu({
    Key? key,
    this.onTap,
    required this.assetSvgIcon,
    required this.label,
    this.badgeCount = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: 8,
          color: AppColors.dividerColor,
        ),
        InkWell(
          onTap: onTap,
          child: Ink(
            width: double.infinity,
            padding: EdgeInsets.all(
              Dimens.defaultMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
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
                ),
                if (badgeCount > 0)
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppColors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      badgeCount.toString(),
                      style: Styles.badgeContentStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
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
