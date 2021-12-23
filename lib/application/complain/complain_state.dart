part of 'complain_bloc.dart';

@freezed
class ComplainState with _$ComplainState {
  const factory ComplainState.initial() = _Initial;
  const factory ComplainState.laodInProgress() = _LoadInProgress;
  const factory ComplainState.getComplaintCategorySuccess(
      List<Complain> complainCategory) = _GetComplaintCategorySuccess;
  const factory ComplainState.getComplaintCategoryFailure(
      ComplainFailure failure) = _GetComplaintCategoryFailure;
  const factory ComplainState.complaintSelect(
    Complain? complain,
    List<Complain>? complainCategory,
    File? file,
    String? imageUrl,
    bool eatTimeIsActive,
    bool sendButtonIsActive,
  ) = _ComplaintSelect;
  const factory ComplainState.sendingSuccesss() = _SendingSuccesss;
}
