import 'package:digiresto/domain/home/entity/static_banner.dart';
import 'package:get/get.dart';

class StaticBannerController extends GetxController {
  RxInt slideIndex = 0.obs;
  RxList<StaticBanner> listStaticBanner = (List<StaticBanner>.empty()).obs;
  setSlideIndex(int value) => slideIndex.value = value;
  setListStaticBanner(List<StaticBanner> value) =>
      listStaticBanner.value = value;
}
