part of 'catering_bloc.dart';

@freezed
class CateringState with _$CateringState {
  const factory CateringState.initial() = _Initial;
  const factory CateringState.loadInProgress() = _LoadInProgress;
  const factory CateringState.loadSuccess() = _LoadSuccess;
  const factory CateringState.loadFailure(CateringFailure e) = _LoadFailure;

  const factory CateringState.getOutletCategoryCateringSuccess() = _GetOutletCategoryCateringSuccess;

}
