import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/notification/i_notification_repository.dart';
import 'package:digiresto/domain/notification/notification_data.dart';
import 'package:digiresto/domain/notification/notification_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

// @singleton
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final INotificationRepository _notificationRepository;

  NotificationBloc(this._notificationRepository)
      : super(NotificationState.init());

  @override
  Stream<NotificationState> mapEventToState(
    NotificationEvent event,
  ) async* {
    yield* event.map(
      started: (event) async* {
        _notificationRepository.init();
        _notificationRepository.setNotificationForeground((event) {
          // Will be called whenever a notification is received in foreground
          // Display Notification, pass null param for not displaying the notification
          add(NotificationEvent.newNotification(event));

          event.complete(event.notification);
        });

        _notificationRepository.setNotificationOpened((event) {
          add(NotificationEvent.notificationOpened(event));
        });
      },
      newNotification: (event) async* {
        yield state.copyWith(
          notificationOpenedOption: none(),
          fetchFailureOrUnitOption: none(),
          isLoading: false,
        );
      },
      notificationOpened: (event) async* {
        yield state.copyWith(
          notificationOpenedOption: some(event.notification),
          fetchFailureOrUnitOption: none(),
          isLoading: false,
        );
      },
      getListNotification: (event) async* {
        yield state.copyWith(
          notificationOpenedOption: none(),
          fetchFailureOrUnitOption: none(),
          isLoading: true,
        );
        // final failureOrNotifications =
        //     await this._notificationRepository.getListNotifications();

        // yield* failureOrNotifications.fold(
        //   (failure) async* {
        //     yield state.copyWith(
        //       fetchFailureOrUnitOption: some(left(failure)),
        //       notificationOpenedOption: none(),
        //       isLoading: false,
        //     );
        //   },
        //   (notifications) async* {
        //     yield state.copyWith(
        //       notifications: notifications,
        //       fetchFailureOrUnitOption: some(right(unit)),
        //       notificationOpenedOption: none(),
        //       isLoading: false,
        //     );
        //   },
        // );
      },
    );
  }

  // @override
  // Future<void> close() {
  //   this._notificationSubscription?.cancel();
  //   this._notificationOpenedSubscription?.cancel();
  //   return super.close();
  // }
}
