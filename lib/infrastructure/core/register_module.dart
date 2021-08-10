import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import 'logger_interceptor.dart';

@injectable
class RegisterModule {
  @Named('baseUrl')
  String get baseUrl => 'https://jsonplaceholder.typicode.com';
  @lazySingleton
  Dio dio(@Named('baseUrl') String baseUrl) {
    Dio _dio = Dio();
    BaseOptions options = BaseOptions(
        connectTimeout: 120000, receiveTimeout: 60000, sendTimeout: 60000);

    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        return baseUrl.contains(host);
      };
      return client;
    };
    // options.
    _dio.options = options;
    var _token =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJncmFudFR5cGUiOiJhdXRob3JpemF0aW9uX2NvZGUiLCJoYW5kcGhvbmUiOiIwODU3ODIwMzE2MzMiLCJpYXQiOjE2Mjg1NzI4MDcsImV4cCI6MTYyOTE3NzYwN30.IinPbzc5GsYAp6Mb9D6ZP5DM85TRfERO1GSNbCT6BcY";

    _dio.options.headers['content-Type'] = 'application/json';
    _dio.options.headers["authorization"] = "token $_token";

    // if (kDebugMode) {
    _dio.interceptors.add(LoggerInterceptor(
        requestBody: true,
        request: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true));

    return _dio;
  }

  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @lazySingleton
  HiveInterface get hive => Hive;
}
