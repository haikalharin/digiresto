part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.loadSuccess(
    UserProfile userProfile,
  ) = _LoadSuccess;
  const factory ProfileState.loadFailure(AuthFailure failure) = _LoadFailure;
}
