part of 'address_list_bloc.dart';

@freezed
class AddressListState with _$AddressListState {
  const factory AddressListState.initial() = _Initial;
  const factory AddressListState.loadInProgress() = _LoadInProgress;
  const factory AddressListState.loadSuccess() = _LoadSuccess;
  const factory AddressListState.loadFailure(String message) = _LoadFailure;

  const factory AddressListState.setDefaultSuccess(List<UserAddress> response) =
      _SaveAddressSuccess;
  const factory AddressListState.setDefaultFail(String message) =
      _SaveAddressFail;

  const factory AddressListState.removeAddressSuccess(
      UserRemoveAddress response) = _UserRemoveAddress;

  const factory AddressListState.getGeoCodeSuccess(Geocode response) =
      _GetGeoCodeSuccess;
  const factory AddressListState.getGeoCodeFail(String message) =
      _GetGeoCodeFail;

  const factory AddressListState.setActiveAddressSuccess(UserAddress response) =
      _SetActiveAddressSuccess;
  const factory AddressListState.setActiveAddressFail(String message) =
      _SetActiveAddressFail;

  const factory AddressListState.addAddressSuccess(UserAddAddress response) =
      _AddAddressSuccess;
  const factory AddressListState.getActiveAddressSuccess(UserAddress response) =
      _GetActiveAddressSuccess;
  const factory AddressListState.getAllAddressSuccess(
      List<UserAddress> response) = _GetAllAddressSuccess;
}
