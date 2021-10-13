import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/exceptions/exceptions.dart';
import 'package:digiresto/domain/core/interfaces/i_network_service.dart';
import 'package:digiresto/domain/core/interfaces/i_storage.dart';
import 'package:digiresto/domain/notification/i_notification_repository.dart';
import 'package:digiresto/domain/notification/notification_failure.dart';
import 'package:digiresto/domain/notification/post_token_response.dart';
import 'package:digiresto/infrastructure/core/globals.dart';
import 'package:digiresto/main.dart';
import 'package:injectable/injectable.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: INotificationRepository)
class NotificationRepository implements INotificationRepository {
  final OneSignal _oneSignal;
  final IStorage _storage;
  final INetworkService _networkService;
  final Logger logger;
  NotificationRepository(
      this._oneSignal, this._networkService, this._storage, this.logger);

  @override
  Future<Unit> init() async {
    await _oneSignal.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);
    final appIdMap = {
      Environment.prod: "f0e09d72-7f33-4de6-8d15-89c5f86e8e27",
      Environment.dev: "541caaad-06c6-44d4-a129-31358391b306"
    };
    await _oneSignal.setAppId(appIdMap[Globals.env]!);
    final status = await _oneSignal.getDeviceState();
    final String? osUserID = status?.userId;
    await _storage.openBox(StorageConstants.base);
    await _storage.putString(key: 'playerId', value: osUserID!);
    await _storage.close();

    _oneSignal.promptUserForPushNotificationPermission().then((accepted) {
      print("Accepted permission: $accepted");
    });

    return unit;
  }

  @override
  Future<String> getPlatform() async {
    if (Platform.isAndroid) {
      return "android";
    } else if (Platform.isIOS) {
      return "ios";
    }
    return "";
  }

  @override
  Future<String> getPushToken() async {
    await _storage.openBox(StorageConstants.base);
    final result = _storage.getString(key: 'playerId');
    await _storage.close();
    return result ?? '';
  }

  @override
  Future<Unit> setNotificationForeground(
      void Function(OSNotificationReceivedEvent) handler) async {
    _oneSignal.setNotificationWillShowInForegroundHandler(handler);
    return unit;
  }

  @override
  Future<Unit> setNotificationOpened(
      void Function(OSNotificationOpenedResult) handler) async {
    _oneSignal.setNotificationOpenedHandler(handler);
    return unit;
  }

  @override
  Future<Either<NotificationFailure, PostTokenResponse>>
      postUserTokenToAPI() async {
    String apiUrl = Endpoints.urlPostPushToken;

    try {
      logger.d({
        "token": await getPushToken(),
        "platform": await getPlatform(),
      });
      final apiResult = await _networkService.postHttp(
        path: apiUrl,
        content: {
          "token": await getPushToken(),
          "platform": await getPlatform(),
        },
      );
      final userData = (apiResult as Map<String, dynamic>)['response'];
      final response = PostTokenResponse.fromJson(Map.from(userData));
      if (response.code != "00") {
        return left(NotificationFailure.serverError());
      }
      return right(response);
    } on ServerException catch (_) {
      return left(NotificationFailure.serverError());
    } on NoInternetException catch (_) {
      return left(NotificationFailure.noInternet());
    } catch (e) {
      return left(NotificationFailure.serverError());
    }
  }
}
