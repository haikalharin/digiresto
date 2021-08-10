class UserRemoveAddress {
  String? code;
  String? status;
  String? message;

  UserRemoveAddress({this.code, this.status, this.message});
  factory UserRemoveAddress.createUserRemoveAddress(
      Map<String, dynamic> object) {
    return UserRemoveAddress(
      code: object['code'],
      status: object['status'],
      message: object['message'],
    );
  }
}
