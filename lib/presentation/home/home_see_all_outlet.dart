import 'package:digiresto/application/home/home_see_all_outlet_view_controller.dart';
import 'package:digiresto/application/order/bloc/order_bloc.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/order/home_see_all_outlet_view_argument.dart';
import 'package:digiresto/domain/order/order_detail_view_argument.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';

import 'package:digiresto/presentation/router/router.dart';
import 'package:digiresto/presentation/home_new/dynamic_menu/widgets/listview_outlet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class HomeSeeAllOutlet extends GetView<HomeSeeAllOutletViewController> {
  @override
  Widget build(BuildContext context) {
    final i10n = I10n.of(context);
    HomeSeeAllOutletViewArgument args =
        Get.arguments as HomeSeeAllOutletViewArgument;
    Get.put(HomeSeeAllOutletViewController());
    controller.args.value = args;
    controller.merchantId.value = controller.args.value!.data.merchantId;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: new Icon(Icons.arrow_back_outlined,
                color: Colors.black, size: 28.0),
            onPressed: () {
              //getOutletByLocation();
              Get.back();
            }),
        title: Column(
          children: [
            Text(i10n.outlet_list_title,
                style: AppFont.textBlack15Bold, textAlign: TextAlign.center),
            Text(controller.args.value!.data.merchantName,
                style: AppFont.textBlack13Regular, textAlign: TextAlign.center)
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Expanded(child: _BodyCategoryWidget())],
        ),
      ),
    );
  }
}

class _BodyCategoryWidget extends GetView<HomeSeeAllOutletViewController> {
  void loadMoreOutletByLocation() {
    controller.getOutletByLocation(
        controller.searchController.text, controller.page.value + 1);
  }

  void onRefresh() {
    controller.page.value = 1;
    controller.listOutlet.clear();
    controller.getOutletByLocation(controller.searchController.text, 1);
  }

  // Widget _search() {
  //   return Theme(
  //     data: Theme.of(Get.context!).copyWith(
  //       primaryColor: Colors.grey,
  //     ),
  //     child: Container(
  //       padding: const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 5),
  //       child: TextField(
  //           textInputAction: TextInputAction.search,
  //           onSubmitted: (value) {
  //             getOutletByLocation(searchController.text, 1);
  //           },
  //           controller: searchController,
  //           onTap: () {
  //             print("open popup");
  //           },
  //           style: TextStyle(
  //             fontSize: 14.0,
  //           ),
  //           decoration: InputDecoration(
  //             filled: true,
  //             fillColor: AppColors.greyInput,
  //             contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
  //             prefixIcon: Icon(Icons.search),
  //             hintText: "Temukan resto favorit anda",
  //             border: OutlineInputBorder(
  //                 borderSide:
  //                     BorderSide(color: AppColors.greyInput, width: 32.0),
  //                 borderRadius: BorderRadius.circular(10)),
  //             focusedBorder: OutlineInputBorder(
  //                 borderSide:
  //                     BorderSide(color: AppColors.greyInput, width: 32.0),
  //                 borderRadius: BorderRadius.circular(10)),
  //             enabledBorder: OutlineInputBorder(
  //               borderRadius: BorderRadius.all(Radius.circular(10)),
  //               borderSide: BorderSide(width: 1, color: Colors.white),
  //             ),
  //           )),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    loadMoreOutletByLocation();
    return BlocConsumer<OrderBloc, OrderState>(
      listener: (context, state) {
        state.maybeMap(
            getOutletByMerchantSuccess: (r) {
              print(r.response);
              controller.listOutlet.value = r.response;
            },
            loadFailure: (e) {},
            orElse: () {});
      },
      builder: (context, state) {
        return StackWithProgress(
          isLoading:
              state.maybeWhen(orElse: () => false, loadInProgress: () => true),
          children: [
            Column(
              children: [
                Container(
                  height: 10,
                  decoration: BoxDecoration(
                    color: AppColors.grey[50],
                    borderRadius: BorderRadius.circular(0),
                    border: Border.all(
                      color: Colors.black12,
                      width: 0.5,
                    ),
                  ),
                ),
                //_search(),
                Obx(() {
                  return (controller.listOutlet.length > 0)
                      ? ListviewOutletWidget(
                          loadMoreAction: loadMoreOutletByLocation,
                          onRefresh: onRefresh,
                          runAction: (param) {
                            Get.toNamed(Routers.orderDetailOutlet,
                                    arguments: OrderDetailViewArgument(
                                        param.id, param.merchantId))
                                ?.then((value) => onRefresh());
                          },
                          height: MediaQuery.of(context).size.height / 1.3,
                          data: controller.listOutlet,
                          scrollDirection: Axis.vertical,
                        )
                      : Container();
                })
              ],
            ),
          ],
        );
      },
    );
  }
}
