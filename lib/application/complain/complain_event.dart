part of 'complain_bloc.dart';

@freezed
class ComplainEvent with _$ComplainEvent {
  const factory ComplainEvent.getComplainCategory() = _GetComplainCategory;
  const factory ComplainEvent.complainCategoriSelected({
    Complain? complain,
    List<Complain>? list,
    File? file,
  }) = _ComplainCategoriSelected;
  const factory ComplainEvent.attachmentSubmit({String? image, File? file}) =
      _AttachmentSubmit;
  const factory ComplainEvent.detailSubmit({String? detail}) = _DetailSubmit;
  const factory ComplainEvent.eatTimeSubmit({String? eatTime}) = _EatTimeSubmit;

  const factory ComplainEvent.postComplain({
    required String complainId,
    required String details,
    required String receiptCode,
    String? consumeDate,
    File? image,
  }) = _PostComplain;
}
