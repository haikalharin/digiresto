import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_favorite_transaction_param.freezed.dart';
part 'add_favorite_transaction_param.g.dart';

AddFavoriteTransactionParam emptyFromJson(String str) =>
    AddFavoriteTransactionParam.fromJson(json.decode(str));

String emptyToJson(AddFavoriteTransactionParam data) =>
    json.encode(data.toJson());

@freezed
class AddFavoriteTransactionParam with _$AddFavoriteTransactionParam {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AddFavoriteTransactionParam({
    required AddFavoriteTransactionQueryParam queryString,
    required AddFavoriteTransactionBodyParam body,
  }) = _AddFavoriteTransactionParam;

  factory AddFavoriteTransactionParam.fromJson(Map<String, dynamic> json) =>
      _$AddFavoriteTransactionParamFromJson(json);
}

@freezed
class AddFavoriteTransactionBodyParam with _$AddFavoriteTransactionBodyParam {
  const factory AddFavoriteTransactionBodyParam({
    required String receiptCode,
  }) = _AddFavoriteTransactionBodyParam;

  factory AddFavoriteTransactionBodyParam.fromJson(Map<String, dynamic> json) =>
      _$AddFavoriteTransactionBodyParamFromJson(json);
}

@freezed
class AddFavoriteTransactionQueryParam with _$AddFavoriteTransactionQueryParam {
  const factory AddFavoriteTransactionQueryParam() =
      _AddFavoriteTransactionQueryParam;

  factory AddFavoriteTransactionQueryParam.fromJson(
          Map<String, dynamic> json) =>
      _$AddFavoriteTransactionQueryParamFromJson(json);
}
