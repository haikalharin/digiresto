import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide IList;
import 'package:digiresto/domain/catering/catering_failure.dart';
import 'package:digiresto/domain/catering/i_catering_repository.dart';
import 'package:digiresto/domain/catering/outlet_category_catering_response.dart';
import 'package:digiresto/domain/entity/user/user_get_address_model.dart';
import 'package:digiresto/infrastructure/network/apis/user/user_repository.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'catering_event.dart';
part 'catering_state.dart';
part 'catering_bloc.freezed.dart';

@injectable
class CateringBloc extends Bloc<CateringEvent, CateringState> {
  final ICateringRepository _cateringRepository;
  final UserRepository _userRepository;

  CateringBloc(
    this._cateringRepository,
    this._userRepository,
  ) : super(CateringState.initial());

  int initialPage = 1;

  @override
  Stream<CateringState> mapEventToState(CateringEvent event) async* {
    yield* event.map(
      getOutletCategoryCatering: (_event) async* {
        yield state.copyWith(isLoading: true);
        final address = await _userRepository.getActiveAddress();
        final activeAddr = address.getOrElse(() => UserAddress());
        final location = "${activeAddr.latitude}, ${activeAddr.longitude}";

        final failureOrSuccess =
            await _cateringRepository.getOutletCategoryCatering(
          page: initialPage,
          isHideOpen: _event.isHideOpen,
          location: location,
          isCatering: true,
          mealsTypes: _event.mealsTypes,
          preOrderDate: _event.preOrderDate,
          excludeMerchantIds: _event.excludeMerchantIds,
          search: _event.search,
        );

        yield failureOrSuccess.fold((failure) {
          return state.copyWith(
            isLoading: false,
            failureOption: optionOf(failure),
          );
        }, (data) {
          return state.copyWith(
            isLoading: false,
            outletCatering: data,
          );
        });
      },
      getOutletCategoryNextCatering: (_request) async* {},
    );
  }
}
