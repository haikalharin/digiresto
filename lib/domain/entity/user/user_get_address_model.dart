import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_get_address_model.freezed.dart';
part 'user_get_address_model.g.dart';

@freezed
abstract class UserAddress with _$UserAddress {
  const factory UserAddress({
    int? id,
    String? name,
    String? address,
    String? latitude,
    String? longitude,
    bool? isDefault,
    String? wabaNo,
    bool? isDelete,
  }) = _UserAddress;

  factory UserAddress.createAddress(Map<String, dynamic> object) {
    return UserAddress(
      id: object['id'],
      name: object['name'],
      address: object['address'],
      latitude: object['latitude'],
      longitude: object['longitude'],
      isDefault: object['is_default'],
      wabaNo: object['waba_no'],
      isDelete: object['is_delete'],
    );
  }
  factory UserAddress.fromJson(Map<String, dynamic> json) =>
      _$UserAddressFromJson(json);
}
