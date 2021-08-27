import 'package:get/get.dart';

class EditProfileController extends GetxController {
  RxBool isEditing = false.obs;

  setEditting(bool value) {
    isEditing.value = value;
  }
}
