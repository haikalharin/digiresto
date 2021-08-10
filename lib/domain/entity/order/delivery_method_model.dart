import 'dart:convert';

class DeliveryMethod {
  String? provider;
  String? name;
  List<dynamic>? shipmentMethods;
  Map<String, dynamic>? param;
  String? paramString;

  DeliveryMethod({
    this.provider,
    this.name,
    this.shipmentMethods,
    this.param,
    this.paramString,
  });
  factory DeliveryMethod.create(Map<String, dynamic> object) {
    return DeliveryMethod(
      provider: object['provider'],
      name: object['name'],
      shipmentMethods: object['shipmentMethods'],
      param: object['param'],
      paramString: jsonEncode(object['param']),
    );
  }
}
