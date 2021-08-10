class OtpWame {
  String? wame;

  OtpWame({this.wame});
  factory OtpWame.createOtp(Map<String, dynamic> object) {
    return OtpWame(
      wame: object['wame'],
    );
  }
}
