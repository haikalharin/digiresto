import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'create_cart_session_param.dart';

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
    required String? paymentType,
    required String? customerNote,
    required String? customerPax,
    required String? customerSmoking,
    required UpdateCartSessionBodyDeliveryParam? delivery,
    required String? eta,
    required List<String>? promos,
    required String? salesType,
    required List<CreateUpdateCartSessionItemParam>? items,
  }) = _UpdateCartSessionBodyParam;

  factory UpdateCartSessionBodyParam.fromJson(Map<String, dynamic> json) =>
      _$UpdateCartSessionBodyParamFromJson(json);
}

@freezed
abstract class UpdateCartSessionBodyDeliveryParam
    with _$UpdateCartSessionBodyDeliveryParam {
  const factory UpdateCartSessionBodyDeliveryParam({
    required String provider,
    required int price,
    required String address,
    required String shipmentMethod,
    required List<String> location,
  }) = _UpdateCartSessionBodyDeliveryParam;

  factory UpdateCartSessionBodyDeliveryParam.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateCartSessionBodyDeliveryParamFromJson(json);
}

@freezed
abstract class UpdateCartSessionQueryParam with _$UpdateCartSessionQueryParam {
  const factory UpdateCartSessionQueryParam({
    required String sessionId,
  }) = _UpdateCartSessionQueryParam;

  factory UpdateCartSessionQueryParam.fromJson(Map<String, dynamic> json) =>
      _$UpdateCartSessionQueryParamFromJson(json);
}
