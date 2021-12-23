import 'package:digiresto/domain/order/order_detail_view_argument.dart';
import 'package:digiresto/domain/promo_voucher/entity/voucher_outlet_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'voucher_detail_arguments.freezed.dart';

@freezed
class VoucherDetailArguments with _$VoucherDetailArguments {
  const factory VoucherDetailArguments({
    required Datum voucher,
    required OrderDetailViewArgument argument,
    required bool isUseVoucher,
  }) = _VoucherDetailArguments;
}
