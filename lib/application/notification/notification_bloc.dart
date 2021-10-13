// import 'package:bloc/bloc.dart';
// import 'package:dartz/dartz.dart';
// import 'package:digiresto/domain/notification/i_notification_repository.dart';
// import 'package:digiresto/domain/notification/notification_data.dart';
// import 'package:digiresto/domain/notification/notification_failure.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';
// import 'package:onesignal_flutter/onesignal_flutter.dart';

// part 'notification_event.dart';
// part 'notification_state.dart';
// part 'notification_bloc.freezed.dart';

// @injectable
// class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
//   final INotificationRepository _notificationRepository;

//   NotificationBloc(this._notificationRepository)
//       : super(NotificationState.init()) {
//     on<NotificationEvent>(
//       (event, emit) {
//         event.map(
//           started: (event) async* {
//             await _notificationRepository.init();
//             await _notificationRepository.setNotificationForeground((event) {
//               // Will be called whenever a notification is received in foreground
//               // Display Notification, pass null param for not displaying the notification
//               add(NotificationEvent.newNotification(event));
//               event.complete(event.notification);
//             });

//             await _notificationRepository.setNotificationOpened((event) {
//               add(NotificationEvent.notificationOpened(event));
//             });
//           },
//           newNotification: (event) async* {
//             emit(
//               state.copyWith(
//                 notificationOpenedOption: none(),
//                 fetchFailureOrUnitOption: none(),
//                 isLoading: false,
//               ),
//             );
//           },
//           notificationOpened: (event) async* {
//             emit(
//               state.copyWith(
//                 notificationOpenedOption: some(event.notification),
//                 fetchFailureOrUnitOption: none(),
//                 isLoading: false,
//               ),
//             );
//           },
//           getListNotification: (event) async* {
//             emit(
//               state.copyWith(
//                 notificationOpenedOption: none(),
//                 fetchFailureOrUnitOption: none(),
//                 isLoading: true,
//               ),
//             );
//           },
//         );
//       },
//     );
//   }
// }
