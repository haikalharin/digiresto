part of 'digi_locale_bloc.dart';

@freezed
class DigiLocaleEvent with _$DigiLocaleEvent {
  const factory DigiLocaleEvent.started() = _Started;
  const factory DigiLocaleEvent.updateLocale({required Locale locale}) =
      _UpdateLocale;
}
