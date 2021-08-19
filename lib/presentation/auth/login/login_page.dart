import 'package:digiresto/application/auth/login/login_bloc.dart';
import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/auth/login/widgets/dev_mode_dialog.dart';
import 'package:digiresto/presentation/auth/validate_otp/validate_otp_page.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/custom_dialog.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/core/widgets/custom_textfield.dart';
import 'package:digiresto/presentation/core/widgets/header_curved.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: BlocProvider<LoginBloc>(
        create: (context) => getIt<LoginBloc>()..add(LoginEvent.started()),
        child: const LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginBloc _loginBloc = BlocProvider.of<LoginBloc>(context);
    final I10n i10n = I10n.of(context);

    String _baseUrl = Endpoints.baseUrlDigiresto;
    String _selectedUrl = _baseUrl;

    void _onFormSubmitted() {
      _loginBloc.add(
        const LoginEvent.verifOtpPressed(),
      );
    }

    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        print(state.isShowDialogShake);
        if (state.isShowDialogShake) {
          if (Get.isDialogOpen == null || Get.isDialogOpen == false) {
            Get.defaultDialog(
              title: i10n.login_dev_mode,
              content: DevModeDialog(
                baseUrl: _selectedUrl,
                onRadioChange: (val) {
                  _baseUrl = val;
                },
              ),
              cancel: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    side: BorderSide(color: AppColors.mainColor),
                  ),
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    'Cancel',
                    style: TextStyle(color: AppColors.mainColor),
                  )),
              confirm: ElevatedButton(
                  onPressed: () {
                    _selectedUrl = _baseUrl;
                    _loginBloc.add(LoginEvent.onChangeUrl(url: _baseUrl));
                    Get.back();
                  },
                  child: Text('Save')),
            );
          }
        }
        state.otpFailureOrSuccessOption.fold(
          () => null,
          (either) => either.fold(
            (l) => null,
            (r) => Get.toNamed(Routers.verifyOtp,
                arguments: state.phoneNumber.getOrCrash()),
          ),
        );
      },
      builder: (context, state) {
        return StackWithProgress(
          isLoading: state.isSubmitting,
          children: [
            Stack(
              children: [
                HeaderCurvedWidget(
                  height: 210,
                  color: AppColors.mainColor.withOpacity(0.7),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).padding.top,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Center(
                      child: Image.asset(
                        'assets/logo_digiresto.png',
                        width: 155,
                      ),
                    ),
                  ],
                ),
                ListView(
                  padding: EdgeInsets.only(
                    top: 190,
                    right: 40,
                    left: 40,
                  ),
                  children: [
                    Text(
                      'Masuk',
                      style: Styles.loginTitleStyle,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Pastikan nomor handphone Anda valid untuk proses verifikasi,',
                      style: Styles.loginDescStyle,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    CustomTextField(
                      autovalidateMode: state.showErrorMessages
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      onChange: (value) => _loginBloc.add(
                        LoginEvent.phoneNumberChanged(value),
                      ),
                      validator: (_) => state.phoneNumber.value.fold(
                        (failure) => failure.maybeMap(
                          orElse: () => '',
                          invalidPhone: (_) => 'Invalid Phone',
                        ),
                        (_) => null,
                      ),
                      hintText: 'Nomor Handphone',
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onPressed: _onFormSubmitted,
                      label: 'Lanjut Verifikasi',
                    ),
                  ],
                )
              ],
            )
          ],
        );
      },
    );
  }
}
