import 'package:mobx/mobx.dart';
part 'otp_store.g.dart';

class OtpStore = _OtpStore with _$OtpStore;
abstract class _OtpStore with Store {
  @observable
  String otpHandphone = null;
  void setOtpHandphone(String handPhone){
    otpHandphone = handPhone;
  }

  void removeOtpHandohone(){
    otpHandphone = null;
  }
}

