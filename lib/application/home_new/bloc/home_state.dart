part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required Option<Either<HomeFailure, UserAddress>> optionUserAddress,
    required Option<Either<HomeFailure, IList<StaticBanner>>> optionBanners,
    required Option<Either<HomeFailure, IList<MenuCategory>>>
        optionMenuCategory,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        isLoading: true,
        optionUserAddress: none(),
        optionBanners: none(),
        optionMenuCategory: none(),
      );
}
