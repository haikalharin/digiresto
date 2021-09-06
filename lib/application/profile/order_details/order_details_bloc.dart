import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:digiresto/domain/profile/i_profile_repository.dart';
import 'package:digiresto/domain/profile/order_history_details.dart';
import 'package:digiresto/domain/profile/profile_failure.dart';
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
    );
  }
}
