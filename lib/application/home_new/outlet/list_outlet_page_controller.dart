import 'package:digiresto/application/catering/catering_bloc.dart';
import 'package:digiresto/application/home_new/outlet/outlet_bloc.dart';
import 'package:digiresto/domain/entity/order/outlet_category_response.dart';
import 'package:digiresto/domain/home/entity/menu_category.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class ListOutletPageController extends GetxController {
  RxList<OutletCategoryDataResponse> listOutlet =
      List<OutletCategoryDataResponse>.empty().obs;
  var page = 1.obs;
  RxBool isHideOpen = false.obs;
  var indexDay = 7.obs;
  var initialDateIndexParam = -1.obs;
  var mealsTypesTitle = 'Breakfast'.obs;
  var mealsTypeParams = 'breakfast'.obs;
  var deliveryTime = "".obs;
  var isCatering = true.obs;
  Rx<DateTime> date = DateTime.now().obs;
  Rx<DateTime> getDate(DateTime d) => DateTime(d.year, d.month, d.day).obs;

  RxString preOrderDate = DateFormat('yyyy-MM-dd')
      .format(
        DateTime.now().subtract(
          Duration(days: -1),
        ),
      )
      .obs;

  // String getDeliveryTime(MenuCategory menuCategory, String deliveryTime) {
  //   menuCategory.filter?.forEach(
  //     (element) {
  //       element.options?.forEach((element) {
  //         if (element.value == mealsTypeParams) {
  //           deliveryTime = element.getDescription;
  //         }
  //       });
  //     },
  //   );
  //   print("berhasil $deliveryTime");
  //   update();
  //   return deliveryTime;
  // }

  RxString dayDate = DateFormat('EEEE, dd MMMM yyyy')
      .format(
        DateTime.now().subtract(
          Duration(days: -1),
        ),
      )
      .obs;

  void changeDate({
    required String date,
    required int index,
    required String dayNow,
  }) {
    preOrderDate.value = date;
    initialDateIndexParam = index;
    dayDate.value = dayNow;
    update();
  }

  void changeTypeMenu(String title, String value, String delivery) {
    mealsTypesTitle.value = title;
    mealsTypeParams.value = value;
    deliveryTime.value = delivery;
    update();
  }

  void getOutlets({
    required String search,
    required MenuCategory menuCategory,
    required int pageParam,
  }) {
    Get.context!.read<OutletBloc>().add(
          OutletEvent.getOutlets(
            menuCategory: menuCategory,
            page: page.value,
            search: search,
            isHideOpen: isHideOpen.value,
          ),
        );
    update();
  }

  void getCateringOutlets({
    required String search,
    required int pageParam,
  }) {
    Get.context!.read<CateringBloc>().add(
          CateringEvent.getOutletCategoryCatering(
            page: page.value,
            search: search,
            isHideOpen: isHideOpen.value,
            mealsTypes: mealsTypeParams.value,
            preOrderDate: preOrderDate.value,
          ),
        );
    update();
  }
}
