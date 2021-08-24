import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/credit/top_up_method.dart';
import 'package:digiresto/presentation/credit/topup_credit_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ChooseBankWidget extends StatelessWidget {
  final TopUpSubCategory bankItem;
  final String destination;
  const ChooseBankWidget(this.bankItem, this.destination, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: InkWell(
        onTap: () => Get.to(TopUpCreditPage(bankItem, destination)),
        borderRadius: BorderRadius.circular(10),
        child: Ink(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.mainColor,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 14,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                bankItem.title,
                style: Styles.creditMenuTitleStyle.copyWith(
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.arrow_forward_rounded,
                color: Colors.white,
                size: 27,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
