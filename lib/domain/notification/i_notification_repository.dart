import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/notification/notification_data.dart';
import 'package:digiresto/domain/notification/notification_failure.dart';

abstract class INotificationRepository {
  Stream<Either<NotificationFailure, NotificationData>> notification();
  Stream<Either<NotificationFailure, NotificationData>> notificationOpened();
}
