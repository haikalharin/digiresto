// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserAuth _$$_UserAuthFromJson(Map<String, dynamic> json) => _$_UserAuth(
      token: json['token'] as String?,
      renewtoken: json['renewtoken'] as String?,
      grantType: json['grantType'] as String?,
      handphone: json['handphone'] as String?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      mobilePhone: json['mobilePhone'] as String?,
    );

Map<String, dynamic> _$$_UserAuthToJson(_$_UserAuth instance) =>
    <String, dynamic>{
      'token': instance.token,
      'renewtoken': instance.renewtoken,
      'grantType': instance.grantType,
      'handphone': instance.handphone,
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'mobilePhone': instance.mobilePhone,
    };
