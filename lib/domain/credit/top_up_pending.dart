import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'top_up_pending.freezed.dart';
part 'top_up_pending.g.dart';

TopUpPending topUpPendingFromJson(String str) =>
    TopUpPending.fromJson(json.decode(str));

String topUpPendingToJson(TopUpPending data) => json.encode(data.toJson());

@freezed
class TopUpPending with _$TopUpPending {
  const factory TopUpPending({
    required String customerPhone,
    required String paymentType,
    required TopUpDetail detail,
    required String status,
    @JsonKey(name: 'is_delete') required bool isDelete,
    @JsonKey(name: 'created_date') required DateTime createdDate,
    required String billingId,
  }) = _TopUpPending;

  factory TopUpPending.fromJson(Map<String, dynamic> json) =>
      _$TopUpPendingFromJson(json);
}

@freezed
class TopUpDetail with _$TopUpDetail {
  const factory TopUpDetail({
    @JsonKey(includeIfNull: true) String? orderId,
    @JsonKey(includeIfNull: true) String? title,
    @JsonKey(includeIfNull: true) String? vaNumber,
    @JsonKey(includeIfNull: true) String? amount,
    @JsonKey(includeIfNull: true) String? fee,
    @JsonKey(includeIfNull: true) String? finalAmount,
    @JsonKey(includeIfNull: true) String? serviceProvider,
    @JsonKey(includeIfNull: true) DateTime? formattedTransactionDate,
    @JsonKey(includeIfNull: true) String? bankAccName,
    @JsonKey(includeIfNull: true) String? bankName,
    @JsonKey(includeIfNull: true) String? formattedUniqueAmount,
    @JsonKey(includeIfNull: true) String? bankAccNo,
    @JsonKey(includeIfNull: true) DateTime? transactionDate,
    @JsonKey(includeIfNull: true) String? uniqueAmount,
    required int expires,
    required DateTime expiresAt,
  }) = _TopUpDetail;

  factory TopUpDetail.fromJson(Map<String, dynamic> json) =>
      _$TopUpDetailFromJson(json);
}
