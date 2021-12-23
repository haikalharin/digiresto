import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:digiresto/domain/catering/catering_failure.dart';
import 'package:digiresto/domain/catering/i_catering_repository.dart';
import 'package:digiresto/domain/catering/outlet_category_catering_response.dart';
import 'package:digiresto/domain/entity/user/user_get_address_model.dart';
import 'package:digiresto/infrastructure/network/apis/user/user_repository.dart';
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
  ) : super(_Initial()) {
    on<CateringEvent>(
      (event, emit) async {
        await event.map(
          getOutletCategoryCatering: (_event) async {
            emit(CateringState.loadInProgress());
            final address = await _userRepository.getActiveAddress();
            final activeAddress = address.getOrElse(() => UserAddress());
            final location =
                "${activeAddress.latitude}, ${activeAddress.longitude}";

            final failureOrSuccess =
                await _cateringRepository.getOutletCategoryCatering(
              page: _event.page,
              isHideOpen: _event.isHideOpen,
              location: location,
              isCatering: true,
              mealsTypes: _event.mealsTypes,
              preOrderDate: _event.preOrderDate,
              excludeMerchantIds: _event.excludeMerchantIds,
              search: _event.search,
            );

            failureOrSuccess.fold(
              (failure) =>
                  emit(CateringState.getListOutletCateringFailure(failure)),
              (outlets) => emit(
                  CateringState.getListOutletCateringSuccess(outlets.unlock)),
            );
          },
        );
      },
    );
  }
}
