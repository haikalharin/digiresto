// To parse this JSON data, do
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_inquiry_param.freezed.dart';
part 'delivery_inquiry_param.g.dart';

DeliveryInquiryParam emptyFromJson(String str) =>
    DeliveryInquiryParam.fromJson(json.decode(str));

String emptyToJson(DeliveryInquiryParam data) => json.encode(data.toJson());

@freezed
class DeliveryInquiryParam with _$DeliveryInquiryParam {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DeliveryInquiryParam({
    required DeliveryInquiryQueryParam queryString,
    required DeliveryInquiryBodyParam body,
  }) = _DeliveryInquiryParam;

  factory DeliveryInquiryParam.fromJson(Map<String, dynamic> json) =>
      _$DeliveryInquiryParamFromJson(json);
}

@freezed
class DeliveryInquiryBodyParam with _$DeliveryInquiryBodyParam {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DeliveryInquiryBodyParam({
    required DeliveryInquiryBodyCustomerParam customer,
    required int weight,
  }) = _DeliveryInquiryBodyParam;

  factory DeliveryInquiryBodyParam.fromJson(Map<String, dynamic> json) =>
      _$DeliveryInquiryBodyParamFromJson(json);
}

@freezed
class DeliveryInquiryBodyCustomerParam with _$DeliveryInquiryBodyCustomerParam {
  const factory DeliveryInquiryBodyCustomerParam({
    required List<String> location,
  }) = _DeliveryInquiryBodyCustomerParam;

  factory DeliveryInquiryBodyCustomerParam.fromJson(
          Map<String, dynamic> json) =>
      _$DeliveryInquiryBodyCustomerParamFromJson(json);
}

@freezed
class DeliveryInquiryQueryParam with _$DeliveryInquiryQueryParam {
  const factory DeliveryInquiryQueryParam({
    required String outletName,
  }) = _DeliveryInquiryQueryParam;

  factory DeliveryInquiryQueryParam.fromJson(Map<String, dynamic> json) =>
      _$DeliveryInquiryQueryParamFromJson(json);
}
