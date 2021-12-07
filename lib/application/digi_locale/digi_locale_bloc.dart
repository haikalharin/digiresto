import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:digiresto/domain/digi_locale/i_digi_locale_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'digi_locale_event.dart';
part 'digi_locale_state.dart';
part 'digi_locale_bloc.freezed.dart';

@injectable
class DigiLocaleBloc extends Bloc<DigiLocaleEvent, DigiLocaleState> {
  DigiLocaleBloc(this._repo) : super(DigiLocaleState.initial());

  final IDigiLocaleRepository _repo;

  @override
  Stream<DigiLocaleState> mapEventToState(
    DigiLocaleEvent event,
  ) async* {
    // yield DigiLocaleState.initial();
    yield* event.map(
      started: (_) async* {
        String locale = await _repo.getAppLocale();
        yield DigiLocaleState.loadLocale(locale: Locale(locale));
      },
      updateLocale: (event) async* {
        print('update Locale');
        await _repo.setNewLocale(newLocale: event.locale.languageCode);
        yield DigiLocaleState.loadLocale(locale: event.locale);
      },
    );
  }
}
