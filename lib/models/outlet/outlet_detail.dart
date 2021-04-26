class OutletDetail {
  String name;
  String address;
  String phone;
  bool isOwnerLoggedIn;
  OutletDetail({
    this.name,
    this.address,
    this.phone,
    this.isOwnerLoggedIn,
  });
  factory OutletDetail.createOutletDetail(Map<String, dynamic> object) {
    return OutletDetail(
      name: object['name'],
      address: object['address'],
      phone: object['phone'],
    );
  }
}
