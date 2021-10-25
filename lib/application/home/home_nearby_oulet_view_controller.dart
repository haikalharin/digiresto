import 'package:digiresto/application/order/bloc/order_bloc.dart';
import 'package:digiresto/domain/entity/order/outlet_category_response.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_by_location_param.dart';
import 'package:digiresto/presentation/core/widgets/loading.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HomeNearbyOutletViewController extends GetxController {
  RxList<OutletCategoryDataResponse> listOutlet =
      List<OutletCategoryDataResponse>.empty().obs;
  var page = 1.obs;

  void getOutletByLocation(String search, int pageParam) {
    page.value = pageParam;
    Get.context!.read<OrderBloc>().add(OrderEvent.getOutletByLocation(
        GetOutletByLocationParam(
            queryString: GetOutletByLocationQueryParam(
                filter: search, location: "", page: page.value),
            body: GetOutletByLocationBodyParam())));
    update();
  }
}
