import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:digiresto/domain/auth/auth_failure.dart';
import 'package:digiresto/domain/auth/entity/user_auth.dart';
import 'package:digiresto/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IAuthFacade _authFacade;
  ProfileBloc(this._authFacade) : super(_Initial());

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield* event.map(
      started: (_event) async* {
        yield ProfileState.loading();
        final failureOrSuccess = await _authFacade.getSignedInUser();
        yield failureOrSuccess.fold(
          (failure) => ProfileState.loadFailure(failure),
          (optionUser) => optionUser.fold(
            () => ProfileState.loadFailure(AuthFailure.sessionExpired()),
            (user) => ProfileState.loadSuccess(user),
          ),
        );
      },
    );
  }
}
