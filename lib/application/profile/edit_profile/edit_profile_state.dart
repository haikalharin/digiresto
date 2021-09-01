part of 'edit_profile_bloc.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    required FullName fullName,
    required EmailAddress emailAddress,
    required Option<Either<AuthFailure, Unit>> optionFailureOrSuccess,
  }) = _EditProfileState;

  factory EditProfileState.initial() => EditProfileState(
        fullName: FullName(''),
        emailAddress: EmailAddress(''),
        optionFailureOrSuccess: none(),
      );
}
