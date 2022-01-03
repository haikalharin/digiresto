part of 'address_map_bloc.dart';

@freezed
class AddressMapState with _$AddressMapState {
  const factory AddressMapState.initial() = _Initial;
  const factory AddressMapState.loadInProgress() = _LoadInProgress;
  const factory AddressMapState.loadSuccess() = _LoadSuccess;
  const factory AddressMapState.loadFailure() = _LoadFailure;

  const factory AddressMapState.saveAddressSuccess(UserAddAddress response) =
      _SaveAddressSuccess;
  const factory AddressMapState.saveAddressFail(String message) =
      _SaveAddressFail;

  const factory AddressMapState.getGeoCodeSuccess(Geocode response) =
      _GetGeoCodeSuccess;
  const factory AddressMapState.getGeoCodeFail(String message) =
      _GetGeoCodeFail;

  const factory AddressMapState.setActiveAddressSuccess(UserAddress response) =
      _SetActiveAddressSuccess;
  const factory AddressMapState.setActiveAddressFail(String message) =
      _SetActiveAddressFail;
}
