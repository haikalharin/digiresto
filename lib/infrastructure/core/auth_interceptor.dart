import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  final String? token;
  AuthInterceptor({this.token});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    Map<String, dynamic> headers = options.headers;

    if (token != null) {
      headers.addAll({"Authorization": "Bearer $token"});
    }
    // else {
    //   var _token =
    //       "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJncmFudFR5cGUiOiJhdXRob3JpemF0aW9uX2NvZGUiLCJoYW5kcGhvbmUiOiIwODU3NzkwODg0MzEiLCJpYXQiOjE2Mjg5MDkxMTIsImV4cCI6MTYyOTUxMzkxMn0.9z_ibXOLzxCqu_PQrXOnZcawaK3lSQPw0JY8rbup6kg";

    //   headers.addAll({"Authorization": "Bearer $_token"});
    // }
    options.headers = headers;

    super.onRequest(options, handler);
  }
}
