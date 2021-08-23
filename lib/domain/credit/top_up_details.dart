import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'top_up_details.freezed.dart';
part 'top_up_details.g.dart';

TopUpDetails topUpDetailsFromJson(String str) =>
    TopUpDetails.fromJson(json.decode(str));

String topUpDetailsToJson(TopUpDetails data) => json.encode(data.toJson());

@freezed
abstract class TopUpDetails with _$TopUpDetails {
  const factory TopUpDetails({
    required String orderId,
    required String title,
    required String vaNumber,
    required String finalAmount,
    required int expires,
    required DateTime expiresAt,
    required String serviceProvider,
  }) = _TopUpDetails;

  factory TopUpDetails.fromJson(Map<String, dynamic> json) =>
      _$TopUpDetailsFromJson(json);
}
