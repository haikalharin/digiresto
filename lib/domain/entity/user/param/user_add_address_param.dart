import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_add_address_param.g.dart';

@JsonSerializable(explicitToJson: true)
class UserAddAddressParam {
  String wa_id;
  String waba_no;
  String name;
  String address;
  String latitude;
  String longitude;
  bool is_default;
  UserAddAddressParam({
    required this.wa_id,
    required this.waba_no,
    required this.name,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.is_default,
  });

  Map<String, dynamic> toMap() => _$UserAddAddressParamToJson(this);
}
