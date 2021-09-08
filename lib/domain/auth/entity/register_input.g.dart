// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterInput _$_$_RegisterInputFromJson(Map<String, dynamic> json) {
  return _$_RegisterInput(
    credential: json['credential'] as String,
    name: json['name'] as String,
    accountNumber: json['accountNumber'] as String,
    email: json['email'] as String,
    pushId: json['pushId'] as String,
    uid: json['uid'] as String,
  );
}

Map<String, dynamic> _$_$_RegisterInputToJson(_$_RegisterInput instance) =>
    <String, dynamic>{
      'credential': instance.credential,
      'name': instance.name,
      'accountNumber': instance.accountNumber,
      'email': instance.email,
      'pushId': instance.pushId,
      'uid': instance.uid,
    };
