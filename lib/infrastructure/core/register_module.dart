import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:digiresto/infrastructure/core/logger_interceptor.dart';

@module
abstract class RegisterModule {
  @Named('baseUrl')
  String get baseUrl => 'https://dev-mobileapi.digimitra.id';

  @lazySingleton
  Dio dio(@Named('baseUrl') String baseUrl) {
    final _dio = Dio();
    final options = BaseOptions(
      connectTimeout: 120000,
      receiveTimeout: 60000,
      sendTimeout: 60000,
      headers: null,
      baseUrl: baseUrl,
    );
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
    // if (kDebugMode) {
    _dio.interceptors.add(
      LoggerInterceptor(
        requestBody: true,
        request: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
      ),
    );

    return _dio;
  }

  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @lazySingleton
  Logger get logger => Logger();

  @lazySingleton
  HiveInterface get hive => Hive;

  @lazySingleton
  GeolocatorPlatform get geolocator => GeolocatorPlatform.instance;
}
