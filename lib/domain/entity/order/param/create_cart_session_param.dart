import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_cart_session_param.freezed.dart';

part 'create_cart_session_param.g.dart';

CreateCartSessionParam emptyFromJson(String str) =>
    CreateCartSessionParam.fromJson(json.decode(str));

String emptyToJson(CreateCartSessionParam data) => json.encode(data.toJson());

@freezed
class CreateCartSessionParam with _$CreateCartSessionParam {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CreateCartSessionParam({
    required CreateCartSessionQueryParam queryString,
    required CreateCartSessionBodyParam body,
  }) = _CreateCartSessionParam;

  factory CreateCartSessionParam.fromJson(Map<String, dynamic> json) =>
      _$CreateCartSessionParamFromJson(json);
}

@freezed
class CreateCartSessionBodyParam with _$CreateCartSessionBodyParam {
  const factory CreateCartSessionBodyParam(
          {required String outletName,
          required String customerName,
          required String customerPhone,
          required String customerTableNumber,
          required bool customerSmoking,
          required String customerPax,
          required String customerNote,
          required String customerCarType,
          required String customerCarColor,
          required String customerCarNumber,
          required String eta,
          required String salesType,
          required String receiptCode,
          required List<CreateUpdateCartSessionItemParam> items,
          @JsonKey(includeIfNull: false) String? mealsTypes,
          @JsonKey(includeIfNull: false) String? preOrderDate,
          @JsonKey(includeIfNull: false) bool? isCatering,
          @JsonKey(includeIfNull: false) String? excludeMerchantCategories}) =
      _CreateCartSessionBodyParam;

  factory CreateCartSessionBodyParam.fromJson(Map<String, dynamic> json) =>
      _$CreateCartSessionBodyParamFromJson(json);
}

@freezed
class CreateUpdateCartSessionItemParam with _$CreateUpdateCartSessionItemParam {
  const factory CreateUpdateCartSessionItemParam({
    required int productId,
    required List<CreateCartSessionItemModifierParam> modifiers,
    required String note,
    required int qty,
  }) = _CreateUpdateCartSessionItemParam;

  factory CreateUpdateCartSessionItemParam.fromJson(
          Map<String, dynamic> json) =>
      _$CreateUpdateCartSessionItemParamFromJson(json);
}

@freezed
class CreateCartSessionItemModifierParam
    with _$CreateCartSessionItemModifierParam {
  const factory CreateCartSessionItemModifierParam({
    required int modifierId,
    required String modifierGroupId,
    required int qty,
  }) = _CreateCartSessionItemModifierParam;

  factory CreateCartSessionItemModifierParam.fromJson(
          Map<String, dynamic> json) =>
      _$CreateCartSessionItemModifierParamFromJson(json);
}

@freezed
class CreateCartSessionQueryParam with _$CreateCartSessionQueryParam {
  const factory CreateCartSessionQueryParam() = _CreateCartSessionQueryParam;

  factory CreateCartSessionQueryParam.fromJson(Map<String, dynamic> json) =>
      _$CreateCartSessionQueryParamFromJson(json);
}
