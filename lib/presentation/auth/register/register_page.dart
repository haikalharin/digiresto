import 'dart:async';

import 'package:digiresto/application/auth/register/register_bloc.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/auth/login/login_page.dart';
import 'package:digiresto/presentation/auth/login_pin/login_pin_page.dart';
import 'package:digiresto/presentation/auth/widgets/auth_scafold.dart';
import 'package:digiresto/presentation/auth/widgets/draw_circle.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/core/widgets/custom_checkbox.dart';
import 'package:digiresto/presentation/core/widgets/custom_dialog.dart';
import 'package:digiresto/presentation/core/widgets/custom_textfield.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'register_pin_widget.dart';

class RegisterPage extends StatelessWidget {
  final String phoneNumber;
  const RegisterPage(this.phoneNumber, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterBloc>(
      create: (context) => getIt<RegisterBloc>(),
      child: RegisterForm(phoneNumber),
    );
  }
}

class RegisterForm extends StatefulWidget {
  final String phoneNumber;
  const RegisterForm(this.phoneNumber, {Key? key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  late final _registerBloc = BlocProvider.of<RegisterBloc>(context);
  PageController _pageController = PageController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  late final _pinErrorController =
      StreamController<ErrorAnimationType>.broadcast();
  late final _retypePinErrorController =
      StreamController<ErrorAnimationType>.broadcast();

  int _page = 0;

  Future<bool> backHandler() async {
    if (_pageController.page!.floor() > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      return false;
    }
    Get.back();
    return true;
  }

  @override
  initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _page = _pageController.page!.floor();
      });
    });
    _nameController.addListener(_onNameChange);
    _emailController.addListener(_onEmailChange);
  }

  @override
  dispose() {
    super.dispose();
    _pageController.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _pinErrorController.close();
    _retypePinErrorController.close();
  }

  _onNameChange() {
    _registerBloc.add(RegisterEvent.nameChanged(_nameController.text));
  }

  _onEmailChange() {
    _registerBloc.add(RegisterEvent.emailChanged(_emailController.text));
  }

  _onPinChange(String value) {
    _registerBloc.add(RegisterEvent.pinChanged(value));
  }

  _onRetypePinChange(String value) {
    _registerBloc.add(RegisterEvent.retypePinChanged(value));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: backHandler,
      child: BlocConsumer<RegisterBloc, RegisterState>(
        listener: (context, state) {
          state.registerFailureOrSuccessOption.fold(
            () => null,
            (register) => register.fold(
              (failure) => Get.dialog(
                CustomDialog(
                  backgroundColor: Colors.white,
                  content: Column(
                    children: [
                      Text(
                        'Error',
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        failure.maybeMap(
                          orElse: () => 'Unknown Error',
                          noInternet: (_) => 'No Internet',
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
              (status) => Get.dialog(
                CustomDialog(
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/logo_digiresto.png',
                          width: 155,
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Text(
                        'Selamat',
                        style: Styles.titleStyle,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        """Account DigiApp Anda sudah aktif.
Selamat menikmati kemudahan
memesan makan dengan Digiresto.""",
                        style: Styles.whiteFontStyle,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      CustomButton(
                        onPressed: () => Get.offAll(
                          LoginPage(),
                        ),
                        label: 'Ok',
                      ),
                    ],
                  ),
                ),
                barrierDismissible: false,
              ),
            ),
          );
        },
        builder: (context, state) {
          return AuthScafold(
            onBackTap: backHandler,
            title: 'Daftar',
            // onNext: () => _registerBloc.add(
            //   RegisterEvent.onNext(
            //     phoneNumber: widget.phoneNumber,
            //     pageController: _pageController,
            //     onPinError: () =>
            //         _pinErrorController.add(ErrorAnimationType.shake),
            //     onRetypePinError: () =>
            //         _retypePinErrorController.add(ErrorAnimationType.shake),
            //   ),
            // ),
            suffixWidget: SizedBox(),
            child: StackWithProgress(
              isLoading: state.isSubmitting,
              children: [
                Column(
                  children: [
                    // AnimatedContainer(
                    //   duration: Duration(milliseconds: 500),
                    //   curve: Curves.easeInOut,
                    //   width: double.infinity,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //   ),
                    //   padding: EdgeInsets.symmetric(
                    //     horizontal: Dimens.defaultMargin,
                    //     vertical: 30,
                    //   ),
                    //   child: Column(
                    //     children: [
                    //       Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //         children: [
                    //           Text(
                    //             'Info Profil',
                    //             style: Styles.loginDescStyle.copyWith(
                    //               color: AppColors.mainColor,
                    //             ),
                    //           ),
                    //           Text(
                    //             'Buat Pin Login',
                    //             style: Styles.loginDescStyle.copyWith(
                    //               color: _page > 0
                    //                   ? AppColors.mainColor
                    //                   : AppColors.greyColor2,
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //       SizedBox(
                    //         height: 10,
                    //       ),
                    //       Row(
                    //         children: [
                    //           Expanded(
                    //             flex: 1,
                    //             child: Container(
                    //               alignment: Alignment.centerRight,
                    //               child: Padding(
                    //                 padding: EdgeInsets.only(
                    //                   right: 8,
                    //                 ),
                    //                 child: DrawCircle(),
                    //               ),
                    //             ),
                    //           ),
                    //           Expanded(
                    //             flex: 2,
                    //             child: Container(
                    //               width: double.infinity,
                    //               height: 3,
                    //               color: _page > 0
                    //                   ? AppColors.mainColor
                    //                   : AppColors.greyColor2,
                    //             ),
                    //           ),
                    //           Expanded(
                    //             flex: 1,
                    //             child: Padding(
                    //               padding: EdgeInsets.only(
                    //                 left: 8,
                    //               ),
                    //               child: DrawCircle(
                    //                 color: _page > 0
                    //                     ? AppColors.mainColor
                    //                     : AppColors.greyColor2,
                    //               ),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //       SizedBox(
                    //         height: 15,
                    //       )
                    //     ],
                    //   ),
                    // ),
                    Expanded(
                      child: PageView(
                        controller: _pageController,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          //page 1
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 40,
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                CustomTextField(
                                  autovalidateMode: state.showErrorMessages
                                      ? AutovalidateMode.always
                                      : AutovalidateMode.disabled,
                                  validator: (_) => state.fullName.value.fold(
                                    (failure) => failure.maybeMap(
                                      orElse: () => '',
                                      lengthTooShort: (_) => 'Invalid Name',
                                    ),
                                    (_) => null,
                                  ),
                                  controller: _nameController,
                                  hintText: 'Nama Pengguna',
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                CustomTextField(
                                  autovalidateMode: state.showErrorMessages
                                      ? AutovalidateMode.always
                                      : AutovalidateMode.disabled,
                                  validator: (_) => state.email.value.fold(
                                    (failure) => failure.maybeMap(
                                      orElse: () => '',
                                      invalidEmail: (_) => 'Invalid Email',
                                    ),
                                    (_) => null,
                                  ),
                                  controller: _emailController,
                                  hintText: 'Email',
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                CustomCheckBox(
                                  value: state.agreeTerms,
                                  onChanged: (value) => _registerBloc
                                      .add(RegisterEvent.toggleAgree()),
                                  label:
                                      'Dengan mengklik lanjutkan, Saya setuju dengan syarat dan ketentuan Digiresto.',
                                ),
                                SizedBox(height: 30),
                                CustomButton(
                                  onPressed: () => _registerBloc.add(
                                      RegisterEvent.buttonSubmitted(
                                          phoneNumberStr: widget.phoneNumber)),
                                  label: 'Lanjutkan',
                                )
                              ],
                            ),
                          ),
                          //page 2
                          RegisterPinWidget(
                            errorController: _pinErrorController,
                            onChanged: _onPinChange,
                            title: 'Masukan PIN Login',
                          ),
                          //page 3
                          RegisterPinWidget(
                            errorController: _retypePinErrorController,
                            onChanged: _onRetypePinChange,
                            title: 'Masukan Kembali PIN Login',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
