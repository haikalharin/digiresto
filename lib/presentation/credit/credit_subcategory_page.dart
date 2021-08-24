import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/credit/top_up_method.dart';
import 'package:digiresto/presentation/core/widgets/custom_scafold.dart';
import 'package:digiresto/presentation/credit/widgets/choose_bank_widget.dart';
import 'package:flutter/material.dart';

class CreditSubCategoryPage extends StatelessWidget {
  final TopUpMethod topUpMethod;
  const CreditSubCategoryPage(this.topUpMethod, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScafold(
      showBackButton: true,
      title: 'Isi saldo',
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
                  topUpMethod.title,
                  style: Styles.creditTopupTitleStyle,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Pilih Bank yang dituju',
                  style: Styles.creditMenuSubtitleStyle,
                ),
                SizedBox(
                  height: 20,
                ),
                ...topUpMethod.subCategory
                    .map(
                      (bankItem) => bankItem.isEnable
                          ? ChooseBankWidget(bankItem, topUpMethod.destination)
                          : SizedBox(),
                    )
                    .toList()
              ],
            ),
          )
        ],
      ),
    );
  }
}
