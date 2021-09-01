part of 'home_user_bloc.dart';

@freezed
class HomeUserState with _$HomeUserState {
  const factory HomeUserState.initial() = _Initial;
  const factory HomeUserState.loadInProgress() = _LoadInProgress;
  const factory HomeUserState.loadSuccess() = _LoadSuccess;
  const factory HomeUserState.loadFailure() = _LoadFailure;

  const factory HomeUserState.bannerLoadSuccess(List<StaticBanner> list) =
      _BannerLoadSuccess;
  const factory HomeUserState.bannerLoadFailed(String message) =
      _BannerLoadFailed;

  const factory HomeUserState.addressListSuccess(List<UserAddress> list) =
      _AddressLoadSuccess;

  const factory HomeUserState.addressListFailed(String message) =
      _AddressLoadFailed;

  const factory HomeUserState.getActiveAddressSuccess(UserAddress response) =
      _GetActiveAddressSuccess;
  const factory HomeUserState.getActiveAddressFail(String message) =
      _GetActiveAddressFail;
  const factory HomeUserState.getCartSessionIDSuccess(String? sessionID) =
      _GetCartSessionIDSuccess;
  const factory HomeUserState.getCartSessionIDFail(String message) =
      _GetCartSessionIDFail;
}
