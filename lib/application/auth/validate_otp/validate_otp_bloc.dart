import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/auth/auth_failure.dart';
import 'package:digiresto/domain/auth/i_auth_facade.dart';
import 'package:digiresto/domain/auth/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:url_launcher/url_launcher.dart';

part 'validate_otp_event.dart';
part 'validate_otp_state.dart';
part 'validate_otp_bloc.freezed.dart';

@injectable
class ValidateOtpBloc extends Bloc<ValidateOtpEvent, ValidateOtpState> {
  final IAuthFacade _authFacade;

  ValidateOtpBloc(this._authFacade) : super(ValidateOtpState.initial());

  @override
  Stream<ValidateOtpState> mapEventToState(
    ValidateOtpEvent event,
  ) async* {
    yield* event.map(
      started: (_event) async* {
        yield state.copyWith(
          errorOption: optionOf(_event.errorAnimation),
        );
      },
      resendOtp: (_event) async* {
        yield state.copyWith(
          isSubmitting: true,
          validateFailureOrSuccess: none(),
        );
        final failureOrSuccess = await _authFacade.getOtp(
          phoneNumber: PhoneNumber(_event.phoneNumberStr),
        );
        String? url = failureOrSuccess.fold(
          (f) => null,
          (url) => url,
        );
        if (url != null) {
          List<String> encodedUrl = url.split("?text=");
          // url
          String encode =
              encodedUrl[0] + "?text=" + Uri.encodeComponent(encodedUrl[1]);
          if (await canLaunch(encode)) {
            launch(
              encode,
            );
          }
        }
        yield state.copyWith(
          isSubmitting: false,
          validateFailureOrSuccess: none(),
        );
      },
      inputSubmitting: (_event) async* {
        yield state.copyWith(
          otp: Otp(_event.otpStr),
          isSubmitting: true,
          validateFailureOrSuccess: none(),
        );
        final isMember = await _authFacade.validateOtp(
          phoneNumber: PhoneNumber(_event.phoneNumberStr),
          otp: Otp(_event.otpStr),
        );

        isMember.fold(
          (failure) => failure.maybeMap(
            orElse: () => null,
            invalidOtp: (e) {
              state.errorOption.fold(
                () => null,
                (errorAnimation) => errorAnimation.add(
                  ErrorAnimationType.shake,
                ),
              );
            },
          ),
          (r) => null,
        );

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          validateFailureOrSuccess: optionOf(isMember),
        );
      },
    );
  }
}
