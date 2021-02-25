class Endpoints {
  Endpoints._();

  // base url
  static const String baseUrl = "http://jsonplaceholder.typicode.com";

  // receiveTimeout
  //static const int receiveTimeout = 5000;
  static const int receiveTimeout = 20000;

  // connectTimeout
  //static const int connectionTimeout = 3000;
  static const int connectionTimeout = 15000;

  // booking endpoints
  static const String getPosts = baseUrl + "/posts";

  static const String baseUrlDigiresto = "https://dev-mobileapi.digiresto.co.id";
  static const String urlGetOtp = baseUrlDigiresto+"/auth/register/token?phoneNumber=";
  static const String urlValidateOtp = baseUrlDigiresto+"/auth/register/validateOtp";
  static const String urlLogin = baseUrlDigiresto+"/auth/login";
  static const String urlRegister = baseUrlDigiresto+"/auth/register";
  static const String urlBalance = baseUrlDigiresto+"/user/balance";
  static const String urlProfile = baseUrlDigiresto+"/user";
  static const String urlGetAllAddress = baseUrlDigiresto+"/forward?r=getalladdress";
  static const String urlRemoveAddress = baseUrlDigiresto+"/forward?r=removeaddress";
  static const String urlAddAddress = baseUrlDigiresto+"/forward?r=addaddress";
  static const String urlSetDefaultAddress = baseUrlDigiresto+"/forward?r=setdefaultaddress";
  static const String urlGetGeocode = baseUrlDigiresto+"/forward?r=getgeocode";
  //home
  static const String urlGetPromo = baseUrlDigiresto+"/forward?r=getpromo";

}