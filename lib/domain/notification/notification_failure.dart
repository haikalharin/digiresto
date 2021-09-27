import 'package:freezed_annotation/freezed_annotation.dart';
part 'notification_failure.freezed.dart';

@freezed
class NotificationFailure with _$NotificationFailure{
  const factory NotificationFailure.noData() = _NoData;
  const factory NotificationFailure.noInternet() = _NoInternet;
  const factory NotificationFailure.serverError() = _ServerError;
}