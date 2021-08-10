class UserAddress {
  int? id;
  String? name;
  String? address;
  String? latitude;
  String? longitude;
  bool? isDefault;
  String? wabaNo;
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
