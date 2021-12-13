import 'package:bloc/bloc.dart';
import 'package:digiresto/domain/auth/auth_failure.dart';
import 'package:digiresto/domain/auth/i_auth_facade.dart';
import 'package:digiresto/domain/notification/i_notification_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  final INotificationRepository _notificationRepository;

  AuthBloc(
    this._authFacade,
    this._notificationRepository,
  ) : super(const AuthState.initial()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.map(
          authCheckRequested: (e) async {
            final userOption = await _authFacade.getSignedInUser();
            await _notificationRepository.init();
            emit(
              userOption.fold(
                (failure) => failure.maybeMap(
                    orElse: () => AuthState.authFailure(failure),
                    sessionExpired: (e) {
                      _authFacade.signOut();
                      return AuthState.unauthenticated();
                    }),
                (user) => user.fold(
                  () => const AuthState.unauthenticated(),
                  (a) {
                    _notificationRepository.postUserTokenToAPI();
                    return AuthState.authenticated();
                  },
                ),
              ),
            );
          },
          signedOut: (e) async {
            await _authFacade.signOut();
            emit(const AuthState.unauthenticated());
          },
        );
      },
    );
  }
}
