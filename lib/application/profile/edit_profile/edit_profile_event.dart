part of 'edit_profile_bloc.dart';

@freezed
class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.saveButtonPressed() = _SaveButtonPressed;
  const factory EditProfileEvent.fullNameChanged(String nameStr) =
      _FullNameChanged;
  const factory EditProfileEvent.emailChanged(String emailStr) = _EmailChanged;
}
