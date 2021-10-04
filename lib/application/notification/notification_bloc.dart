import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/notification/i_notification_repository.dart';
import 'package:digiresto/domain/notification/notification_data.dart';
import 'package:digiresto/domain/notification/notification_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

// @singleton
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final INotificationRepository _notificationRepository;

  StreamSubscription<Either<NotificationFailure, NotificationData>>?
      _notificationSubscription;
  StreamSubscription<Either<NotificationFailure, NotificationData>>?
      _notificationOpenedSubscription;

  NotificationBloc(this._notificationRepository)
      : super(NotificationState.init()) {
    _notificationSubscription =
        this._notificationRepository.notification().listen((event) {
      event.fold((l) {
        print("Error waktu format notif");
      }, (notif) {
        add(NotificationEvent.newNotification(notif));
      });
    });

    _notificationOpenedSubscription =
        this._notificationRepository.notificationOpened().listen((event) {
      event.fold((l) {
        print("Error waktu format notif opened");
      }, (notif) {
        add(NotificationEvent.notificationOpened(notif));
      });
    });
  }

  @override
  Stream<NotificationState> mapEventToState(
    NotificationEvent event,
  ) async* {
    yield* event.map(newNotification: (event) async* {
      yield state.copyWith(
        notifications: state.notifications.appendElement(event.notification),
        notificationOpenedOption: none(),
        fetchFailureOrUnitOption: none(),
        isLoading: false,
      );
    }, notificationOpened: (event) async* {
      yield state.copyWith(
        notificationOpenedOption: some(event.notification),
        fetchFailureOrUnitOption: none(),
        isLoading: false,
      );
    }, getListNotification: (event) async* {
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
    });
  }

  @override
  Future<void> close() {
    this._notificationSubscription?.cancel();
    this._notificationOpenedSubscription?.cancel();
    return super.close();
  }
}
