class UserProfile {
  String token;
  String handPhone;
  int id;
  String name;
  String username;
  String email;
  String mobilePhone;
  String hiddenPushId;

  UserProfile({this.token,this.handPhone,this.id,this.name,this.username,this.email,this.mobilePhone,this.hiddenPushId});
  factory UserProfile.createUserProfile(Map<String,dynamic> object){
    return UserProfile(
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