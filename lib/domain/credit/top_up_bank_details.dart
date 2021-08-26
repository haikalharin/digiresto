import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'top_up_bank_details.freezed.dart';
part 'top_up_bank_details.g.dart';

TopUpBankDetails topUpBankDetailsFromJson(String str) =>
    TopUpBankDetails.fromJson(json.decode(str));

String topUpBankDetailsToJson(TopUpBankDetails data) =>
    json.encode(data.toJson());

@freezed
class TopUpBankDetails with _$TopUpBankDetails {
  const factory TopUpBankDetails({
    required DateTime formattedTransactionDate,
    required String bankAccName,
    required String bankName,
    required String formattedUniqueAmount,
    required String bankAccNo,
    required DateTime transactionDate,
    required String uniqueAmount,
    required int expires,
    required DateTime expiresAt,
  }) = _TopUpBankDetails;

  factory TopUpBankDetails.fromJson(Map<String, dynamic> json) =>
      _$TopUpBankDetailsFromJson(json);
}
