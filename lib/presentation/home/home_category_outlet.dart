import 'package:digiresto/application/home/home_category_oulet_view_controller.dart';
import 'package:digiresto/application/order/bloc/order_bloc.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/order/home_order_view_argument.dart';
import 'package:digiresto/domain/order/order_detail_view_argument.dart';
import 'package:digiresto/presentation/core/widgets/loading.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:digiresto/presentation/widgets/list/nearby_outlet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class HomeCategoryOutletScreen
    extends GetView<HomeCategoryOutletViewController> {
  @override
  Widget build(BuildContext context) {
    HomeOrderViewArgument args = Get.arguments as HomeOrderViewArgument;
    Get.put(HomeCategoryOutletViewController());
    controller.args.value = args;
    controller.setCategoryByTitle();
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
        title: Text(controller.args.value!.title,
            style: AppFont.textBlack15Bold, textAlign: TextAlign.center),
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

class _BodyCategoryWidget extends GetView<HomeCategoryOutletViewController> {
  void loadMoreOutletByLocation() {
    controller.getOutletByLocation(
        controller.searchController.text, controller.page.value + 1);
  }

  Widget _search() {
    return Theme(
      data: Theme.of(Get.context!).copyWith(
        primaryColor: Colors.grey,
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 5),
        child: TextField(
            textInputAction: TextInputAction.search,
            onSubmitted: (value) {
              controller.page.value = 1;
              controller.getOutletByLocation(
                  controller.searchController.text, 1);
            },
            controller: controller.searchController,
            onTap: () {
              print("open popup");
            },
            style: TextStyle(
              fontSize: 14.0,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.greyInput,
              contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
              prefixIcon: Icon(Icons.search),
              hintText: controller.getLabelSearchHint(),
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.greyInput, width: 32.0),
                  borderRadius: BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.greyInput, width: 32.0),
                  borderRadius: BorderRadius.circular(10)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: Colors.white),
              ),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    controller.getOutletByLocation("", 1);
    return BlocConsumer<OrderBloc, OrderState>(
      listener: (context, state) {
        Loading.dismiss();
        state.maybeMap(
            getOutletByCategorySuccess: (r) {
              print(r.response);
              if (r.response.isNotEmpty) {
                controller.listOutlet.addAll(r.response);
              }
            },
            loadFailure: (e) {},
            orElse: () {});
      },
      builder: (context, state) {
        return StackWithProgress(
          isLoading: state.maybeMap(
            orElse: () => false,
            loadInProgress: (_) => true,
          ),
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
                _search(),
                Obx(() {
                  return (controller.listOutlet.length > 0)
                      ? ListCategoryOutletWidget(
                          loadMoreAction: loadMoreOutletByLocation,
                          runAction: (param) {
                            Get.toNamed(Routers.orderDetailOutlet,
                                arguments: OrderDetailViewArgument(
                                    param.id, param.merchantId));
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
