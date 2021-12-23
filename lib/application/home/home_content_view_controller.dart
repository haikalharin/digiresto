import 'package:digiresto/application/address/list/address_list_bloc.dart';
import 'package:digiresto/application/home/home_user_bloc/home_user_bloc.dart';
import 'package:digiresto/domain/entity/order/static_banner_model.dart';
import 'package:digiresto/domain/entity/user/user_get_address_model.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HomeContentViewController extends GetxController {
  RxBool loadingHistory = false.obs;
  RxBool loadingHotPromo = false.obs;
  RxBool loadingPromo = false.obs;
  RxBool loadingTraceOrder = false.obs;
  RxBool loadingListAddress = false.obs;
  RxList<UserAddress> listAddress = List<UserAddress>.empty().obs;
  RxString activeAddress = "".obs;
  RxInt initialPage = 0.obs;
  RxInt slideIndex = 0.obs;
  Rx<Position> currentPosition = Position(
          longitude: 0,
          latitude: 0,
          timestamp: DateTime.now(),
          accuracy: 0,
          altitude: 0,
          heading: 0,
          speed: 0,
          speedAccuracy: 0)
      .obs;
  RxList<StaticBanner> listStaticBanner = (List<StaticBanner>.empty()).obs;
  Rx<UserAddress> currentLocation = UserAddress().obs;
  setLoadingHistory(bool value) => loadingHistory.value = value;
  setLoadingHotPromo(bool value) => loadingHotPromo.value = value;
  setLoadingPromo(bool value) => loadingPromo.value = value;
  setLoadingTraceOrder(bool value) => loadingTraceOrder.value = value;
  setInitialPage(int value) => initialPage.value = value;
  setSlideIndex(int value) => slideIndex.value = value;
  setLoadingListAddress(bool value) => loadingListAddress.value = value;
  setActiveAddress(String value) => activeAddress.value = value;
  setListAddress(List<UserAddress> value) => listAddress.value = value;
  setCurrentPosition(Position value) => currentPosition.value = value;
  setStaticBanner(List<StaticBanner> value) => listStaticBanner.value = value;
  setCurrentLocation(UserAddress value) => currentLocation.value = value;

  void getStaticBanner() {
    Get.context!.read<HomeUserBloc>().add(HomeUserEvent.getStaticBanner());
  }

  void getActiveAddress() {
    Get.context!.read<HomeUserBloc>().add(HomeUserEvent.getActiveAddress());
  }

  void getRefresh() {
    getStaticBanner();
    getActiveAddress();
  }

  void setLocalActiveAddress(UserAddress userAddress) {
    Get.context!
        .read<AddressListBloc>()
        .add(AddressListEvent.setActiveAddress(userAddress));
  }

  void setCurrentLocationToActiveAddress() async {}

  void getAddress() async {
    Get.context!.read<AddressListBloc>().add(AddressListEvent.getGeoCode(null));
  }
}
