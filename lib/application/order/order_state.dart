part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = _Initial;
  const factory OrderState.loadInProgress() = _LoadInProgress;
  const factory OrderState.loadSuccess() = _LoadSuccess;
  const factory OrderState.loadFailure() = _LoadFailure;
}
