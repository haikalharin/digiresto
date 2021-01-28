class UserBalance {
  String username;
  String balance;

  UserBalance({this.username,this.balance});
  factory UserBalance.createBalance(Map<String,dynamic> object){
    return UserBalance(
      username: object['username'],
      balance: object['balance'],
    );
  }
}