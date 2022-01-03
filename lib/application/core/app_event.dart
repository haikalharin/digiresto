part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.started() = _Started;
  const factory AppEvent.skipIntro() = _SkipIntro;
  const factory AppEvent.skipGuide() = _SkipGuide;
}
