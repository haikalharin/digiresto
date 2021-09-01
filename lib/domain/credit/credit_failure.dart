import 'package:freezed_annotation/freezed_annotation.dart';
part 'credit_failure.freezed.dart';

@freezed
class CreditFailure with _$CreditFailure {
  const factory CreditFailure.noInternet() = _NoInternet;
  const factory CreditFailure.serverException({
    String? message,
    String? code,
  }) = _ServerException;
  const factory CreditFailure.noData() = _NoData;
  const factory CreditFailure.unexpected() = _Unexpected;
}
