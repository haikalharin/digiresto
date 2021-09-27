// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_favorite_transaction_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddFavoriteTransactionParam _$$_AddFavoriteTransactionParamFromJson(
        Map<String, dynamic> json) =>
    _$_AddFavoriteTransactionParam(
      queryString: AddFavoriteTransactionQueryParam.fromJson(
          json['query_string'] as Map<String, dynamic>),
      body: AddFavoriteTransactionBodyParam.fromJson(
          json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AddFavoriteTransactionParamToJson(
        _$_AddFavoriteTransactionParam instance) =>
    <String, dynamic>{
      'query_string': instance.queryString,
      'body': instance.body,
    };

_$_AddFavoriteTransactionBodyParam _$$_AddFavoriteTransactionBodyParamFromJson(
        Map<String, dynamic> json) =>
    _$_AddFavoriteTransactionBodyParam(
      receiptCode: json['receiptCode'] as String,
    );

Map<String, dynamic> _$$_AddFavoriteTransactionBodyParamToJson(
        _$_AddFavoriteTransactionBodyParam instance) =>
    <String, dynamic>{
      'receiptCode': instance.receiptCode,
    };

_$_AddFavoriteTransactionQueryParam
    _$$_AddFavoriteTransactionQueryParamFromJson(Map<String, dynamic> json) =>
        _$_AddFavoriteTransactionQueryParam();

Map<String, dynamic> _$$_AddFavoriteTransactionQueryParamToJson(
        _$_AddFavoriteTransactionQueryParam instance) =>
    <String, dynamic>{};
