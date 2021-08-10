class UserProfile {
  int? id;
  String? name;
  String? username;
  String? email;
  String? mobilePhone;
  String? hiddenPushId;

  UserProfile(
      {this.id,
      this.name,
      this.username,
      this.email,
      this.mobilePhone,
      this.hiddenPushId});
  factory UserProfile.createUserProfile(Map<String, dynamic> object) {
    return UserProfile(
      id: object['id'],
      name: object['name'],
      username: object['username'],
      email: object['email'],
      mobilePhone: object['mobilePhone'],
      hiddenPushId: object['hidden_pushid'],
    );
  }
}
