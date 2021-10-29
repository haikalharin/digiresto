import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:digiresto/domain/auth/entity/user_auth.dart';
import 'package:digiresto/domain/core/constants/network/env.dart';
import 'package:digiresto/domain/core/entity/status_api_response.dart';
import 'package:digiresto/domain/core/exceptions/exceptions.dart';
import 'package:digiresto/domain/core/interfaces/i_network_service.dart';
import 'package:digiresto/domain/core/interfaces/i_storage.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: INetworkService)
class NetworkService implements INetworkService {
  final Dio _dio;
  final Logger logger;
  final Connectivity _connectivity;
  final IStorage baseStorage;
  final Env _env;

  NetworkService(
      this._dio, this.logger, this.baseStorage, this._connectivity, this._env);

  @override
  Future<dynamic> getHttp(
      {required String path,
      String? parameter,
      Map<String, dynamic>? queryParameter,
      Map<String, dynamic>? header,
      bool useAuth = true}) async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      await baseStorage.openBox(StorageConstants.user);

      try {
        logger.d('get Http : $path');

        final Map<String, dynamic> headers = _dio.options.headers;
        headers.addAll({
          'content-type': ContentType.json.mimeType,
          'accept': ContentType.json.mimeType
        });
        if (useAuth) {
          final _userInStorage = await baseStorage.getData();
          final _userAuth = UserAuth.fromJson(_userInStorage);
          final String? security = _userAuth.token;
          if (security != null) {
            headers.addAll({'Authorization': 'Bearer $security'});
          }
        }

        if (header != null) {
          headers.addAll(header);
        }

        _dio.options.headers = headers;
        logger.d(_dio.options.headers);

        String baseUrl = await _env.getBaseUrl;
        logger.d('dio base url : $baseUrl');

        final Response response = await _dio.get(
            '$baseUrl$path${parameter ?? ""}',
            queryParameters: queryParameter);
        final responseCode = response.data['response']['code'] as String;
        await baseStorage.close();
        if (responseCode == '00' || responseCode == '000') {
          return response.data;
        } else {
          throw FailureException(
            code: response.data['response']['code'],
            message: StatusMessageDisplayResponse.fromJson(
              Map<String, dynamic>.from(
                  response.data['response']['messageDisplay']),
            ),
          );
        }
      } on DioError catch (e) {
        switch (e.type) {
          case DioErrorType.connectTimeout:
            throw TimeOutException();
          case DioErrorType.other:
            throw NetworkException(message: e.response!.data);
          default:
            if (e.response?.statusCode == 401) {
              throw AuthException(
                message: StatusMessageDisplayResponse.fromJson(
                  Map<String, dynamic>.from(
                      e.response?.data['response']['messageDisplay']),
                ),
              );
            } else {
              throw ServerException(
                code: e.response?.statusCode,
                message: e.response?.statusMessage,
              );
            }
        }
      }
    } else {
      throw NoInternetException();
    }
  }

  @override
  Future<dynamic> postHttp(
      {required String path,
      String? parameter,
      Map<String, dynamic>? queryParameter,
      dynamic content,
      String? contentType,
      Map<String, dynamic>? header,
      bool useAuth = true}) async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      try {
        await baseStorage.openBox(StorageConstants.user);
        final Map<String, dynamic> headers = {
          'content-type': ContentType.json.mimeType,
          'Accept': ContentType.json.mimeType,
        };
        if (header != null) {
          headers.addAll(header);
        }
        if (useAuth) {
          final _userInStorage = await baseStorage.getData();
          final _userAuth = UserAuth.fromJson(_userInStorage);
          final String? security = _userAuth.token;
          if (security != null) {
            headers.addAll({'Authorization': 'Bearer $security'});
          }
        }

        String baseUrl = await _env.getBaseUrl;
        logger.d('dio base url : $baseUrl');

        final Response response = await _dio.post(
          '$baseUrl$path${parameter ?? ""}',
          queryParameters: queryParameter,
          data: content,
        );
        final responseCode = response.data['response']['code'] as String;
        await baseStorage.close();
        if (responseCode == '00' || responseCode == '000') {
          return response.data;
        } else {
          throw FailureException(
            code: response.data['response']['code'],
            message: StatusMessageDisplayResponse.fromJson(
              Map<String, dynamic>.from(
                  response.data['response']['messageDisplay']),
            ),
          );
        }
      } on DioError catch (e) {
        switch (e.type) {
          case DioErrorType.connectTimeout:
            throw TimeOutException();
          case DioErrorType.other:
            throw NetworkException(message: e.response!.data);
          default:
            if (e.response?.statusCode == 401) {
              throw AuthException(
                message: StatusMessageDisplayResponse.fromJson(
                  Map<String, dynamic>.from(
                      e.response?.data['response']['messageDisplay']),
                ),
              );
            } else {
              throw ServerException(
                code: e.response?.statusCode,
                message: e.response?.statusMessage,
              );
            }
        }
      }
    } else {
      throw NoInternetException();
    }
  }

  @override
  Future<dynamic> putHttp({
    required String path,
    String? parameter,
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? content,
    String? contentType,
    Map<String, dynamic>? header,
    bool useAuth = true,
  }) async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      try {
        await baseStorage.openBox(StorageConstants.user);
        final Map<String, dynamic> headers = {
          'content-type': contentType ?? ContentType.json.mimeType,
          'Accept': ContentType.json.mimeType,
        };
        if (header != null) {
          headers.addAll(header);
        }

        if (useAuth) {
          final _userInStorage = await baseStorage.getData();
          final _userAuth = UserAuth.fromJson(_userInStorage);
          final String? security = _userAuth.token;
          if (security != null) {
            headers.addAll({'Authorization': 'Bearer $security'});
          }
        }

        _dio.options.headers = headers;

        final Response response = await _dio.put(
          '$path${parameter ?? ""}',
          queryParameters: queryParameter,
          data: content,
        );
        final responseCode = response.data['response']['code'] as String;
        await baseStorage.close();
        if (responseCode == '00' || responseCode == '000') {
          return response.data;
        } else {
          throw FailureException(
            code: response.data['response']['code'],
            message: StatusMessageDisplayResponse.fromJson(
              Map<String, dynamic>.from(
                  response.data['response']['messageDisplay']),
            ),
          );
        }
      } on DioError catch (e) {
        switch (e.type) {
          case DioErrorType.connectTimeout:
            throw TimeOutException();
          case DioErrorType.other:
            throw NetworkException(message: e.response!.data);
          default:
            if (e.response?.statusCode == 401) {
              throw AuthException(
                message: StatusMessageDisplayResponse.fromJson(
                  Map<String, dynamic>.from(
                      e.response?.data['response']['messageDisplay']),
                ),
              );
            } else {
              throw ServerException(
                code: e.response?.statusCode,
                message: e.response?.statusMessage,
              );
            }
        }
      }
    } else {
      throw NoInternetException();
    }
  }

  @override
  Future<dynamic> download(
      {required String url,
      required String downloadPath,
      Map<String, dynamic>? queryParameter,
      Map<String, dynamic>? header,
      bool useAuth = true}) async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      try {
        await baseStorage.openBox(StorageConstants.user);
        final Map<String, dynamic> headers = {
          'Accept': ContentType.binary.mimeType,
        };
        if (useAuth) {
          final _userInStorage = await baseStorage.getData();
          final _userAuth = UserAuth.fromJson(_userInStorage);
          final String? security = _userAuth.token;
          if (security != null) {
            headers.addAll({'Authorization': 'Bearer $security'});
          }
        }
        final savedDir = Directory(downloadPath);
        final bool hasExisted = await savedDir.exists();
        logger.d(hasExisted);
        if (!hasExisted) {
          await savedDir.create(recursive: true);
          logger.d('directory created');
        }
        _dio.options.headers = headers;
        final Response response = await _dio.download(url, downloadPath);
        final responseCode = response.data['response']['code'] as String;
        await baseStorage.close();
        if (responseCode == '00' || responseCode == '000') {
          return response.data;
        } else {
          throw FailureException(
            code: response.data['response']['code'],
            message: StatusMessageDisplayResponse.fromJson(
              Map<String, dynamic>.from(
                  response.data['response']['messageDisplay']),
            ),
          );
        }
      } on DioError catch (e) {
        switch (e.type) {
          case DioErrorType.connectTimeout:
            throw TimeOutException();
          case DioErrorType.other:
            throw NetworkException(message: e.response!.data);
          default:
            if (e.response?.statusCode == 401) {
              throw AuthException(
                message: StatusMessageDisplayResponse.fromJson(
                  Map<String, dynamic>.from(
                      e.response?.data['response']['messageDisplay']),
                ),
              );
            } else {
              throw ServerException(
                code: e.response?.statusCode,
                message: e.response?.statusMessage,
              );
            }
        }
      }
    } else {
      throw NoInternetException();
    }
  }
}
