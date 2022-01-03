import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'top_up_va_details.freezed.dart';
part 'top_up_va_details.g.dart';

TopUpVADetails topUpVaDetailsFromJson(String str) =>
    TopUpVADetails.fromJson(json.decode(str));

String topUpVaDetailsToJson(TopUpVADetails data) => json.encode(data.toJson());

@freezed
class TopUpVADetails with _$TopUpVADetails {
  const factory TopUpVADetails({
    required String orderId,
    required String title,
    required String vaNumber,
    required String amount,
    required String fee,
    required String finalAmount,
    required int expires,
    required DateTime expiresAt,
  }) = _TopUpVADetails;

  factory TopUpVADetails.fromJson(Map<String, dynamic> json) =>
      _$TopUpVADetailsFromJson(json);
}
