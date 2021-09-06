part of 'order_details_bloc.dart';

@freezed
class OrderDetailsState with _$OrderDetailsState {
  const factory OrderDetailsState.initial() = _Initial;
  const factory OrderDetailsState.loading() = _Loading;
  const factory OrderDetailsState.loadSuccess({
    required OrderHistoryDetails orderHistoryDetails,
  }) = _LoadSuccess;
  const factory OrderDetailsState.loadFailure({
    required ProfileFailure failure,
  }) = _LoadFailure;
}
