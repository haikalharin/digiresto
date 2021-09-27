part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.newNotification(
      NotificationData notification) = _NewNotification;
  const factory NotificationEvent.notificationOpened(
      NotificationData notification) = _NotificationOpened;
  const factory NotificationEvent.getListNotification() = _GetListNotification;
}
