// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_otp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginOtp _$$_LoginOtpFromJson(Map<String, dynamic> json) => _$_LoginOtp(
      token: json['token'] as String?,
      renewtoken: json['renewtoken'] as String?,
      grantType: json['grantType'] as String?,
      handphone: json['handphone'] as String?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      mobilePhone: json['mobilePhone'] as String?,
      hiddenPushid: json['hidden_pushid'] as String?,
      hiddenDevicepairingflag: json['hidden_devicepairingflag'] as String?,
      isMember: json['isMember'] as bool,
    );

Map<String, dynamic> _$$_LoginOtpToJson(_$_LoginOtp instance) =>
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
      'hidden_pushid': instance.hiddenPushid,
      'hidden_devicepairingflag': instance.hiddenDevicepairingflag,
      'isMember': instance.isMember,
    };
