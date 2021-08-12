part of 'address_list_bloc.dart';

@freezed
abstract class AddressListState with _$AddressListState {
  const factory AddressListState.initial() = _Initial;
  const factory AddressListState.loadInProgress() = _LoadInProgress;
  const factory AddressListState.loadSuccess() = _LoadSuccess;
  const factory AddressListState.loadFailure() = _LoadFailure;

  const factory AddressListState.setDefaultSuccess(List<UserAddress> response) =
      _SaveAddressSuccess;
  const factory AddressListState.setDefaultFail(String message) =
      _SaveAddressFail;

  const factory AddressListState.removeAddressSuccess(
      UserRemoveAddress response) = _GetGeoCodeSuccess;
  const factory AddressListState.removeAddressFail(String message) =
      _GetGeoCodeFail;
}
