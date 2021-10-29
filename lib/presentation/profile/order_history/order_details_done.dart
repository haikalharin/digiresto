import 'package:digiresto/application/order/bloc/order_bloc.dart';
import 'package:digiresto/application/profile/order_details/order_details_bloc.dart';
import 'package:digiresto/application/profile/order_details/rating_controller.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/common_util.dart';
import 'package:digiresto/domain/entity/order/param/create_cart_session_param.dart';
import 'package:digiresto/domain/profile/order_history_details.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/core/widgets/custom_textfield.dart';
import 'package:digiresto/presentation/order/order_cart.dart';
import 'package:digiresto/presentation/profile/order_history/widgets/delivery_status_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class OrderDetailsDone extends StatelessWidget {
  final OrderHistoryDetails orderDetails;
  const OrderDetailsDone(this.orderDetails, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _ratingController = Get.put(RatingController(), permanent: false);
    late final _bloc = BlocProvider.of<OrderDetailsBloc>(context);
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        if (orderDetails.rating.rating == null &&
            (orderDetails.status == 'done' ||
                orderDetails.status == 'auto_done'))
          Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  thickness: 12,
                  color: AppColors.dividerColor,
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Kasih rating untuk pesananmu!',
                      style: Styles.ratingLabelStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    5,
                    (index) => Padding(
                      padding: EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: () => _ratingController.changeRating(index + 1),
                        child: SvgPicture.asset(
                          'assets/star.svg',
                          color: _ratingController.rating.value > index
                              ? null
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 12,
                  color: AppColors.dividerColor,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimens.defaultMargin + 10,
                    vertical: 15,
                  ),
                  child: Text(
                    I10n.current.review_title,
                    style: Styles.ratingLabelStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimens.dialogMargin,
                  ),
                  child: CustomTextField(
                    controller: _ratingController.reviewCtrl,
                    minLines: 3,
                    maxLines: 3,
                    borderColor: Colors.grey,
                    fillColor: Colors.white,
                    hintText: I10n.current.review_hint,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimens.dialogMargin,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomButton(
                        onPressed: _ratingController.allValid()
                            ? () => _bloc.add(
                                  OrderDetailsEvent.ratingReviewSubmitted(
                                    receiptCode: orderDetails.receiptCode,
                                    rating: _ratingController.rating.value,
                                    review: _ratingController.review.value,
                                  ),
                                )
                            : null,
                        color: AppColors.mainColor,
                        fontColor: Colors.white,
                        width: 100,
                        height: 40,
                        label: 'Kirim',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        Divider(
          thickness: 12,
          color: AppColors.dividerColor,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Order Resto ${orderDetails.outlet.detail.name}',
          style: Styles.outletNameStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Receipt Code ${orderDetails.receiptCode}',
          style: Styles.receiptCodeStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          '${CommonUtils.dateFormat('dd MMM yyyy, HH:mm:ss', orderDetails.deviceTimestamp)}',
          style: Styles.receiptCodeStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
        Divider(
          height: 15,
          thickness: 15,
          color: AppColors.dividerColor,
        ),
        Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tipe Order',
                    style: Styles.menuItemLabelStyle,
                  ),
                  Text(
                    orderDetails.salesType,
                    style: Styles.menuItemPriceStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Status Transaksi',
                    style: Styles.menuItemLabelStyle,
                  ),
                  Text(
                    orderDetails.status,
                    style: Styles.menuItemPriceStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Daftar Order',
                    style: Styles.menuItemLabelStyle,
                  ),
                ],
              ),
              Divider(
                color: AppColors.greyColor,
                thickness: 1,
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sub Total',
                    style: Styles.menuItemLabelStyle,
                  ),
                  Text(
                    CommonUtils.currencyFormat(
                        orderDetails.itemTotalAmount.toDouble()),
                    style: Styles.menuItemPriceStyle,
                  ),
                ],
              ),
              ...orderDetails.promos
                  .map((promo) => Column(
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                promo.title,
                                style: Styles.menuItemLabelStyle,
                              ),
                              Text(
                                '- ${CommonUtils.currencyFormat(promo.amount.toDouble())}',
                                style: Styles.menuItemPriceStyle,
                              ),
                            ],
                          ),
                        ],
                      ))
                  .toList(),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery',
                    style: Styles.menuItemLabelStyle,
                  ),
                  Text(
                    CommonUtils.currencyFormat(
                        orderDetails.deliveryAmount.toDouble()),
                    style: Styles.menuItemPriceStyle,
                  ),
                ],
              ),
              Divider(
                color: AppColors.greyColor,
                thickness: 1,
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    I10n.current.billing_total_payment,
                    style: Styles.menuItemLabelStyle
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    CommonUtils.currencyFormat(
                        orderDetails.totalPayment.toDouble()),
                    style: Styles.menuItemPriceStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          height: 15,
          thickness: 15,
          color: AppColors.dividerColor,
        ),
        if (orderDetails.delivery != null)
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  I10n.current.history_detail_delivery_address,
                  style: Styles.menuItemLabelStyle
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  orderDetails.delivery?.address ?? '',
                  style: Styles.menuItemLabelStyle,
                ),
              ],
            ),
          ),
        Divider(
          height: 15,
          thickness: 15,
          color: AppColors.dividerColor,
        ),
        if (orderDetails.delivery != null &&
            (orderDetails.status != 'done' &&
                orderDetails.status != 'auto_done'))
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Status Pengiriman',
                  style: Styles.menuItemLabelStyle
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                if (orderDetails.deliveryDetail.status?.length == 0)
                  Text(
                    'Menunggu driver',
                    style: Styles.menuItemLabelStyle,
                  ),
                Text(orderDetails.deliveryDetail.driverName ?? ''),
                ...orderDetails.deliveryDetail.status!
                    .map((status) => DeliveryStatusWidget(status))
                    .toList(),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        if (orderDetails.status == 'done' || orderDetails.status == 'auto_done')
          BlocListener<OrderBloc, OrderState>(
            listener: (context, state) {
              state.maybeMap(
                  orElse: () {},
                  reorderCartSuccess: (_state) {
                    Get.to(OrderCartScreen());
                  });
            },
            child: CustomButton(
              onPressed: () {
                final List<CreateUpdateCartSessionItemParam> items =
                    orderDetails.items
                        .map((i) => CreateUpdateCartSessionItemParam(
                            modifiers: [],
                            note: i.note,
                            productId: i.productId.toInt(),
                            qty: i.qty.toInt()))
                        .toList();
                Get.context!.read<OrderBloc>().add(
                      OrderEvent.reorderCart(
                        CreateCartSessionParam(
                          queryString: CreateCartSessionQueryParam(),
                          body: CreateCartSessionBodyParam(
                            customerCarColor: orderDetails.customerCarColor,
                            customerCarType: orderDetails.customerCarType,
                            customerCarNumber: orderDetails.customerCarNumber,
                            customerName: orderDetails.customerName,
                            customerNote: orderDetails.customerNote,
                            customerPax: orderDetails.customerPax,
                            customerPhone: orderDetails.customerPhone,
                            customerSmoking: orderDetails.customerSmoking,
                            customerTableNumber:
                                orderDetails.customerTableNumber,
                            eta: orderDetails.eta,
                            outletName: orderDetails.outletName,
                            receiptCode: orderDetails.receiptCode,
                            salesType:
                                orderDetails.outlet.orderMethod.defaultList[0],
                            items: items,
                          ),
                        ),
                        int.parse(orderDetails.outlet.outletId),
                      ),
                    );
                // orderDetails.items.map((menuItem) {
                //   Get.context!.read<OrderBloc>().add(
                //         OrderEvent.addCart(
                //             CreateUpdateCartSessionItemParam(
                //                 modifiers: [],
                //                 note: menuItem.note,
                //                 productId: menuItem.productId.toInt(),
                //                 qty: menuItem.qty.toInt()),
                //             DetailOutletDataResponse(),
                //             orderDetails.salesType),
                //       );
                // });
              },
              margin: EdgeInsets.symmetric(
                horizontal: Dimens.defaultMargin,
                vertical: 30,
              ),
              borderRadius: BorderRadius.circular(30),
              color: AppColors.mainColor,
              label: 'Beli Lagi',
              fontColor: Colors.white,
            ),
          ),
      ],
    );
  }
}
