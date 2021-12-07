part of 'bottom_tab_cubit.dart';

@freezed
class BottomTabState with _$BottomTabState {
  const factory BottomTabState({
    required bool isLoading,
    required int currentIndex,
    required int cartCount,
    required int creditCount,
  }) = _BottomTabState;

  factory BottomTabState.initial() => BottomTabState(
        isLoading: false,
        currentIndex: 0,
        cartCount: 0,
        creditCount: 0,
      );
}
