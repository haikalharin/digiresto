import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/core/interfaces/i_storage.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

@injectable
class AppBloc extends Bloc<AppEvent, AppState> {
  final IStorage _storage;
  AppBloc(this._storage) : super(AppState.initial());

  @override
  Stream<AppState> mapEventToState(
    AppEvent event,
  ) async* {
    yield* event.map(
      started: (_event) async* {
        await _storage.openBox(StorageConstants.base);
        final preInstalled = await _storage.getBool(key: 'preInstalled');
        final guideShown = await _storage.getBool(key: 'guideShown');
        await _storage.close();
        yield state.copyWith(
          preInstalled: optionOf(preInstalled),
          guideShown: optionOf(guideShown),
        );
      },
      skipIntro: (_event) async* {
        await _storage.openBox(StorageConstants.base);
        await _storage.putBool(key: 'preInstalled', value: true);
        final preInstalled = await _storage.getBool(key: 'preInstalled');
        await _storage.close();
        yield state.copyWith(
          preInstalled: optionOf(preInstalled),
        );
      },
      skipGuide: (_event) async* {
        await _storage.openBox(StorageConstants.base);
        await _storage.putBool(key: 'guideShown', value: true);
        final guideShown = await _storage.getBool(key: 'guideShown');
        await _storage.close();
        yield state.copyWith(
          guideShown: optionOf(guideShown),
        );
      },
    );
  }
}
