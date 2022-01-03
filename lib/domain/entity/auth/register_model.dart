class Register {
  String? code;
  String? status;
  String? message;

  Register({this.code, this.status, this.message});
  factory Register.createUser(Map<String, dynamic> object) {
    return Register(
      code: object['code'],
      status: object['status'],
      message: object['message'],
    );
  }
}
