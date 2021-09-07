import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide IList;
import 'package:digiresto/domain/profile/i_profile_repository.dart';
import 'package:digiresto/domain/profile/order_history_details.dart';
import 'package:digiresto/domain/profile/profile_failure.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'order_details_event.dart';
part 'order_details_state.dart';
part 'order_details_bloc.freezed.dart';

@injectable
class OrderDetailsBloc extends Bloc<OrderDetailsEvent, OrderDetailsState> {
  final IProfileRepository _profileRepository;
  OrderDetailsBloc(this._profileRepository) : super(_Initial());

  @override
  Stream<OrderDetailsState> mapEventToState(
    OrderDetailsEvent event,
  ) async* {
    yield* event.map(
      started: (_event) async* {
        yield _Loading();
        final failureOrSuccess =
            await _profileRepository.getOrderHistoryDetails(
          receiptCode: _event.receiptCode,
        );
        yield failureOrSuccess.fold(
          (failure) => _LoadFailure(failure: failure),
          (orderHistoryDetails) =>
              _LoadSuccess(orderHistoryDetails: orderHistoryDetails),
        );
      },
      refresh: (_event) async* {
        yield _Loading();
        final failureOrSuccess =
            await _profileRepository.getOrderHistoryDetails(
          receiptCode: _event.receiptCode,
        );
        yield failureOrSuccess.fold(
          (failure) => _LoadFailure(failure: failure),
          (orderHistoryDetails) =>
              _LoadSuccess(orderHistoryDetails: orderHistoryDetails),
        );
      },
      cancelPageOpen: (_event) async* {
        yield _Loading();
        final failureOrSuccess =
            await _profileRepository.getCancelReasons('in');
        yield failureOrSuccess.fold(
          (failure) => _LoadFailure(failure: failure),
          (cancelReasons) => _LoadCancelPage(
            cancelReasons: cancelReasons,
            isSubmitting: false,
            submitOption: none(),
          ),
        );
      },
      cancelSubmitted: (_event) async* {
        yield _LoadCancelPage(
          cancelReasons: _event.reasonList,
          isSubmitting: true,
          submitOption: none(),
        );
        final failureOrSuccess = await _profileRepository.cancelTransaction(
          receiptCode: _event.receiptCode,
          reason: _event.reason,
        );
      },
    );
  }
}
