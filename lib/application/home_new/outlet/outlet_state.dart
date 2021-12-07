part of 'outlet_bloc.dart';

@freezed
class OutletState with _$OutletState {
  const factory OutletState.initial() = _Initial;
  const factory OutletState.loadInProgress() = _LoadInProgress;
  const factory OutletState.getListOutletSuccess(
      List<OutletCategoryDataResponse> outlets) = _GetListOutletSuccess;
  const factory OutletState.getListOutletFailure(HomeFailure failure) =
      _GetListOutletFailure;
}
