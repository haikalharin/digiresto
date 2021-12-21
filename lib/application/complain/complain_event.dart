part of 'complain_bloc.dart';

@freezed
class ComplainEvent with _$ComplainEvent {
  const factory ComplainEvent.getComplainCategory() = _GetComplainCategory;
  const factory ComplainEvent.complainCategoriSelected({
    int? id,
    List<Complain>? list,
    File? file,
  }) = _ComplainCategoriSelected;
  const factory ComplainEvent.postComplain() = _PostComplain;
}
