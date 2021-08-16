part of 'address_map_bloc.dart';

@freezed
class AddressMapEvent with _$AddressMapEvent {
  const factory AddressMapEvent.saveAddress(UserSaveAddressParam request) =
      _SaveAddress;
  const factory AddressMapEvent.getGeoCode(GetGeoCodeParam request) =
      _GetGeoCode;
  const factory AddressMapEvent.setActiveAddress(UserAddress model) =
      _SetActiveAddress;
  const factory AddressMapEvent.changeAddress() = _ChangeAddress;
}
