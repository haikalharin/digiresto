import 'package:digiresto/application/auth/auth_bloc.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/presentation/auth/login/login_page.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class AuthListener extends StatelessWidget {
  const AuthListener({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final _authBloc = BlocProvider.of<AuthBloc>(context);
        return state.map(
          initial: (_) => const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          authenticated: (_) => HomeScreen(),
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
                      onPressed: () =>
                          _authBloc.add(AuthEvent.authCheckRequested()),
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
