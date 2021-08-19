import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/auth/auth_failure.dart';
import 'package:digiresto/domain/auth/i_auth_facade.dart';
import 'package:digiresto/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:logger/logger.dart';

part 'validate_otp_event.dart';
part 'validate_otp_state.dart';
part 'validate_otp_bloc.freezed.dart';

@injectable
class ValidateOtpBloc extends Bloc<ValidateOtpEvent, ValidateOtpState> {
  final IAuthFacade _authFacade;
  final Logger _logger;

  ValidateOtpBloc(this._authFacade, this._logger)
      : super(ValidateOtpState.initial());

  @override
  Stream<ValidateOtpState> mapEventToState(
    ValidateOtpEvent event,
  ) async* {
    yield* event.map(
      started: (_event) async* {},
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

          launch(
            encode,
          );
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
        _logger.d(
            'Event inputSubmitting ${_event.otpStr} ${_event.phoneNumberStr}');

        final isMember = await _authFacade.validateOtp(
          phoneNumber: PhoneNumber(_event.phoneNumberStr),
          otp: Otp(_event.otpStr),
        );

        isMember.fold(
          (failure) => failure.maybeMap(
            orElse: () => null,
            invalidOtp: (e) {
              state.onInvalidOtpOption.fold(
                () => null,
                (onInvalidOtp) => onInvalidOtp(),
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
