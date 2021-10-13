import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/auth/entity/user_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:digiresto/domain/auth/auth_failure.dart';
import 'package:digiresto/domain/auth/i_auth_facade.dart';
import 'package:digiresto/domain/auth/value_objects.dart';
import 'package:digiresto/main.dart';
import 'package:flutter/foundation.dart';

import 'package:shake/shake.dart';
import 'package:url_launcher/url_launcher.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthFacade _authFacade;

  LoginBloc(this._authFacade) : super(LoginState.initial());

  ShakeDetector? detector;

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield* event.map(
      started: (_) async* {
        if (env == Environment.dev) {
          detector = ShakeDetector.autoStart(
            onPhoneShake: () {
              add(LoginEvent.onShake());
            },
          );
        }
      },
      phoneNumberChanged: (_event) async* {
        yield state.copyWith(
          isShowDialogShake: false,
          phoneNumber: PhoneNumber(_event.phoneNumberStr),
          loginFailureOrSuccessOption: none(),
          otpFailureOrSuccessOption: none(),
        );
      },
      pinChanged: (_event) async* {
        yield state.copyWith(
          isShowDialogShake: false,
          pin: Pin(_event.pinStr),
          loginFailureOrSuccessOption: none(),
          otpFailureOrSuccessOption: none(),
        );
      },
      verifOtpPressed: (_event) async* {
        yield* _performActionOnAuthFacadeVerifOtp();
      },
      otpVerified: (_event) async* {
        yield state.copyWith(
          isShowDialogShake: false,
          onInvalidPin: optionOf(_event.onInvalidPin),
        );
      },
      pinSubmitted: (_event) async* {
        yield* _performActionOnAuthFacadeLoginPin();
      },
      onChangeUrl: (e) async* {
        yield state.copyWith(isShowDialogShake: false);
        _authFacade.changeUrl(url: e.url);
      },
      onShake: (e) async* {
        yield state.copyWith(isShowDialogShake: false);

        yield state.copyWith(isShowDialogShake: true);
      },
    );
  }

  Stream<LoginState> _performActionOnAuthFacadeVerifOtp() async* {
    Either<AuthFailure, String>? failureOrSuccess;

    final isPhoneNumberValid = state.phoneNumber.isValid();
    // final _phoneNumber = state.phoneNumber.getOrNull();
    if (isPhoneNumberValid) {
      yield state.copyWith(
        isShowDialogShake: false,
        isSubmitting: true,
        loginFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await _authFacade.getOtp(
        phoneNumber: state.phoneNumber,
      );
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      otpFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }

  Stream<LoginState> _performActionOnAuthFacadeLoginPin() async* {
    Either<AuthFailure, UserAuth>? failureOrSuccess;

    final isPinValid = state.pin.isValid();
    if (isPinValid) {
      yield state.copyWith(
        isShowDialogShake: false,
        isSubmitting: true,
        loginFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await _authFacade.loginPin(
        phoneNumber: state.phoneNumber,
        pin: state.pin,
      );
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      loginFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
    yield state.copyWith(
      loginFailureOrSuccessOption: none(),
    );
  }

  @override
  Future<void> close() {
    detector?.stopListening();
    return super.close();
  }
}
