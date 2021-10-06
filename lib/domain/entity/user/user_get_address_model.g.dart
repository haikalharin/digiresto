// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_get_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserAddress _$$_UserAddressFromJson(Map<String, dynamic> json) =>
    _$_UserAddress(
      id: json['id'] as int?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      isDefault: json['isDefault'] as bool?,
      wabaNo: json['wabaNo'] as String?,
      isDelete: json['isDelete'] as bool?,
    );

Map<String, dynamic> _$$_UserAddressToJson(_$_UserAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'isDefault': instance.isDefault,
      'wabaNo': instance.wabaNo,
      'isDelete': instance.isDelete,
    };
