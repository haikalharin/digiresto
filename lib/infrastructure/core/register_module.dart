import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import 'logger_interceptor.dart';

@module
abstract class RegisterModule {
  @Environment(Environment.dev)
  @Named('baseUrl')
  String get baseUrlDev => Endpoints.baseUrlDigiresto;

  @Environment(Environment.prod)
  @Named('baseUrl')
  String get baseUrl => Endpoints.baseUrlDigirestoProd;

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
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJncmFudFR5cGUiOiJhdXRob3JpemF0aW9uX2NvZGUiLCJoYW5kcGhvbmUiOiIwODU3NzkwODg0MzEiLCJpYXQiOjE2Mjg2NDczODgsImV4cCI6MTYyOTI1MjE4OH0.QHEH2mf32TKa1-lC7HIvzV43lU7YiGK-1sbf6QAgjI8";

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

  @lazySingleton
  Logger get logger => Logger();
}
