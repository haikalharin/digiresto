import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(_Initial());

  @override
  Stream<AppState> mapEventToState(
    AppEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
