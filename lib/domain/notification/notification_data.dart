import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'notification_data.freezed.dart';
part 'notification_data.g.dart';

NotificationData notificationDataFromJson(String str) =>
    NotificationData.fromJson(json.decode(str));

String notificationDataToJson(NotificationData data) =>
    json.encode(data.toJson());

@freezed
class NotificationData with _$NotificationData {
  const factory NotificationData({
    required String title,
    required String description,
    required bool isRead,
  }) = _NotificationData;

  factory NotificationData.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataFromJson(json);
}
