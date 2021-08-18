// To parse this JSON data, do
//
//     final empty = emptyFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_cart_session_param.freezed.dart';
part 'update_cart_session_param.g.dart';

UpdateCartSessionParam emptyFromJson(String str) =>
    UpdateCartSessionParam.fromJson(json.decode(str));

String emptyToJson(UpdateCartSessionParam data) => json.encode(data.toJson());

@freezed
abstract class UpdateCartSessionParam with _$UpdateCartSessionParam {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory UpdateCartSessionParam({
    required UpdateCartSessionQueryParam queryString,
    required UpdateCartSessionBodyParam body,
  }) = _UpdateCartSessionParam;

  factory UpdateCartSessionParam.fromJson(Map<String, dynamic> json) =>
      _$UpdateCartSessionParamFromJson(json);
}

@freezed
abstract class UpdateCartSessionBodyParam with _$UpdateCartSessionBodyParam {
  const factory UpdateCartSessionBodyParam({
    required String paymentType,
    required String customerNote,
    required List<UpdateCartSessionBodyItemParam> items,
  }) = _UpdateCartSessionBodyParam;

  factory UpdateCartSessionBodyParam.fromJson(Map<String, dynamic> json) =>
      _$UpdateCartSessionBodyParamFromJson(json);
}

@freezed
abstract class UpdateCartSessionBodyItemParam
    with _$UpdateCartSessionBodyItemParam {
  const factory UpdateCartSessionBodyItemParam({
    required int productId,
    required List<UpdateCartSessionBodyItemModifierParam> modifiers,
    required String note,
    required int qty,
  }) = _UpdateCartSessionBodyItemParam;

  factory UpdateCartSessionBodyItemParam.fromJson(Map<String, dynamic> json) =>
      _$UpdateCartSessionBodyItemParamFromJson(json);
}

@freezed
abstract class UpdateCartSessionBodyItemModifierParam
    with _$UpdateCartSessionBodyItemModifierParam {
  const factory UpdateCartSessionBodyItemModifierParam({
    required int modifierId,
    required String modifierGroupId,
    required int qty,
  }) = _UpdateCartSessionBodyItemModifierParam;

  factory UpdateCartSessionBodyItemModifierParam.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateCartSessionBodyItemModifierParamFromJson(json);
}

@freezed
abstract class UpdateCartSessionQueryParam with _$UpdateCartSessionQueryParam {
  const factory UpdateCartSessionQueryParam({
    required String sessionId,
  }) = _UpdateCartSessionQueryParam;

  factory UpdateCartSessionQueryParam.fromJson(Map<String, dynamic> json) =>
      _$UpdateCartSessionQueryParamFromJson(json);
}
