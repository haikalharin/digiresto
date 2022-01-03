import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_save_address_param.g.dart';

@JsonSerializable(explicitToJson: true)
class UserSaveAddressParam {
  int? wa_Id;
  String? name;
  String? address;
  String? latitude;
  String? longitude;
  bool? isDefault;
  String? wabaNo;
  bool? isDelete;

  Map<String, dynamic> toMap() => _$UserSaveAddressParamToJson(this);
}
