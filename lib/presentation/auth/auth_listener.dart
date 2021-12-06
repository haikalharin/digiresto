import 'package:digiresto/application/auth/auth_bloc.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/presentation/auth/login/login_page.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/landing/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthListener extends StatelessWidget {
  const AuthListener({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          authenticated: (_) => LandingPage(),
          unauthenticated: (_) => LoginPage(),
          authFailure: (failure) {
            return Material(
              color: Colors.white,
              child: Stack(
                children: [
                  Center(
                    child: failure.e.maybeMap(
                      noInternet: (_) =>
                          Text(I10n.current.error_message_failed_get_response),
                      orElse: () => CircularProgressIndicator(),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 0,
                    left: 0,
                    child: CustomButton(
                      margin: EdgeInsets.all(Dimens.defaultMargin),
                      onPressed: () => context
                          .read<AuthBloc>()
                          .add(AuthEvent.authCheckRequested()),
                      label: 'Retry',
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
