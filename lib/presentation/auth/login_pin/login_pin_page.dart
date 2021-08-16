import 'dart:async';

import 'package:digiresto/application/auth/login/login_bloc.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/widgets/header_curved.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class LoginPinPage extends StatelessWidget {
  final String phoneNumber;
  const LoginPinPage(this.phoneNumber, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: BlocProvider<LoginBloc>(
        create: (context) => getIt<LoginBloc>(),
        child: LoginPinForm(phoneNumber),
      ),
    );
  }
}

class LoginPinForm extends StatefulWidget {
  final String phoneNumber;

  const LoginPinForm(this.phoneNumber, {Key? key}) : super(key: key);

  @override
  _LoginPinFormState createState() => _LoginPinFormState();
}

class _LoginPinFormState extends State<LoginPinForm> {
  late final _loginPinBloc = BlocProvider.of<LoginBloc>(context);

  late final errorController = StreamController<ErrorAnimationType>();

  @override
  void dispose() {
    errorController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      bloc: _loginPinBloc
        ..add(
          LoginEvent.otpVerified(
            () => errorController.add(ErrorAnimationType.shake),
          ),
        ),
      listener: (context, state) {
        state.loginFailureOrSuccessOption.fold(
          () => null,
          (success) => success.fold(
            (l) => null,
            (user) => null,
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
                    top: 220,
                    right: 40,
                    left: 40,
                  ),
                  children: [
                    Text(
                      'Masukkan 6 digit PIN',
                      style: Styles.loginPinDescStyle,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    PinCodeTextField(
                      errorAnimationController: errorController,
                      autovalidateMode: state.showErrorMessages
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      validator: (_) => state.loginFailureOrSuccessOption.fold(
                        () => null,
                        (a) => a.fold(
                          (failure) => failure.maybeMap(
                            orElse: () => 'Unknown Error',
                            invalidPin: (e) => e.message,
                          ),
                          (r) => null,
                        ),
                      ),
                      enableActiveFill: true,
                      keyboardType: TextInputType.number,
                      pinTheme: PinTheme(
                        borderWidth: 0,
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(6),
                        fieldHeight: 55,
                        fieldWidth: 45,
                        activeFillColor: Colors.white,
                        inactiveFillColor: Colors.white,
                        selectedFillColor: Colors.white,
                      ),
                      hintCharacter: '●',
                      hintStyle: Styles.hintStyle.copyWith(
                        fontSize: 42,
                        color: AppColors.greyColor,
                        height: 1,
                      ),
                      appContext: context,
                      length: 6,
                      onChanged: (pin) => _loginPinBloc.add(
                        LoginEvent.pinChanged(pin),
                      ),
                      onCompleted: (pin) => _loginPinBloc.add(
                        LoginEvent.pinSubmitted(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
