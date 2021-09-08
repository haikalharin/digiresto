// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MetaResponse _$_$_MetaResponseFromJson(Map<String, dynamic> json) {
  return _$_MetaResponse(
    version: json['version'] as String,
  );
}

Map<String, dynamic> _$_$_MetaResponseToJson(_$_MetaResponse instance) =>
    <String, dynamic>{
      'version': instance.version,
    };

_$_StatusResponse _$_$_StatusResponseFromJson(Map<String, dynamic> json) {
  return _$_StatusResponse(
    code: json['code'] as String,
    status: json['status'] as String,
    message: json['message'] as String,
    messageDisplay: json['messageDisplay'] == null
        ? null
        : StatusMessageDisplayResponse.fromJson(
            json['messageDisplay'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_StatusResponseToJson(_$_StatusResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'messageDisplay': instance.messageDisplay,
    };

_$_StatusMessageDisplayResponse _$_$_StatusMessageDisplayResponseFromJson(
    Map<String, dynamic> json) {
  return _$_StatusMessageDisplayResponse(
    id: json['id'] as String,
    en: json['en'] as String,
  );
}

Map<String, dynamic> _$_$_StatusMessageDisplayResponseToJson(
        _$_StatusMessageDisplayResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'en': instance.en,
    };
