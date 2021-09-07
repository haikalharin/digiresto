import 'package:hive/hive.dart';

class Endpoints {
  Endpoints._();

  // base url
  static const String baseUrl = "http://jsonplaceholder.typicode.com";

  // receiveTimeout
  //static const int receiveTimeout = 5000;
  static const int receiveTimeout = 30000;

  // connectTimeout
  //static const int connectionTimeout = 3000;
  static const int connectionTimeout = 30000;

  // booking endpoints
  static const String getPosts = baseUrl + "/posts";
  static const String nonUserClientSecret = ":d1g1M0b1l3!#";
  static const String baseUrlDigiresto =
      "https://dev-mobileapi.digiresto.co.id";
  static const String baseUrlDigirestoProd =
      "https://mobileapi.digiresto.co.id";

  static const String urlGetOtp = "/auth/register/token?phoneNumber=";
  static const String urlValidateOtp = "/auth/register/validateOtp";
  static const String urlLoginOtp = "/auth/register/loginOtp";
  static const String urlLogin = "/auth/login";
  static const String urlLogout = "/auth/logout";
  static const String urlRegister = "/auth/register";
  static const String urlBalance = "/user/balance";
  static const String urlCreditHistory = "/user/account/history";
  static const String urlProfile = "/user";
  static const String urlGetAllAddress = "/forward?r=getalladdress";
  static const String urlRemoveAddress = "/forward?r=removeaddress";
  static const String urlAddAddress = "/forward?r=addaddress";
  static const String urlSetDefaultAddress = "/forward?r=setdefaultaddress";
  static const String urlGetGeocode = "/forward?r=getgeocode";
  static const String urlUpdateProfile = "/user/updateProfile";
  static const String urlTopupList = "/user/topup/list";
  static const String urlTopup = "/forward?r=topup";
  static const String urlTopupPending = "/forward?r=topuppending";
  static const String urlCancelBilling = "/forward?r=cancelbilling";
  static const String urlPaymentHistory = "/user/account/history";

  //home
  static const String urlGetPromo = "/forward?r=getpromo";
  static const String urlGetHotPromo = "/forward?r=gethotpromo";
  static const String urlGetStaticBanner = "/forward?r=getstaticbanner";
  static const String urlGetPromoOutlet = "/forward?r=getpromooutlet";
  static const String urlGetOutletByLocation =
      "/forward?r=v2/getoutletbylocation";
  static const String urlGetOutletByCategory =
      "/forward?r=v2/getoutletbycategory";

  //order
  static const String urlGetDetailOutlet = "/forward?r=v2/getdetailoutlet";
  static const String urlGetOutletProductCategory =
      "/forward?r=v2/getproductcategory";
  static const String urlGetListPromoOutlet = "/forward?r=v2/getpromooutlet";
  static const String urlGetListVoucherOutlet =
      "/forward?r=v2/getvoucheroutlet";
  static const String urlGetProduct = "/forward?r=v2/getproduct";
  static const String urlCreateCartSession = "/forward?r=createcartsession";
  static const String urlUpdateCartSession = "/forward?r=updatecartsession";
  static const String urlGetPaymentMethod = "/forward?r=getpaymentmethods";
  static const String urlCheckoutCartSession = "/forward?r=checkoutv2";
  static const String urlDeliveryInquiry = "/forward?r=deliveryinquiryv2";

  // transaction
  static const String urlGetTransactionPending =
      "/forward?r=transactionpending";
  static const String urlGetTransactionHistory =
      "/forward?r=transactionhistory";
  static const String urlGetTransaction = "/forward?r=transactionmobile";
  static const String urlCancelTransaction = "/forward?r=canceltransaction";
  static const String urlAcceptTransaction = "/forward?r=donetransaction";
  static const String urlOngoingTransaction = "/forward?r=ongoingtransaction";
  static const String urlGetCancelReasons = "/user/cancel/reasons?lang=";
  static String get devUrl {
    Box box = Hive.box('settings');
    String? devUrl = box.get('devUrl');
    if (devUrl == null) {
      return Endpoints.baseUrlDigiresto;
    } else {
      return devUrl;
    }
  }
}
