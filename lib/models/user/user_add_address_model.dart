class UserAddAddress {
  String waId;
  String wabaNo;
  String name;
  String address;
  String latitude;
  String longitude;
  bool isDefault;

  UserAddAddress({this.waId,this.wabaNo,this.name,this.address,this.latitude,this.longitude,this.isDefault});
  factory UserAddAddress.createAddAddress(Map<String,dynamic> object){
    return UserAddAddress(
      waId: object['wa_id'],
      wabaNo: object['waba_no'],
      name: object['name'],
      address: object['address'],
      latitude: object['latitude'],
      longitude: object['longitude'],
      isDefault: object['is_default'],
    );
  }
}