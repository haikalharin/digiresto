import 'dart:async';

import 'package:digiresto/application/auth/validate_otp/validate_otp_bloc.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/auth/register/register_page.dart';
import 'package:digiresto/presentation/auth/widgets/auth_scafold.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ValidateOtpPage extends StatelessWidget {
  final String phoneNumber;

  const ValidateOtpPage({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ValidateOtpBloc>(
      create: (context) => getIt<ValidateOtpBloc>(),
      child: ValidateOtpForm(phoneNumber: phoneNumber),
    );
  }
}

class ValidateOtpForm extends StatefulWidget {
  final String phoneNumber;

  const ValidateOtpForm({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  _ValidateOtpFormState createState() => _ValidateOtpFormState();
}

class _ValidateOtpFormState extends State<ValidateOtpForm> {
  late final _validateBloc = BlocProvider.of<ValidateOtpBloc>(context);
  late final errorController = StreamController<ErrorAnimationType>();
  late Timer _timer;
  int _start = 60;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      startTimer();
    });
  }

  @override
  void dispose() {
    _timer.cancel();

    errorController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    I10n i10n = I10n.of(context);
    return BlocConsumer<ValidateOtpBloc, ValidateOtpState>(
      bloc: _validateBloc
        ..add(
          ValidateOtpEvent.started(
            () => errorController.add(ErrorAnimationType.shake),
          ),
        ),
      listener: (context, state) {
        state.validateFailureOrSuccess.fold(
          () => null,
          (success) => success.fold(
            (l) => Get.defaultDialog(
                title: 'Error',
                middleText: l.maybeMap(
                  orElse: () => 'unknown',
                  invalidOtp: (_) => i10n.errorInvalidOtp,
                )),
            // (isMember) => Get.to(RegisterPage(widget.phoneNumber)),
            (login) => login.isMember
                ? Get.offAllNamed(Routers.auth)
                : Get.to(RegisterPage(widget.phoneNumber)),
          ),
        );
      },
      builder: (context, state) {
        return StackWithProgress(
          isLoading: state.isSubmitting,
          children: [
            AuthScafold(
              headerCurvedHeight: 250,
              title: i10n.verify_phone,
              suffixWidget: GestureDetector(
                child: Icon(
                  Icons.help_outline,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 40),
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: Styles.loginDescStyle.copyWith(height: 1.7),
                      children: <TextSpan>[
                        TextSpan(
                          text: i10n.input_otp_desc,
                        ),
                        TextSpan(
                          text: widget.phoneNumber,
                          style: Styles.loginDescStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow,
                          ),
                        ),
                        TextSpan(
                          text: """.${i10n.input_otp_desc2}

${i10n.text_kirim_ulang}. """,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  PinCodeTextField(
                    errorAnimationController: errorController,
                    autovalidateMode: state.showErrorMessages
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    validator: (_) => state.validateFailureOrSuccess.fold(
                      () => null,
                      (a) => a.fold(
                        (failure) => failure.maybeMap(
                          orElse: () => 'Unknown Error',
                          invalidOtp: (e) => e.message,
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
                    onChanged: (text) {},
                    onCompleted: (otp) => _validateBloc.add(
                      ValidateOtpEvent.inputSubmitting(widget.phoneNumber, otp),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    onPressed: _start == 0
                        ? () => _validateBloc.add(
                              ValidateOtpEvent.resendOtp(widget.phoneNumber),
                            )
                        : () {},
                    margin: EdgeInsets.zero,
                    label: i10n.input_otp_resend_code('$_start'),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
