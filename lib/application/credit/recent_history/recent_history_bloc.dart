import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide IList;
import 'package:digiresto/domain/credit/credit_failure.dart';
import 'package:digiresto/domain/credit/i_credit_repository.dart';
import 'package:digiresto/domain/credit/payment_history.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'recent_history_event.dart';
part 'recent_history_state.dart';
part 'recent_history_bloc.freezed.dart';

@injectable
class RecentHistoryBloc extends Bloc<RecentHistoryEvent, RecentHistoryState> {
  final ICreditRepository _creditRepository;
  RecentHistoryBloc(this._creditRepository)
      : super(RecentHistoryState.initial());
  int onPage = 1;
  int pageSize = 10;

  @override
  Stream<RecentHistoryState> mapEventToState(
    RecentHistoryEvent event,
  ) async* {
    yield* event.map(
      started: (_event) async* {
        yield state.copyWith(
          isLoading: true,
        );
        final failureOrSuccess = await _creditRepository.getRecentHistory(
          onPage: onPage,
          pageSize: pageSize,
        );
        yield failureOrSuccess.fold(
          (failure) => state.copyWith(
            isLoading: false,
            failureOption: optionOf(failure),
          ),
          (data) {
            if (data.listAccountHistoryDetails.length == pageSize) {
              onPage++;
            }
            return state.copyWith(
              isLoading: false,
              listData: state.listData.addAll(data.listAccountHistoryDetails),
            );
          },
        );
      },
      fetchNext: (_event) async* {
        yield state.copyWith(
          isLoading: true,
        );
        final failureOrSuccess = await _creditRepository.getRecentHistory(
          onPage: onPage,
          pageSize: pageSize,
        );
        yield failureOrSuccess.fold(
          (failure) => state.copyWith(
            isLoading: false,
            failureOption: optionOf(failure),
          ),
          (data) {
            if (data.listAccountHistoryDetails.length == pageSize) {
              onPage++;
            }
            return state.copyWith(
              isLoading: false,
              listData: state.listData.addAll(data.listAccountHistoryDetails),
            );
          },
        );
      },
    );
  }
}
