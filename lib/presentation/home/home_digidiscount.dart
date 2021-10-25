import 'package:digiresto/application/home/home_digidiscount_oulet_view_controller.dart';
import 'package:digiresto/application/order/bloc/order_bloc.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/order/home_order_view_argument.dart';
import 'package:digiresto/domain/order/order_detail_view_argument.dart';
import 'package:digiresto/presentation/core/widgets/loading.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:digiresto/presentation/widgets/list/digidiscount_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class HomeDigidiscountScreen
    extends GetView<HomeDigidiscountOutletViewController> {
  goBack(BuildContext context) {
    Get.back();
  }

  Widget _search() {
    return Theme(
      data: Theme.of(Get.context!).copyWith(
        primaryColor: Colors.grey,
      ),
      child: Container(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
        child: TextField(
            textInputAction: TextInputAction.search,
            onSubmitted: (value) {
              controller.listPromoOutlet.clear();
              controller.page.value = 1;
              controller.getPromoOutlet(controller.searchController.text, 1);
            },
            controller: controller.searchController,
            readOnly: false,
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
              hintText: "Temukan resto favorit anda",
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
    Get.put(HomeDigidiscountOutletViewController());
    controller.getPromoOutlet("", 1);
    HomeOrderViewArgument args = Get.arguments as HomeOrderViewArgument;
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
        title: Text(
          args.title,
          style: AppFont.textBlack15Bold,
          textAlign: TextAlign.center,
        ),
      ),
      body: BlocConsumer<OrderBloc, OrderState>(
        listener: (context, state) {
          state.maybeMap(
              getDigiDiscountOutletSuccess: (r) {
                controller.listPromoOutlet.value = r.response;
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
              Container(
                color: Colors.white,
                //padding: EdgeInsets.only(top:25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                    Expanded(
                      child: ListDigidiscountWidget(
                        runAction: (param) {
                          //merchant id set to empty, cause in response api not have valid merchant id
                          Get.toNamed(Routers.orderDetailOutlet,
                              arguments:
                                  OrderDetailViewArgument(param.outletId, ""));
                        },
                        height: MediaQuery.of(context).size.height / 1.2,
                        data: controller.listPromoOutlet,
                        scrollDirection: Axis.vertical,
                        loadMoreAction: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
