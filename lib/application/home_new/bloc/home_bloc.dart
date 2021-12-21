import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide IList;
import 'package:digiresto/domain/entity/user/user_get_address_model.dart';
import 'package:digiresto/domain/home/entity/menu_category.dart';
import 'package:digiresto/domain/home/entity/new_nearby_outlet.dart';
import 'package:digiresto/domain/home/entity/static_banner.dart';
import 'package:digiresto/domain/home/home_failure.dart';
import 'package:digiresto/domain/home/i_home_repository.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHomeRepository _homeRepository;

  HomeBloc(this._homeRepository) : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.map(started: (e) async {
        final addressFailureOrSuccess = await _homeRepository.getUserAddress();
        final categoryFailureOrSuccess =
            await _homeRepository.getMenuCategory();
        final newNearbyFailureOrSuccess =
            await _homeRepository.getNewNearbyOutlet();

        emit(
          state.copyWith(
            isLoading: false,
            optionUserAddress: optionOf(addressFailureOrSuccess),
            optionMenuCategory: optionOf(categoryFailureOrSuccess),
            optionOutletHighlight: optionOf(newNearbyFailureOrSuccess),
          ),
        );
      }, refresh: (e) async {
        emit(HomeState.initial());
        final addressFailureOrSuccess = await _homeRepository.getUserAddress();
        final categoryFailureOrSuccess =
            await _homeRepository.getMenuCategory();
        final bannerFailureOrSuccess = await _homeRepository.getStaticBanner();
        final newNearbyFailureOrSuccess =
            await _homeRepository.getNewNearbyOutlet();

        emit(
          state.copyWith(
            isLoading: false,
            optionUserAddress: optionOf(addressFailureOrSuccess),
            optionMenuCategory: optionOf(categoryFailureOrSuccess),
            optionBanners: optionOf(bannerFailureOrSuccess),
            optionOutletHighlight: optionOf(newNearbyFailureOrSuccess),
          ),
        );
      }, getUserAddress: (e) async {
        final newNearbyFailureOrSuccess =
            await _homeRepository.getNewNearbyOutlet();
        emit(
          state.copyWith(
            optionUserAddress: optionOf(await _homeRepository.getUserAddress()),
            optionOutletHighlight: optionOf(newNearbyFailureOrSuccess),
          ),
        );
      }, getStaticBanner: (e) async {
        final bannerFailureOrSuccess = await _homeRepository.getStaticBanner();
        emit(
          state.copyWith(
            optionBanners: optionOf(bannerFailureOrSuccess),
          ),
        );
      }, getNewNearbyOutlet: (e) async {
        final newNearbyFailureOrSuccess =
            await _homeRepository.getNewNearbyOutlet();
        emit(
          state.copyWith(
            optionOutletHighlight: optionOf(newNearbyFailureOrSuccess),
          ),
        );
      });
    });
  }
}
