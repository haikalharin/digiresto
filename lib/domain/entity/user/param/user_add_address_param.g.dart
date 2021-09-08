// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_add_address_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAddAddressParam _$UserAddAddressParamFromJson(Map<String, dynamic> json) {
  return UserAddAddressParam(
    wa_id: json['wa_id'] as String,
    waba_no: json['waba_no'] as String,
    name: json['name'] as String,
    address: json['address'] as String,
    latitude: json['latitude'] as String,
    longitude: json['longitude'] as String,
    is_default: json['is_default'] as bool,
  );
}

Map<String, dynamic> _$UserAddAddressParamToJson(
        UserAddAddressParam instance) =>
    <String, dynamic>{
      'wa_id': instance.wa_id,
      'waba_no': instance.waba_no,
      'name': instance.name,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'is_default': instance.is_default,
    };
