import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/interfaces/i_storage.dart';
import 'package:digiresto/infrastructure/core/auth_interceptor.dart';
import 'package:digiresto/infrastructure/core/storage.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import 'logger_interceptor.dart';

@module
abstract class RegisterModule {
  // @Environment(Environment.dev)
  // @Named('baseUrl')
  // String get devUrl => Endpoints.devUrl;

  // @preResolve
  // await Hive.initFlutter();

  @preResolve
  @lazySingleton
  Future<Dio> get dio async {
    Dio _dio = Dio();
    BaseOptions baseOptions = BaseOptions(
      connectTimeout: 120000,
      receiveTimeout: 60000,
      sendTimeout: 60000,
    );
    _dio.options = baseOptions;

    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        return true;
      };
      return client;
    };
    // options.
    Storage _storage = Storage(Hive, Logger());
    await _storage.openBox(StorageConstants.base);

    String? _authKey = _storage.getString(key: 'authKey');

    _dio.interceptors.add(AuthInterceptor(token: _authKey));
    await _storage.close();

    if (kDebugMode) {
      _dio.interceptors.add(LoggerInterceptor(
          requestBody: true,
          request: true,
          requestHeader: true,
          responseBody: true,
          responseHeader: true));
    }

    return _dio;
  }

  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @lazySingleton
  HiveInterface get hive => Hive;

  @lazySingleton
  Logger get logger => Logger();

  @lazySingleton
  GeolocatorPlatform get goelocatorPlatform => GeolocatorPlatform.instance;
}
