// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_save_address_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSaveAddressParam _$UserSaveAddressParamFromJson(
        Map<String, dynamic> json) =>
    UserSaveAddressParam()
      ..wa_Id = json['wa_Id'] as int?
      ..name = json['name'] as String?
      ..address = json['address'] as String?
      ..latitude = json['latitude'] as String?
      ..longitude = json['longitude'] as String?
      ..isDefault = json['isDefault'] as bool?
      ..wabaNo = json['wabaNo'] as String?
      ..isDelete = json['isDelete'] as bool?;

Map<String, dynamic> _$UserSaveAddressParamToJson(
        UserSaveAddressParam instance) =>
    <String, dynamic>{
      'wa_Id': instance.wa_Id,
      'name': instance.name,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'isDefault': instance.isDefault,
      'wabaNo': instance.wabaNo,
      'isDelete': instance.isDelete,
    };
