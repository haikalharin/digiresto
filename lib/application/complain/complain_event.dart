part of 'complain_bloc.dart';

@freezed
class ComplainEvent with _$ComplainEvent {
  const factory ComplainEvent.getComplainCategory() = _GetComplainCategory;
  const factory ComplainEvent.complainCategoriSelected({int? index}) =
      _ComplainCategoriSelected;
}
