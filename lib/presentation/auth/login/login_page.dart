import 'package:digiresto/application/auth/login/login_bloc.dart';
import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/auth/login/widgets/dev_mode_dialog.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/core/widgets/custom_textfield.dart';
import 'package:digiresto/presentation/core/widgets/header_curved.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatelessWidget {
  final String? phoneNumber;
  const LoginPage({
    Key? key,
    this.phoneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: BlocProvider<LoginBloc>(
        create: (context) => getIt<LoginBloc>()..add(LoginEvent.started()),
        child: LoginForm(
          phoneNumber: phoneNumber,
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  final String? phoneNumber;
  const LoginForm({
    Key? key,
    this.phoneNumber,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController _phoneController = TextEditingController();
  late LoginBloc _loginBloc = BlocProvider.of<LoginBloc>(context);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        _phoneController.text = widget.phoneNumber ?? '';
        _loginBloc.add(
          LoginEvent.phoneNumberChanged(widget.phoneNumber ?? ''),
        );
      });

      _phoneController.addListener(() {
        _loginBloc.add(
          LoginEvent.phoneNumberChanged(_phoneController.text),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
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
              title: i10n.dev_mode_title,
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
                ),
              ),
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
          () {},
          (either) => either.fold(
            (l) {},
            (url) async {
              Get.offAllNamed(Routers.verifyOtp,
                  arguments: state.phoneNumber.getOrNull()!);

              List<String> encodedUrl = url.split("?text=");
              // url
              String encode =
                  encodedUrl[0] + "?text=" + Uri.encodeComponent(encodedUrl[1]);
              if (await canLaunch(encode)) {
                launch(
                  encode,
                );
              }
            },
          ),
        );
      },
      builder: (context, state) {
        return StackWithProgress(
          isLoading: state.isSubmitting,
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
                  i10n.login_title,
                  style: Styles.loginTitleStyle,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  i10n.text_register,
                  style: Styles.loginDescStyle,
                ),
                SizedBox(
                  height: 35,
                ),
                CustomTextField(
                  enabled: true,
                  autovalidateMode: state.showErrorMessages
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                  controller: _phoneController,
                  // onChange: (value) {
                  //   _loginBloc.add(
                  //     LoginEvent.phoneNumberChanged(value),
                  //   );
                  // },
                  validator: (_) => state.phoneNumber.value.fold(
                    (failure) => failure.maybeMap(
                      orElse: () => '',
                      invalidPhone: (_) =>
                          i10n.login_input_your_mobile_number_is_wrong,
                    ),
                    (_) => null,
                  ),
                  hintText: i10n.login_phone,
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  onPressed: _onFormSubmitted,
                  label: i10n.login_btn,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
