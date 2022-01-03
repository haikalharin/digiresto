part of 'digi_locale_bloc.dart';

@freezed
class DigiLocaleState with _$DigiLocaleState {
  const factory DigiLocaleState.initial() = _Initial;
  const factory DigiLocaleState.loadLocale({required Locale locale}) =
      _LoadLocale;
}
