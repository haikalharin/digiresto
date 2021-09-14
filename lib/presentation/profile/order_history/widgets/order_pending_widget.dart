import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/common_util.dart';
import 'package:digiresto/domain/profile/order_pending.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class OrderPendingWidget extends StatelessWidget {
  final OrderPending orderPending;
  const OrderPendingWidget(this.orderPending, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isVa = orderPending.billingDetail.vaNumber.isNotEmpty;
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(
              15,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        CommonUtils.dateFormat('dd MMMM yyyy, HH:mm',
                            orderPending.deviceTimestamp)!,
                        style: Styles.topUpDateStyle,
                      ),
                      Text(
                        orderPending.outlet.detail.name,
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
                        child: Text('Detail'),
                      ),
                      PopupMenuItem(
                        value: 2,
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
          Container(
            padding: EdgeInsets.all(8),
            width: double.infinity,
            margin: EdgeInsets.all(15),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFFFFE2E4),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Color(0xFFFFA5AA),
                width: 1,
              ),
            ),
            child: Text(
                'Bayar sebelum ${CommonUtils.dateFormat('dd MMMM yyyy, HH:mm', orderPending.billingDetail.expiresAt)}'),
          ),
          Padding(
            padding: EdgeInsets.all(
              15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (!isVa)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nama Bank',
                        style: Styles.topUpDetailsStyle.copyWith(
                          color: AppColors.greyColor1,
                        ),
                      ),
                      Text(
                        orderPending.billingDetail.bankName,
                        style: Styles.topUpDetailsStyle.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      isVa ? 'Virtual Account' : 'Nama Pemilik Rekening',
                      style: Styles.topUpDetailsStyle.copyWith(
                        color: AppColors.greyColor1,
                      ),
                    ),
                    Text(
                      isVa
                          ? orderPending.billingDetail.title
                          : orderPending.billingDetail.bankAccName,
                      style: Styles.topUpDetailsStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          isVa ? 'No Virtual Account' : 'No Rekening',
                          style: Styles.topUpDetailsStyle.copyWith(
                            color: AppColors.greyColor1,
                          ),
                        ),
                        Text(
                          isVa
                              ? orderPending.billingDetail.vaNumber
                              : orderPending.billingDetail.bankAccNo,
                          style: Styles.topUpDetailsStyle.copyWith(
                            color: AppColors.mainColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          Clipboard.setData(
                            ClipboardData(
                              text: orderPending.billingDetail.vaNumber,
                            ),
                          );
                          Get.snackbar(
                            'Success',
                            'Copied to clipboard !',
                            snackPosition: SnackPosition.BOTTOM,
                            duration: Duration(seconds: 2),
                          );
                        },
                        child: Ink(
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 30,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: AppColors.mainColor,
                              width: 1,
                            ),
                          ),
                          child: Text(
                            'Salin',
                            style: Styles.topUpDetailsStyle.copyWith(
                              color: AppColors.mainColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Pembayaran',
                          style: Styles.topUpDetailsStyle.copyWith(
                            color: AppColors.greyColor1,
                          ),
                        ),
                        Text(
                          isVa
                              ? CommonUtils.currencyFormat(double.tryParse(
                                      orderPending.billingDetail.amount) ??
                                  0)
                              : CommonUtils.currencyFormat(double.tryParse(
                                      orderPending
                                          .billingDetail.uniqueAmount) ??
                                  0),
                          style: Styles.topUpDetailsStyle.copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          Clipboard.setData(
                            ClipboardData(
                              text: '${orderPending.billingDetail.amount}',
                            ),
                          );
                          Get.snackbar(
                            'Success',
                            'Copied to clipboard !',
                            snackPosition: SnackPosition.BOTTOM,
                            duration: Duration(seconds: 2),
                          );
                        },
                        child: Ink(
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 30,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: AppColors.mainColor,
                              width: 1,
                            ),
                          ),
                          child: Text(
                            'Salin',
                            style: Styles.topUpDetailsStyle.copyWith(
                              color: AppColors.mainColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                if (!isVa)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.warning_rounded,
                        color: AppColors.mainColor,
                        size: 27,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Pastikan nominal sesuai hingga 3 digit terakhir',
                        style: Styles.topUpDetailsStyle.copyWith(
                          color: AppColors.mainColor,
                        ),
                      )
                    ],
                  ),
                SizedBox(
                  height: 15,
                ),
                CustomButton(
                  label: 'Lakukan Pembayaran',
                  onPressed: () {},
                  color: AppColors.mainColor,
                  fontColor: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
