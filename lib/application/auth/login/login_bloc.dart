import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/auth/entity/user_auth.dart';
import 'package:digiresto/infrastructure/core/globals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:digiresto/domain/auth/auth_failure.dart';
import 'package:digiresto/domain/auth/i_auth_facade.dart';
import 'package:digiresto/domain/auth/value_objects.dart';
import 'package:flutter/foundation.dart';

import 'package:shake/shake.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthFacade _authFacade;

  LoginBloc(this._authFacade) : super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.map(
        started: (_) async {
          if (Globals.env == Environment.dev) {
            detector = ShakeDetector.autoStart(
              onPhoneShake: () {
                add(LoginEvent.onShake());
              },
            );
          }
        },
        phoneNumberChanged: (_event) async {
          emit(
            state.copyWith(
              isShowDialogShake: false,
              phoneNumber: PhoneNumber(_event.phoneNumberStr),
              loginFailureOrSuccessOption: none(),
              otpFailureOrSuccessOption: none(),
            ),
          );
        },
        pinChanged: (_event) async {
          emit(
            state.copyWith(
              isShowDialogShake: false,
              pin: Pin(_event.pinStr),
              loginFailureOrSuccessOption: none(),
              otpFailureOrSuccessOption: none(),
            ),
          );
        },
        verifOtpPressed: (_event) async {
          await _performActionOnAuthFacadeVerifOtp(event, emit);
        },
        otpVerified: (_event) async {
          emit(
            state.copyWith(
              isShowDialogShake: false,
              onInvalidPin: optionOf(_event.onInvalidPin),
            ),
          );
        },
        pinSubmitted: (_event) async {
          await _performActionOnAuthFacadeLoginPin(event, emit);
        },
        onChangeUrl: (e) async {
          emit(state.copyWith(isShowDialogShake: false));
          _authFacade.changeUrl(url: e.url);
        },
        onShake: (e) async {
          emit(state.copyWith(isShowDialogShake: false));

          emit(state.copyWith(isShowDialogShake: true));
        },
      );
    });
  }

  ShakeDetector? detector;

  Future _performActionOnAuthFacadeVerifOtp(
      LoginEvent event, Emitter<LoginState> emit) async {
    Either<AuthFailure, String>? failureOrSuccess;

    final isPhoneNumberValid = state.phoneNumber.isValid();
    // final _phoneNumber = state.phoneNumber.getOrNull();
    if (isPhoneNumberValid) {
      emit(
        state.copyWith(
          isShowDialogShake: false,
          isSubmitting: true,
          loginFailureOrSuccessOption: none(),
        ),
      );

      failureOrSuccess = await _authFacade.getOtp(
        phoneNumber: state.phoneNumber,
      );
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        otpFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }

  Future _performActionOnAuthFacadeLoginPin(
      LoginEvent event, Emitter<LoginState> emit) async {
    Either<AuthFailure, UserAuth>? failureOrSuccess;

    final isPinValid = state.pin.isValid();
    if (isPinValid) {
      emit(
        state.copyWith(
          isShowDialogShake: false,
          isSubmitting: true,
          loginFailureOrSuccessOption: none(),
        ),
      );

      failureOrSuccess = await _authFacade.loginPin(
        phoneNumber: state.phoneNumber,
        pin: state.pin,
      );
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        loginFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
    emit(
      state.copyWith(
        loginFailureOrSuccessOption: none(),
      ),
    );
  }
}
