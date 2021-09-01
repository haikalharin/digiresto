import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/presentation/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderOnProcessWidget extends StatelessWidget {
  const OrderOnProcessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      blurRadius: 2,
      spreadRadius: 2,
      offset: Offset(0, 1),
      shadowColor: AppColors.greyColor1,
      margin: EdgeInsets.symmetric(
        horizontal: Dimens.defaultMargin,
        vertical: Dimens.defaultMargin / 2,
      ),
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(
              15,
            ),
            child: Row(
              children: [
                SvgPicture.asset('assets/order_icon.svg'),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '31 Agustus',
                        style: Styles.topUpDateStyle,
                      ),
                      Text(
                        'Isi Saldo',
                        style: Styles.topUpDetailsStyle.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                PopupMenuButton(
                  child: Icon(
                    Icons.more_horiz,
                    size: 35,
                  ),
                  onSelected: (_) {},
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        value: 1,
                        child: Text('Batalkan'),
                      ),
                    ];
                  },
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.dividerColor,
            thickness: 1,
            height: 1,
          ),
          Padding(
            padding: EdgeInsets.all(
              15,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Kode Struk'),
                    Text('SOMDKNPI5KQ8'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tipe Order'),
                    Text('SOMDKNPI5KQ8'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Status Transaksi'),
                    Text('SOMDKNPI5KQ8'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total'),
                    Text('SOMDKNPI5KQ8'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
