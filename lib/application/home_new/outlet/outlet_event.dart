part of 'outlet_bloc.dart';

@freezed
class OutletEvent with _$OutletEvent {
  const factory OutletEvent.getOutlets({
    required MenuCategory menuCategory,
    required int page,
    required String? search,
    required bool isHideOpen,
  }) = _GetOutlets;
}
