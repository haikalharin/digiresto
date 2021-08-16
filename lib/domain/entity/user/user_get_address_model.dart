import 'package:hive/hive.dart';

part 'user_get_address_model.g.dart';

@HiveType(typeId: 0)
class UserAddress extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? address;
  @HiveField(3)
  String? latitude;
  @HiveField(4)
  String? longitude;
  @HiveField(5)
  bool? isDefault;
  @HiveField(6)
  String? wabaNo;
  @HiveField(7)
  bool? isDelete;

  UserAddress(
      {this.id,
      this.name,
      this.address,
      this.latitude,
      this.longitude,
      this.wabaNo,
      this.isDelete,
      this.isDefault});
  factory UserAddress.createAddress(Map<String, dynamic> object) {
    return UserAddress(
      id: object['id'],
      name: object['name'],
      address: object['address'],
      latitude: object['latitude'],
      longitude: object['longitude'],
      isDefault: object['is_default'],
      wabaNo: object['waba_no'],
      isDelete: object['is_delete'],
    );
  }
}
