import 'dart:io';

import 'package:code_id_flutter/code_services/alice/alice.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:digiresto/domain/core/interfaces/i_storage.dart';
// import 'package:digiresto/infrastructure/core/alice_interceptor.dart';
// import 'package:digiresto/infrastructure/core/auth_interceptor.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import 'logger_interceptor.dart';
// import 'package:alice/alice.dart';

@module
abstract class RegisterModule {
  // @Environment(Environment.dev)
  // @Named('baseUrl')
  // String get devUrl => Endpoints.devUrl;

  // @preResolve
  // await Hive.initFlutter();

  @Environment(Environment.prod)
  @lazySingleton
  Alice get alice => Alice(showNotification: false);

  @Environment(Environment.dev)
  @lazySingleton
  Alice get aliceDev => Alice(showNotification: true);

  @lazySingleton
  HiveInterface get hive => Hive;

  @lazySingleton
  Logger get logger => Logger();

  // @lazySingleton
  // Storage get storage =>

  @Environment(Environment.dev)
  @preResolve
  @lazySingleton
  Future<Dio> dioDev(Alice alice, IStorage _storage) async {
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

    // _dio.interceptors.add(AuthInterceptor(_storage));

    _dio.interceptors.add(LoggerInterceptor(
        requestBody: true,
        request: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true));

    _dio.interceptors.add(alice.getDioInterceptor());

    return _dio;
  }

  @Environment(Environment.prod)
  @preResolve
  @lazySingleton
  Future<Dio> dio(IStorage _storage) async {
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
    // Storage _storage = Storage(Hive, Logger());

    // _dio.interceptors.add(AuthInterceptor(_storage));

    return _dio;
  }

  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @lazySingleton
  GeolocatorPlatform get goelocatorPlatform => GeolocatorPlatform.instance;

  @lazySingleton
  OneSignal get oneSignal => OneSignal.shared;
}
