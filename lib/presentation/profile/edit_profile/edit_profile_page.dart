import 'package:digiresto/application/profile/edit_profile/edit_profile_bloc.dart';
import 'package:digiresto/application/profile/edit_profile/edit_profile_controller.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/profile/user_profile.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/core/widgets/custom_dialog.dart';
import 'package:digiresto/presentation/core/widgets/custom_scafold.dart';
import 'package:digiresto/presentation/core/widgets/custom_textfield.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class EditProfilePage extends StatelessWidget {
  final UserProfile _profile;

  const EditProfilePage(this._profile, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EditProfileBloc>(
      create: (context) => getIt<EditProfileBloc>(),
      child: EditProfileWidget(_profile),
    );
  }
}

class EditProfileWidget extends StatelessWidget {
  final UserProfile _profile;
  const EditProfileWidget(this._profile, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late final _bloc = BlocProvider.of<EditProfileBloc>(context);
    final EditProfileController _controller =
        Get.put(EditProfileController(_profile, _bloc));
    I10n i10n = I10n.of(context);

    return CustomScafold(
      showBackButton: true,
      title: i10n.profile_edit_title,
      body: Obx(
        () {
          final _isEditing = _controller.isEditing.value;
          return BlocConsumer<EditProfileBloc, EditProfileState>(
            listener: (context, state) {
              state.saveOptionFailureOrSuccess.fold(
                () => {},
                (failureOrSuccess) => failureOrSuccess.fold(
                  (failure) => Get.defaultDialog(
                    middleText: failure.maybeMap(
                      orElse: () => 'Unexpected Error',
                      unableToUpdate: (_) =>
                          i10n.error_message_failed_get_response,
                    ),
                  ),
                  (success) {
                    _controller.setEditting(false);
                    Get.dialog(
                      CustomDialog(
                        backgroundColor: Colors.white,
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              i10n.profile_edit_success,
                              style: Styles.dialogTitleStyle,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustomButton(
                              color: AppColors.mainColor,
                              fontColor: Colors.white,
                              onPressed: () => Get.back(),
                              label: i10n.alert_ok,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            },
            builder: (context, state) {
              return StackWithProgress(
                isLoading: state.isSubmitting,
                children: [
                  ListView(
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
                              i10n.profile_edit_name,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            CustomTextField(
                              controller: _controller.nameCtrl,
                              enabled: _isEditing,
                              focusBorderColor: Colors.green,
                              borderColor: AppColors.greyColor,
                              fillColor: _isEditing
                                  ? Colors.white
                                  : AppColors.inputFillColor,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              i10n.profile_edit_email,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            CustomTextField(
                              controller: _controller.emailCtrl,
                              enabled: _isEditing,
                              focusBorderColor: Colors.green,
                              borderColor: AppColors.greyColor,
                              fillColor: _isEditing
                                  ? Colors.white
                                  : AppColors.inputFillColor,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              i10n.profile_edit_phone,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            CustomTextField(
                              controller: _controller.phoneCtrl,
                              enabled: false,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            CustomButton(
                              onPressed: _isEditing
                                  ? () => _bloc
                                      .add(EditProfileEvent.saveButtonPressed())
                                  : () => _controller.setEditting(true),
                              label: _isEditing
                                  ? i10n.profile_edit_save
                                  : i10n.profile_edit_action,
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
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }
}
