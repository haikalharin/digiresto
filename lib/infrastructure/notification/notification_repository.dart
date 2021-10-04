import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/notification/i_notification_repository.dart';
import 'package:digiresto/domain/notification/notification_failure.dart';
import 'package:digiresto/domain/notification/notification_data.dart';
import 'package:injectable/injectable.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

@LazySingleton(as: INotificationRepository)
class NotificationRepository implements INotificationRepository {
  final OneSignal _platform;
  NotificationRepository(this._platform);
  @override
  Stream<Either<NotificationFailure, NotificationData>> notification() {
    // TODO: implement notification
    throw UnimplementedError();
  }

  @override
  Stream<Either<NotificationFailure, NotificationData>> notificationOpened() {
    // TODO: implement notificationOpened
    throw UnimplementedError();
  }
}
