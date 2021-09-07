import 'package:digiresto/application/profile/edit_profile/edit_profile_bloc.dart';
import 'package:digiresto/domain/profile/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {
  final UserProfile userProfile;
  final EditProfileBloc profileBloc;
  EditProfileController(this.userProfile, this.profileBloc);
  RxBool isEditing = false.obs;
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController phoneCtrl = TextEditingController();

  setEditting(bool value) {
    isEditing.value = value;
  }

  @override
  void onInit() {
    nameCtrl.addListener(
        () => profileBloc.add(EditProfileEvent.fullNameChanged(nameCtrl.text)));
    emailCtrl.addListener(
        () => profileBloc.add(EditProfileEvent.emailChanged(emailCtrl.text)));
    super.onInit();
  }

  @override
  void onReady() {
    nameCtrl.text = userProfile.name;
    emailCtrl.text = userProfile.email;
    phoneCtrl.text = userProfile.mobilePhone;
    super.onReady();
  }
}
