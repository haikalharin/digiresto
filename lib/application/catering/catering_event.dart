part of 'catering_bloc.dart';

@freezed
class CateringEvent with _$CateringEvent {
  const factory CateringEvent.getOutletCategoryCatering({
    required int page,
    String? search,
    List<String>? excludeMerchantIds,
    required bool isHideOpen,
    String? location,
    bool? isCatering,
    required String mealsTypes,
    required String preOrderDate,
  }) = _GetOutletCategoryCatering;
}
