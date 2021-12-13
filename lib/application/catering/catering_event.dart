part of 'catering_bloc.dart';

@freezed
class CateringEvent with _$CateringEvent {
  const factory CateringEvent.getOutletCategoryCatering({
    int? page,
    String? search,
    List<String>? excludeMerchantIds,
    required bool isHideOpen,
    String? location,
    bool? isCatering,
    required String mealsTypes,
    required String preOrderDate,
  }) = _GetOutletCategoryCatering;

  const factory CateringEvent.getOutletCategoryNextCatering({
    required int page,
    String? search,
    List<String>? excludeMerchantIds,
    required bool isHideOpen,
    required String location,
    required bool isCatering,
    required String mealsTypes,
    required String preOrderDate,
  }) = _GetOutletCategoryNextCatering;
}
