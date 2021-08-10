class OtpValidate {
  bool? isMember;

  OtpValidate({this.isMember});
  factory OtpValidate.createOtp(Map<String, dynamic> object) {
    return OtpValidate(
      isMember: object['isMember'],
    );
  }
}
