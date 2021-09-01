import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'payment_history.freezed.dart';
part 'payment_history.g.dart';

PaymentHistory paymentHistoryFromJson(String str) =>
    PaymentHistory.fromJson(json.decode(str));

String paymentHistoryToJson(PaymentHistory data) => json.encode(data.toJson());

@freezed
class PaymentHistory with _$PaymentHistory {
  const factory PaymentHistory({
    required int pageSize,
    required int onPage,
    required String status,
    required int totalCount,
    required String creditLimit,
    required String accountBalance,
    required List<PaymentHistoryDetail> listAccountHistoryDetails,
  }) = _PaymentHistory;

  factory PaymentHistory.fromJson(Map<String, dynamic> json) =>
      _$PaymentHistoryFromJson(json);
}

@freezed
class PaymentHistoryDetail with _$PaymentHistoryDetail {
  const factory PaymentHistoryDetail({
    required int transferId,
    required String description,
    required String amount,
    required String status,
    required String transactionNumber,
    required String transferType,
    required String transactionDate,
    required String fee,
    required String transferTypeName,
    required String transferTypeDescription,
    required String type,
    required String groupPayment,
    required bool needReceiptInquiry,
  }) = _PaymentHistoryDetail;

  factory PaymentHistoryDetail.fromJson(Map<String, dynamic> json) =>
      _$PaymentHistoryDetailFromJson(json);
}
