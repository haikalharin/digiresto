import 'package:digiresto/application/profile/edit_profile/edit_profile_controller.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/core/widgets/custom_scafold.dart';
import 'package:digiresto/presentation/core/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final EditProfileController _controller = Get.put(EditProfileController());

    return CustomScafold(
      showBackButton: true,
      title: 'Edit Profile',
      body: Obx(() {
        final _isEditing = _controller.isEditing.value;
        return ListView(
          padding: EdgeInsets.zero,
          children: [
            Divider(
              color: AppColors.dividerColor,
              height: 1,
              thickness: 1,
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: SvgPicture.asset(
                'assets/edit_profile_banner.svg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(
                Dimens.defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nama',
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  CustomTextField(
                    enabled: _isEditing,
                    focusBorderColor: Colors.green,
                    borderColor: AppColors.greyColor,
                    fillColor:
                        _isEditing ? Colors.white : AppColors.inputFillColor,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Email',
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  CustomTextField(
                    enabled: _isEditing,
                    focusBorderColor: Colors.green,
                    borderColor: AppColors.greyColor,
                    fillColor:
                        _isEditing ? Colors.white : AppColors.inputFillColor,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Nomor Handphone',
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  CustomTextField(
                    enabled: false,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    onPressed: () => _controller.setEditting(!_isEditing),
                    label: _isEditing ? 'Simpan' : 'Ubah',
                    fontStyle: Styles.buttonLabelStyle.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                    color: AppColors.mainColor,
                    height: 55,
                  ),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
