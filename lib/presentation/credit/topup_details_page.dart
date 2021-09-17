import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/credit/top_up_bank_details.dart';
import 'package:digiresto/domain/credit/top_up_va_details.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/custom_scafold.dart';
import 'package:digiresto/presentation/credit/widgets/bank_details_widget.dart';
import 'package:digiresto/presentation/credit/widgets/va_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

enum TopUpDetailsType {
  TOP_UP_VA,
  TOP_UP_BANK,
}

class TopUpDetailsPage extends StatelessWidget {
  final TopUpVADetails? topUpVADetails;
  final TopUpBankDetails? topUpBankDetails;
  final TopUpDetailsType type;
  const TopUpDetailsPage(
    this.type, {
    this.topUpVADetails,
    this.topUpBankDetails,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    I10n i10n = I10n.of(context);

    return CustomScafold(
      suffixWidget: GestureDetector(
        onTap: () {
          Get.back();
          Get.back();
        },
        child: Text(
          i10n.cart_done,
          style: Styles.creditLabelStyle,
        ),
      ),
      title: i10n.topup_title,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Divider(
            thickness: 12,
            color: AppColors.dividerColor,
          ),
          Padding(
            padding: EdgeInsets.all(Dimens.defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  i10n.topup_info_transfer,
                  style: Styles.creditTopupTitleStyle,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  i10n.billing_desc,
                  style: Styles.creditMenuSubtitleStyle,
                ),
                SizedBox(
                  height: 30,
                ),
                if (type == TopUpDetailsType.TOP_UP_BANK)
                  BankDetailWidget(topUpBankDetails!),
                if (type == TopUpDetailsType.TOP_UP_VA)
                  VADetailsWidget(topUpVADetails!),
              ],
            ),
          )
        ],
      ),
    );
  }
}
