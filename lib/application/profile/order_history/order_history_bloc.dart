import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide IList;
import 'package:digiresto/domain/profile/i_profile_repository.dart';
import 'package:digiresto/domain/profile/order_history.dart';
import 'package:digiresto/domain/profile/order_pending.dart';
import 'package:digiresto/domain/profile/profile_failure.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'order_history_event.dart';
part 'order_history_state.dart';
part 'order_history_bloc.freezed.dart';

@injectable
class OrderHistoryBloc extends Bloc<OrderHistoryEvent, OrderHistoryState> {
  final IProfileRepository _profileRepository;
  OrderHistoryBloc(this._profileRepository)
      : super(OrderHistoryState.initial());

  @override
  Stream<OrderHistoryState> mapEventToState(
    OrderHistoryEvent event,
  ) async* {
    yield* event.map(
      orderPendingOpen: (_event) async* {
        yield state.copyWith(
          orderPendingFailureOrSuccess: none(),
        );
        final failureOrSuccess = await _profileRepository.getOrderPending();
        final count = failureOrSuccess.fold((l) => 0, (r) => r.length);
        yield state.copyWith(
          orderPendingFailureOrSuccess: optionOf(failureOrSuccess),
          orderPendingCountOption: optionOf(count),
        );
      },
      orderOnProcessOpen: (_event) async* {
        yield state.copyWith(
          orderOnProccessFailureOrSuccess: none(),
        );
        final failureOrSuccess =
            await _profileRepository.getOrderOnProcess(page: 1);
        yield state.copyWith(
          orderOnProccessFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      orderCompletedOpen: (_event) async* {
        yield state.copyWith(
          orderCompletedFailureOrSuccess: none(),
        );
        final failureOrSuccess =
            await _profileRepository.getOrderCompleted(page: 1);
        yield state.copyWith(
          orderCompletedFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      getOrderOnProcessCount: (value) async* {
        final failureOrSuccess =
            await _profileRepository.getOrderOnProcessCount();
        yield state.copyWith(
          orderOnProccessCountFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
