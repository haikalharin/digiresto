import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_up_credit_event.dart';
part 'top_up_credit_state.dart';
part 'top_up_credit_bloc.freezed.dart';

class TopUpCreditBloc extends Bloc<TopUpCreditEvent, TopUpCreditState> {
  TopUpCreditBloc() : super(_Initial());

  @override
  Stream<TopUpCreditState> mapEventToState(
    TopUpCreditEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
