import 'package:digiresto/application/order/order_bloc.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/loading/loading.dart';
import 'package:digiresto/domain/entity/order/param/get_promo_outlet_param.dart';
import 'package:digiresto/domain/entity/order/promo_outlet_model.dart';
import 'package:digiresto/domain/order/home_order_view_argument.dart';
import 'package:digiresto/presentation/widgets/list/digidiscount_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class HomeDigidiscountScreenController extends GetxController {
  RxList<PromoOutlet> listPromoOutlet = List<PromoOutlet>.empty().obs;
  var page = 1.obs;
}

class HomeDigidiscountScreen extends GetView<HomeDigidiscountScreenController> {
  goBack(BuildContext context) {
    Get.back();
  }

  final searchController = TextEditingController();

  void getPromoOutlet(String search, int pageParam) {
    Loading.show();
    Get.context!.read<OrderBloc>().add(OrderEvent.getPromoOutlet(
        GetPromoOutletParam(
            body: GetPromoOutletBodyParam(),
            queryString: GetPromoOutletQueryParam(
                filter: '', location: '', page: controller.page.value))));
    // _orderStore?.getPromoOutlet({
    //   "location":
    //       _userStore!.activeAddressLat! + "," + _userStore!.activeAddresslng!,
    //   "page": pageParam.toString(),
    //   "filter": search
    // }).then((res) {
    //   Loading.dismiss();
    //   setState(() {
    //     listPromoOutlet = res;
    //   });
    // }).catchError((err) {
    //   Loading.dismiss();
    //   print(err.toString());
    //   ErrorPopupWidget.showDioError(context, err, null);
    // });
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
              getPromoOutlet(searchController.text, 1);
            },
            controller: searchController,
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
    Get.put(HomeDigidiscountScreenController());
    Get.context!.read<OrderBloc>().add(OrderEvent.getPromoOutlet(
        GetPromoOutletParam(
            body: GetPromoOutletBodyParam(),
            queryString: GetPromoOutletQueryParam(
                filter: '', location: '', page: controller.page.value))));
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
              getPromoOutletSuccess: (r) {
                controller.listPromoOutlet.value = r.response;
              },
              loadFailure: (e) {
                print(e.message);
              },
              orElse: () {});
        },
        builder: (context, state) {
          return Container(
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
                      "_orderStore!.setOrderParameter";
                    },
                    height: MediaQuery.of(context).size.height / 1.2,
                    data: controller.listPromoOutlet,
                    scrollDirection: Axis.vertical,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
