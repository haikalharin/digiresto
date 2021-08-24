import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'top_up_va_details.freezed.dart';
part 'top_up_va_details.g.dart';

TopUpVADetails topUpDetailsFromJson(String str) =>
    TopUpVADetails.fromJson(json.decode(str));

String topUpDetailsToJson(TopUpVADetails data) => json.encode(data.toJson());

@freezed
abstract class TopUpVADetails with _$TopUpVADetails {
  const factory TopUpVADetails({
    required String orderId,
    required String title,
    required String vaNumber,
    required String finalAmount,
    required int expires,
    required DateTime expiresAt,
    required String serviceProvider,
  }) = _TopUpVADetails;

  factory TopUpVADetails.fromJson(Map<String, dynamic> json) =>
      _$TopUpVADetailsFromJson(json);
}
