import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/entity/order/get_list_voucher_outlet_response.dart';
import 'package:digiresto/domain/entity/order/promo_outlet_response.dart';
import 'package:digiresto/domain/promo_voucher/entity/promo_outlet_response.dart';
import 'package:digiresto/domain/promo_voucher/entity/voucher_outlet_response.dart';
import 'package:digiresto/domain/promo_voucher/i_promo_voucher_repository.dart';
import 'package:digiresto/domain/promo_voucher/promo_voucher_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'promo_voucher_event.dart';

part 'promo_voucher_state.dart';

part 'promo_voucher_bloc.freezed.dart';

@injectable
class PromoVoucherBloc extends Bloc<PromoVoucherEvent, PromoVoucherState> {
  final IPromoVoucherRepository _promoVoucherRepository;

  PromoVoucherBloc(this._promoVoucherRepository) : super(_Initial()) {
    on<PromoVoucherEvent>((event, emit) async {
      await event.map(
        getPromoOutlet: (e) async {
          emit(_Loading());
          final promoSuccessOrFailure = await _promoVoucherRepository
              .getPromoOutlet(outletId: e.outletId, merchantId: e.merchantId);
          emit(promoSuccessOrFailure.fold((failure) => _LoadFailure(failure),
              (promos) => _GetPromoOutletSuccess(promos)));
        },
        getVoucherOutlet: (e) async {
          emit(_Loading());
          final voucherSuccessOrFailure = await _promoVoucherRepository
              .getVoucher(outletId: e.outletId, merchantId: e.merchantId);
          emit(voucherSuccessOrFailure.fold(
            (failure) => _LoadFailure(failure),
            (vouchers) => _GetVoucherOutletSuccess(vouchers),
          ));
        },
        refreshPromoOutlet: (e) async {
          emit(_Loading());
          final promoSuccessOrFailure = await _promoVoucherRepository
              .getPromoOutlet(outletId: e.outletId, merchantId: e.merchantId);
          emit(promoSuccessOrFailure.fold((failure) => _LoadFailure(failure),
              (promos) => _GetPromoOutletSuccess(promos)));
        },
        refreshVoucherOutlet: (e) async {
          emit(_Loading());
          final voucherSuccessOrFailure = await _promoVoucherRepository
              .getVoucher(outletId: e.outletId, merchantId: e.merchantId);
          emit(
            voucherSuccessOrFailure.fold(
              (failure) => _LoadFailure(failure),
              (vouchers) => _GetVoucherOutletSuccess(vouchers),
            ),
          );
        },
      );
    });
  }
}
