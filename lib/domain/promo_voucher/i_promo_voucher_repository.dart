import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/promo_voucher/entity/promo_outlet_response.dart';
import 'package:digiresto/domain/promo_voucher/entity/voucher_outlet_response.dart';
import 'package:digiresto/domain/promo_voucher/promo_voucher_failure.dart';

abstract class IPromoVoucherRepository {
  Future<Either<PromoVoucherFailure, IList<PromoOutlet>>>
      getPromoOutlet({required String outletId, required String merchantId});

  Future<Either<PromoVoucherFailure, IList<Datum>>>
      getVoucher({required String outletId, required String merchantId});
}
