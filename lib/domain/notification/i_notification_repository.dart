import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/notification/notification_failure.dart';
import 'package:digiresto/domain/notification/post_token_response.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

abstract class INotificationRepository {
  Future<Unit> setNotificationForeground(
      void Function(OSNotificationReceivedEvent) handler);
  Future<Unit> setNotificationOpened(
      void Function(OSNotificationOpenedResult) handler);
  Future<Unit> init();
  Future<String> getPushToken();
  Future<String> getPlatform();
  Future<Either<NotificationFailure, PostTokenResponse>> postUserTokenToAPI();
}
