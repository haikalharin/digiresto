class LoginPin {
  String? token;
  String? handPhone;
  int? id;
  String? name;
  String? username;
  String? email;
  String? mobilePhone;
  String? hiddenPushId;

  LoginPin(
      {this.token,
      this.handPhone,
      this.id,
      this.name,
      this.username,
      this.email,
      this.mobilePhone,
      this.hiddenPushId});
  factory LoginPin.createPin(Map<String, dynamic> object) {
    return LoginPin(
      token: object['token'],
      handPhone: object['handphone'],
      id: object['id'],
      name: object['name'],
      username: object['username'],
      email: object['email'],
      mobilePhone: object['mobilePhone'],
      hiddenPushId: object['hidden_pushid'],
    );
  }
}
