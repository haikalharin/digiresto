import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:digiresto/application/credit/waiting_payment/waiting_payment_bloc.dart';
import 'package:digiresto/domain/complain/complain_category.dart';
import 'package:digiresto/domain/complain/complain_failure.dart';
import 'package:digiresto/infrastructure/complain/i_complain_repository.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'complain_event.dart';
part 'complain_state.dart';
part 'complain_bloc.freezed.dart';

@injectable
class ComplainBloc extends Bloc<ComplainEvent, ComplainState> {
  final IComplainRepository _iComplainRepository;

  ComplainBloc(this._iComplainRepository) : super(_Initial());

  @override
  Stream<ComplainState> mapEventToState(
    ComplainEvent event,
  ) async* {
    yield* event.map(
        getComplainCategory: (_event) async* {
          ComplainState.laodInProgress();
        },
        complainCategoriSelected: (_event) async* {});
  }
}
