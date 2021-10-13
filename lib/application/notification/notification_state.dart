// part of 'notification_bloc.dart';

// @freezed
// class NotificationState with _$NotificationState {
//   const NotificationState._();
//   const factory NotificationState({
//     required IList<NotificationData> notifications,
//     required Option<OSNotificationOpenedResult> notificationOpenedOption,
//     required Option<Either<NotificationFailure, Unit>> fetchFailureOrUnitOption,
//     required bool isLoading,
//   }) = _NotificationState;

//   factory NotificationState.init() {
//     return NotificationState(
//       notifications: IList.from([]),
//       notificationOpenedOption: none(),
//       fetchFailureOrUnitOption: none(),
//       isLoading: false,
//     );
//   }

//   Either<Unit, IList<NotificationData>> get emptyOrNotifications {
//     if (notifications.isEmpty)
//       return left(unit);
//     else
//       return right(notifications);
//   }

//   Option<int> get newNotifications {
//     final length = notifications.where((a) => !a.isRead).length();
//     if (length == 0)
//       return none();
//     else
//       return some(length);
//   }
// }
