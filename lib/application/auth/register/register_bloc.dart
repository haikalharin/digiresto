import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/auth/auth_failure.dart';
import 'package:digiresto/domain/auth/entity/register_input.dart';
import 'package:digiresto/domain/auth/entity/register_status.dart';
import 'package:digiresto/domain/auth/i_auth_facade.dart';
import 'package:digiresto/domain/auth/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  IAuthFacade _authFacade;
  RegisterBloc(this._authFacade) : super(RegisterState.initial());

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    yield* event.map(
      started: (_event) async* {},
      nameChanged: (_event) async* {
        yield state.copyWith(
          fullName: FullName(_event.nameStr),
        );
      },
      emailChanged: (_event) async* {
        yield state.copyWith(
          email: EmailAddress(_event.emailStr),
        );
      },
      toggleAgree: (_event) async* {
        yield state.copyWith(
          agreeTerms: !state.agreeTerms,
        );
      },
      pinChanged: (_event) async* {
        yield state.copyWith(
          pin: Pin(_event.pinStr),
        );
      },
      retypePinChanged: (_event) async* {
        yield state.copyWith(
          retypePin:
              Pin(_event.retypePinStr, firstValue: state.pin.getOrNull()),
        );
      },
      onNext: (_event) async* {
        yield state.copyWith(
          isSubmitting: true,
          registerFailureOrSuccessOption: none(),
        );
        Either<AuthFailure, RegisterStatus>? failureOrSuccess;
        final isNameValid = state.fullName.isValid();
        final isEmailValid = state.email.isValid();
        final isPinValid = state.pin.isValid();
        final isRetypePinValid = state.retypePin.isValid();

        switch (_event.pageController.page?.floor()) {
          case 0:
            if (isNameValid && isEmailValid && state.agreeTerms) {
              _event.pageController.nextPage(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            }
            break;
          case 1:
            if (isPinValid) {
              _event.pageController.nextPage(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            } else {
              _event.onPinError();
            }
            break;
          case 2:
            if (isRetypePinValid) {
              final registerInput = RegisterInput(
                credential: state.pin.getOrCrash(),
                name: state.fullName.getOrCrash(),
                accountNumber: _event.phoneNumber,
                email: state.email.getOrCrash(),
                pushId: Uuid().v1(),
                uid: Uuid().v4(),
              );
              failureOrSuccess =
                  await _authFacade.register(registerInput: registerInput);
            } else {
              _event.onRetypePinError();
            }
            break;
          default:
        }

        yield state.copyWith(
          showErrorMessages: true,
          isSubmitting: false,
          registerFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      buttonSubmitted: (_event) async* {
        yield state.copyWith(
          isSubmitting: true,
          registerFailureOrSuccessOption: none(),
        );
        Either<AuthFailure, RegisterStatus>? failureOrSuccess;
        final isNameValid = state.fullName.isValid();
        final isEmailValid = state.email.isValid();
        if (isNameValid && isEmailValid && state.agreeTerms) {
          final registerInput = RegisterInput(
            credential: '',
            name: state.fullName.getOrCrash(),
            accountNumber: _event.phoneNumberStr,
            email: state.email.getOrCrash(),
            pushId: '-',
            uid: Uuid().v4(),
          );
          failureOrSuccess =
              await _authFacade.register(registerInput: registerInput);
        }
        yield state.copyWith(
          showErrorMessages: true,
          isSubmitting: false,
          registerFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
