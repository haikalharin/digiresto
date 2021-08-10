class UserAddAddress {
  int? id;
  String? name;
  String? address;
  String? latitude;
  String? longitude;
  bool? isDefault;
  String? wabaNo;
  bool? isDelete;

  UserAddAddress(
      {this.id,
      this.wabaNo,
      this.name,
      this.address,
      this.latitude,
      this.longitude,
      this.isDefault,
      this.isDelete});
  factory UserAddAddress.createAddAddress(Map<String, dynamic> object) {
    return UserAddAddress(
      id: object['id'],
      wabaNo: object['waba_no'],
      name: object['name'],
      address: object['address'],
      latitude: object['latitude'],
      longitude: object['longitude'],
      isDefault: object['is_default'],
      isDelete: object['is_delete'],
    );
  }
}
