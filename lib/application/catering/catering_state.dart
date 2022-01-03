part of 'catering_bloc.dart';

@freezed
class CateringState with _$CateringState {
  const factory CateringState.initial() = _Initial;
  const factory CateringState.loadInProgress() = _LoadInProgress;
  const factory CateringState.getListOutletCateringSuccess(
          List<OutletCategoryDataResponse> outlets) =
      _GetListOutletCateringSuccess;
  const factory CateringState.getListOutletCateringFailure(
      CateringFailure failure) = _GetListOutletCateringFailure;
}
