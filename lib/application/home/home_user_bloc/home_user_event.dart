part of 'home_user_bloc.dart';

@freezed
class HomeUserEvent with _$HomeUserEvent {
  const factory HomeUserEvent.getStaticBanner() = _GetStaticBanner;
  const factory HomeUserEvent.getListAddress() = _GetListAddress;
  const factory HomeUserEvent.getActiveAddress() = _GetActiveAddress;
  const factory HomeUserEvent.getCartSessionID() = _GetCartSessionID;
  const factory HomeUserEvent.getCountCredit() = _GetCountCredit;
}
