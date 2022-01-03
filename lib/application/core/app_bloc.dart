import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/core/interfaces/i_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

@injectable
class AppBloc extends Bloc<AppEvent, AppState> {
  final IStorage _storage;
  AppBloc(this._storage) : super(AppState.initial()) {
    on<AppEvent>((event, emit) async {
      await event.map(
        started: (_event) async {
          final _box = await _storage.openBox(StorageConstants.base);
          final preInstalled =
              await _storage.getBool(_box, key: 'preInstalled');
          final guideShown = await _storage.getBool(_box, key: 'guideShown');
          await _storage.close(_box);
          emit(state.copyWith(
            preInstalled: optionOf(preInstalled),
            guideShown: optionOf(guideShown),
          ));
        },
        skipIntro: (_event) async {
          final _box = await _storage.openBox(StorageConstants.base);
          await _storage.putBool(_box, key: 'preInstalled', value: true);
          final preInstalled =
              await _storage.getBool(_box, key: 'preInstalled');
          await _storage.close(_box);
          emit(state.copyWith(
            preInstalled: optionOf(preInstalled),
          ));
        },
        skipGuide: (_event) async {
          final _box = await _storage.openBox(StorageConstants.base);
          await _storage.putBool(_box, key: 'guideShown', value: true);
          final guideShown = await _storage.getBool(_box, key: 'guideShown');
          await _storage.close(_box);
          emit(state.copyWith(
            guideShown: optionOf(guideShown),
          ));
        },
      );
    });
  }
}
