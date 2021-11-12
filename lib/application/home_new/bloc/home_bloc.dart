import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide IList;
import 'package:digiresto/domain/entity/user/user_get_address_model.dart';
import 'package:digiresto/domain/home/entity/menu_category.dart';
import 'package:digiresto/domain/home/entity/static_banner.dart';
import 'package:digiresto/domain/home/home_failure.dart';
import 'package:digiresto/domain/home/i_home_repository.dart';
import 'package:digiresto/infrastructure/network/apis/order/order_repository.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHomeRepository _homeRepository;
  final OrderRepository _orderRepository;

  HomeBloc(
    this._homeRepository,
    this._orderRepository,
  ) : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.map(
        started: (_event) async {
          final addressFailureOrSuccess =
              await _homeRepository.getUserAddress();
          final categoryFailureOrSuccess =
              await _homeRepository.getMenuCategory();
          final bannerFailureOrSuccess =
              await _homeRepository.getStaticBanner();

          emit(
            state.copyWith(
              isLoading: false,
              optionUserAddress: optionOf(addressFailureOrSuccess),
              optionMenuCategory: optionOf(categoryFailureOrSuccess),
              optionBanners: optionOf(bannerFailureOrSuccess),
            ),
          );
        },
        refresh: (_event) async {
          emit(HomeState.initial());
          final addressFailureOrSuccess =
              await _homeRepository.getUserAddress();
          final categoryFailureOrSuccess =
              await _homeRepository.getMenuCategory();
          final bannerFailureOrSuccess =
              await _homeRepository.getStaticBanner();

          emit(
            state.copyWith(
              isLoading: false,
              optionUserAddress: optionOf(addressFailureOrSuccess),
              optionMenuCategory: optionOf(categoryFailureOrSuccess),
              optionBanners: optionOf(bannerFailureOrSuccess),
            ),
          );
        },
        getUserAddress: (_event) async {
          emit(
            state.copyWith(
              optionUserAddress:
                  optionOf(await _homeRepository.getUserAddress()),
            ),
          );
        },
      );
    });
  }
}
