part of 'edit_profile_bloc.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    required bool isSubmitting,
    required bool showError,
    required FullName fullName,
    required EmailAddress emailAddress,
    required Option<Either<ProfileFailure, Unit>> saveOptionFailureOrSuccess,
  }) = _EditProfileState;

  factory EditProfileState.initial() => EditProfileState(
        isSubmitting: false,
        showError: false,
        fullName: FullName(''),
        emailAddress: EmailAddress(''),
        saveOptionFailureOrSuccess: none(),
      );
}
