part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required Option<bool> preInstalled,
    required Option<bool> guideShown,
  }) = _AppState;
  factory AppState.initial() => AppState(
        preInstalled: none(),
        guideShown: none(),
      );
}
