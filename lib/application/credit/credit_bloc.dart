import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide IList;
import 'package:digiresto/domain/credit/credit_failure.dart';
import 'package:digiresto/domain/credit/i_credit_repository.dart';
import 'package:digiresto/domain/credit/top_up_method.dart';
import 'package:digiresto/domain/credit/user_balance.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'credit_event.dart';
part 'credit_state.dart';
part 'credit_bloc.freezed.dart';

@injectable
class CreditBloc extends Bloc<CreditEvent, CreditState> {
  ICreditRepository _creditRepository;
  CreditBloc(this._creditRepository) : super(_Initial());

  @override
  Stream<CreditState> mapEventToState(
    CreditEvent event,
  ) async* {
    yield* event.map(
      started: (_event) async* {
        yield CreditState.loading();
        final listTopUpMethod = await _creditRepository.getTopUpMethod();
        final userBalance = await _creditRepository.getUserBalance();

        yield CreditState.loaded(
          userBalance: userBalance,
          listTopUpMethod: listTopUpMethod,
        );
      },
    );
  }
}
