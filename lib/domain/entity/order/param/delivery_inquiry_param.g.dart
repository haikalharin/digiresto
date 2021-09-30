// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_inquiry_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryInquiryParam _$_$_DeliveryInquiryParamFromJson(
    Map<String, dynamic> json) {
  return _$_DeliveryInquiryParam(
    queryString: DeliveryInquiryQueryParam.fromJson(
        json['query_string'] as Map<String, dynamic>),
    body:
        DeliveryInquiryBodyParam.fromJson(json['body'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DeliveryInquiryParamToJson(
        _$_DeliveryInquiryParam instance) =>
    <String, dynamic>{
      'query_string': instance.queryString,
      'body': instance.body,
    };

_$_DeliveryInquiryBodyParam _$_$_DeliveryInquiryBodyParamFromJson(
    Map<String, dynamic> json) {
  return _$_DeliveryInquiryBodyParam(
    customer: DeliveryInquiryBodyCustomerParam.fromJson(
        json['customer'] as Map<String, dynamic>),
    weight: json['weight'] as int,
  );
}

Map<String, dynamic> _$_$_DeliveryInquiryBodyParamToJson(
        _$_DeliveryInquiryBodyParam instance) =>
    <String, dynamic>{
      'customer': instance.customer,
      'weight': instance.weight,
    };

_$_DeliveryInquiryBodyCustomerParam
    _$_$_DeliveryInquiryBodyCustomerParamFromJson(Map<String, dynamic> json) {
  return _$_DeliveryInquiryBodyCustomerParam(
    location:
        (json['location'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_DeliveryInquiryBodyCustomerParamToJson(
        _$_DeliveryInquiryBodyCustomerParam instance) =>
    <String, dynamic>{
      'location': instance.location,
    };

_$_DeliveryInquiryQueryParam _$_$_DeliveryInquiryQueryParamFromJson(
    Map<String, dynamic> json) {
  return _$_DeliveryInquiryQueryParam(
    outletName: json['outletName'] as String,
  );
}

Map<String, dynamic> _$_$_DeliveryInquiryQueryParamToJson(
        _$_DeliveryInquiryQueryParam instance) =>
    <String, dynamic>{
      'outletName': instance.outletName,
    };
