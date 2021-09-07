import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:digiresto/domain/auth/auth_failure.dart';
import 'package:digiresto/domain/profile/i_profile_repository.dart';
import 'package:digiresto/domain/profile/user_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IProfileRepository _profileRepository;
  ProfileBloc(this._profileRepository) : super(_Initial());

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield* event.map(
      started: (_event) async* {
        yield ProfileState.loading();
        final failureOrSuccess = await _profileRepository.getProfile();
        yield failureOrSuccess.fold(
          (failure) => ProfileState.loadFailure(failure),
          (userProfile) => ProfileState.loadSuccess(userProfile),
        );
      },
    );
  }
}
