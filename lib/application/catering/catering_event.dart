part of 'catering_bloc.dart';

@freezed
class CateringEvent with _$CateringEvent {
  const factory CateringEvent.getOutletCategoryCatering(OutletCategoryCateringRequest outletCategoryCateringRequest) = _GetOutletCategoryCatering;
}
