class OutletDetail {
  String name;
  String address;
  String phone;

  OutletDetail({
    this.name,
    this.address,
    this.phone,
  });
  factory OutletDetail.createOutletDetail(Map<String, dynamic> object) {
    return OutletDetail(
      name: object['name'],
      address: object['address'],
      phone: object['phone'],
    );
  }
}
