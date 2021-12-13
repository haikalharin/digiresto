part of 'catering_bloc.dart';

@freezed
class CateringState with _$CateringState {
  const factory CateringState({
    required bool isLoading,
    required IList<OutletCategoryCateringResponse> outletCatering,
    required Option<CateringFailure> failureOption,
  }) = _CateringState;

  factory CateringState.initial() => CateringState(
        isLoading: false,
        outletCatering: IList(),
        failureOption: none(),
      );
}
