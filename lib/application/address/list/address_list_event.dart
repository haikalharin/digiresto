part of 'address_list_bloc.dart';

@freezed
class AddressListEvent with _$AddressListEvent {
  const factory AddressListEvent.setDefault(
      UserSetDefaultAddressParam request) = _SetDefault;
  const factory AddressListEvent.getGeoCode(GetGeoCodeParam request) =
      _GetGeoCode;
  const factory AddressListEvent.setActiveAddress(UserAddress model) =
      _SetActiveAddress;
  const factory AddressListEvent.removeAddress(UserRemoveAddressParam request) =
      _RemoveAddress;
  const factory AddressListEvent.addAddress(UserAddAddressParam request) =
      _AddAddress;
  const factory AddressListEvent.getActiveAddress() = _GetActiveAddress;
}
