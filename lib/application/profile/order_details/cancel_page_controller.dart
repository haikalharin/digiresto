import 'package:get/get.dart';

class CancelPageController extends GetxController {
  RxInt selectedId = 0.obs;

  // ignore: use_setters_to_change_properties
  void changeValue(int value) {
    selectedId.value = value;
  }
}
