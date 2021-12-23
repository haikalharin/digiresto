import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/auth/value_objects.dart';
import 'package:digiresto/domain/profile/i_profile_repository.dart';
import 'package:digiresto/domain/profile/profile_failure.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';
part 'edit_profile_bloc.freezed.dart';

@injectable
class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  IProfileRepository _profileRepository;
  EditProfileBloc(this._profileRepository) : super(EditProfileState.initial()) {
    on<EditProfileEvent>((event, emit) async {
      await event.map(
        saveButtonPressed: (_event) async {
          emit(state.copyWith(
            isSubmitting: true,
            showError: true,
          ));
          final isValidFullName = state.fullName.isValid();
          final isValidEmailAddress = state.emailAddress.isValid();
          Either<ProfileFailure, Unit>? failureOrSuccess;
          if (isValidFullName && isValidEmailAddress) {
            failureOrSuccess = await _profileRepository.editProfile(
              fullName: state.fullName,
              emailAddress: state.emailAddress,
            );
          }
          emit(state.copyWith(
            isSubmitting: false,
            saveOptionFailureOrSuccess: optionOf(failureOrSuccess),
          ));
        },
        fullNameChanged: (_event) async {
          emit(state.copyWith(
            fullName: FullName(_event.nameStr),
          ));
        },
        emailChanged: (_event) async {
          emit(state.copyWith(
            emailAddress: EmailAddress(_event.emailStr),
          ));
        },
      );
    });
  }
}
