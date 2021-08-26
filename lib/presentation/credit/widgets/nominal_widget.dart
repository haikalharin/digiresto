import 'package:digiresto/domain/core/theme.dart';
import 'package:flutter/material.dart';

class NominalWidget extends StatelessWidget {
  final void Function()? onTap;
  final String nominal;

  const NominalWidget({
    Key? key,
    this.onTap,
    required this.nominal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        padding: EdgeInsets.all(Dimens.defaultMargin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: AppColors.mainColor,
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Rp',
              style: Styles.creditCurrencyStyle.copyWith(height: 1.8),
            ),
            Text(
              nominal,
              style: Styles.creditNominalStyle.copyWith(
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
