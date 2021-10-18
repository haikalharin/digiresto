import 'package:hive/hive.dart';

class Endpoints {
  Endpoints._();

  // receiveTimeout
  //static const int receiveTimeout = 5000;
  static const int receiveTimeout = 30000;

  // connectTimeout
  //static const int connectionTimeout = 3000;
  static const int connectionTimeout = 30000;
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
  static const String urlUpdateProfile = "/user/updateProfile";
  static const String urlTopupList = "/user/topup/list";
  static const String urlPaymentHistory = "/user/account/history";
  static const String urlGetCancelReasons = "/user/cancel/reasons?lang=";
  static const String urlPostPushToken = '/user/notification/register';

  static String get devUrl {
    Box box = Hive.box('settings');
    String? devUrl = box.get('devUrl');
    if (devUrl == null) {
      return Endpoints.baseUrlDigiresto;
    } else {
      return devUrl;
    }
  }

  static const String urlForward = '/forward';
  static const Map<String, dynamic> urlGetAllAddress = {"r": "getalladdress"};
  static const Map<String, dynamic> urlRemoveAddress = {"r": "removeaddress"};
  static const Map<String, dynamic> urlAddAddress = {"r": "addaddress"};
  static const Map<String, dynamic> urlSetDefaultAddress = {
    "r": "setdefaultaddress"
  };
  static const Map<String, dynamic> urlGetGeocode = {"r": "getgeocode"};
  static const Map<String, dynamic> urlTopup = {"r": "topup"};
  static const Map<String, dynamic> urlTopupPending = {"r": "topuppending"};
  static const Map<String, dynamic> urlCancelBilling = {"r": "cancelbilling"};
  //home
  static const Map<String, dynamic> urlGetPromo = {"r": "getpromo"};
  static const Map<String, dynamic> urlGetHotPromo = {"r": "gethotpromo"};
  static const Map<String, dynamic> urlGetStaticBanner = {
    "r": "getstaticbanner"
  };
  static const Map<String, dynamic> urlGetPromoOutlet = {"r": "getpromooutlet"};
  static const Map<String, dynamic> urlGetOutletByLocation = {
    "r": "v2/getoutletbylocation"
  };
  static const Map<String, dynamic> urlGetOutletByCategory = {
    "r": "v2/getoutletbycategory"
  };
  static const Map<String, dynamic> urlGetOutletByMerchant = {
    "r": "v2/getoutletbymerchant"
  };
  //order
  static const Map<String, dynamic> urlGetDetailOutlet = {
    "r": "v2/getdetailoutlet"
  };
  static const Map<String, dynamic> urlGetOutletProductCategory = {
    "r": "v2/getproductcategory"
  };
  static const Map<String, dynamic> urlGetListPromoOutlet = {
    "r": "v2/getpromooutlet"
  };
  static const Map<String, dynamic> urlGetListVoucherOutlet = {
    "r": "v2/getvoucheroutlet"
  };
  static const Map<String, dynamic> urlGetProduct = {"r": "v2/getproduct"};
  static const Map<String, dynamic> urlGetCartSession = {"r": "getcartsession"};
  static const Map<String, dynamic> urlCreateCartSession = {
    "r": "createcartsession"
  };
  static const Map<String, dynamic> urlUpdateCartSession = {
    "r": "updatecartsession"
  };
  static const Map<String, dynamic> urlGetPaymentMethod = {
    "r": "getpaymentmethods"
  };
  static const Map<String, dynamic> urlCheckoutCartSession = {
    "r": "checkoutv2"
  };
  static const Map<String, dynamic> urlDeliveryInquiry = {
    "r": "deliveryinquiryv2"
  };
  //transaction
  static const Map<String, dynamic> urlGetTransactionPending = {
    "r": "transactionpending"
  };
  static const Map<String, dynamic> urlGetTransactionHistory = {
    "r": "transactionhistory"
  };
  static const Map<String, dynamic> urlGetTransaction = {
    "r": "transactionmobile"
  };
  static const Map<String, dynamic> urlCancelTransaction = {
    "r": "canceltransaction"
  };
  static const Map<String, dynamic> urlAcceptTransaction = {
    "r": "donetransaction"
  };
  static const Map<String, dynamic> urlOngoingTransaction = {
    "r": "ongoingtransaction"
  };
  static const Map<String, dynamic> urlAddFavoriteTransaction = {
    "r": "addFavorite"
  };
  static const Map<String, dynamic> urlTransactionRating = {
    "r": "transactionrating"
  };
  static const Map<String, dynamic> urlGetOrderProcessCount = {
    "r": "transactionhistorycount"
  };
}
