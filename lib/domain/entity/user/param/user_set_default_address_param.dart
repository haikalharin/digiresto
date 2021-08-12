import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_set_default_address_param.g.dart';

@JsonSerializable(explicitToJson: true)
class UserSetDefaultAddressParam {
  String wa_id;
  String waba_no;
  int id;
  UserSetDefaultAddressParam({
    required this.wa_id,
    required this.waba_no,
    required this.id,
  });

  Map<String, dynamic> toMap() => _$UserSetDefaultAddressParamToJson(this);
}
