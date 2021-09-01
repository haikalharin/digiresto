import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:digiresto/domain/credit/credit_failure.dart';
import 'package:digiresto/domain/credit/i_credit_repository.dart';
import 'package:digiresto/domain/credit/top_up_pending.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'waiting_payment_event.dart';
part 'waiting_payment_state.dart';
part 'waiting_payment_bloc.freezed.dart';

@injectable
class WaitingPaymentBloc
    extends Bloc<WaitingPaymentEvent, WaitingPaymentState> {
  ICreditRepository _creditRepository;
  WaitingPaymentBloc(this._creditRepository) : super(_Initial());

  @override
  Stream<WaitingPaymentState> mapEventToState(
    WaitingPaymentEvent event,
  ) async* {
    yield* event.map(started: (_event) async* {
      yield WaitingPaymentState.loading();
      final failureOrSuccess = await _creditRepository.getTopUpPending();
      yield failureOrSuccess.fold(
        (failure) => WaitingPaymentState.loadFailure(failure),
        (listTopUpPending) => WaitingPaymentState.loadSuccess(listTopUpPending),
      );
    }, cancelTopup: (_event) async* {
      yield WaitingPaymentState.loading();
      final cancelFailureOrSuccess =
          await _creditRepository.cancelTopup(_event.billingId);
      final failureOrSuccess = await _creditRepository.getTopUpPending();
      yield cancelFailureOrSuccess.fold(
        (failure) => WaitingPaymentState.loadFailure(failure),
        (code) => failureOrSuccess.fold(
          (failure) => WaitingPaymentState.loadFailure(failure),
          (listTopUpPending) =>
              WaitingPaymentState.loadSuccess(listTopUpPending),
        ),
      );
    });
  }
}
