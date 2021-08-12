part of 'address_list_bloc.dart';

@freezed
abstract class AddressListEvent with _$AddressListEvent {
  const factory AddressListEvent.setDefault(
      UserSetDefaultAddressParam request) = _SetDefault;
  const factory AddressListEvent.removeAddress(UserRemoveAddressParam request) =
      _RemoveAddress;
}
