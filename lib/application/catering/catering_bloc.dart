import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:digiresto/domain/catering/catering_failure.dart';
import 'package:digiresto/domain/catering/entity/outlet_category_catering_request.dart';
import 'package:digiresto/domain/profile/i_profile_repository.dart';
import 'package:digiresto/infrastructure/core/outlet_category_catering_repository.dart';
import 'package:digiresto/infrastructure/network/apis/user/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'catering_event.dart';
part 'catering_state.dart';
part 'catering_bloc.freezed.dart';

@injectable
class CateringBloc extends Bloc<CateringEvent, CateringState> {
  final CateringRepository _orderRepository;
  final UserRepository _userRepository;
  final IProfileRepository _profileRepository;

  CateringBloc(
    this._orderRepository,
    this._userRepository,
    this._profileRepository,
  ) : super(_Initial());

  @override
  Stream<CateringState> mapEventToState(CateringEvent gEvent) async* {
    yield* gEvent.map(
      getOutletCategoryCatering: (request) async* {},
    );
  }
}
