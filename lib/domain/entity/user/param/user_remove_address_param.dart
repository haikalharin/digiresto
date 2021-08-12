import 'package:json_annotation/json_annotation.dart';

part 'user_remove_address_param.g.dart';

@JsonSerializable(explicitToJson: true)
class UserRemoveAddressParam {
  String wa_id;
  String waba_no;
  int id;
  UserRemoveAddressParam({
    required this.wa_id,
    required this.waba_no,
    required this.id,
  });

  Map<String, dynamic> toMap() => _$UserRemoveAddressParamToJson(this);
}
