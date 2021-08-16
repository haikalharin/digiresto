import 'package:digiresto/application/auth/login/login_bloc.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/core/widgets/custom_textfield.dart';
import 'package:digiresto/presentation/core/widgets/header_curved.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: BlocProvider<LoginBloc>(
        create: (context) => getIt<LoginBloc>(),
        child: const LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _phoneNumberController = TextEditingController();
  late final LoginBloc _loginBloc = BlocProvider.of<LoginBloc>(context);
  @override
  void initState() {
    super.initState();
    _phoneNumberController.addListener(_onPhoneNumberChanged);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {},
      builder: (context, state) {
        return StackWithProgress(
          isLoading: state.isSubmitting,
          children: [
            Stack(
              children: [
                HeaderCurvedWidget(
                  height: 210,
                  color: AppColors.mainColor.withOpacity(0.7),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).padding.top,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Center(
                      child: Image.asset(
                        'assets/logo_digiresto.png',
                        width: 155,
                      ),
                    ),
                  ],
                ),
                ListView(
                  padding: EdgeInsets.only(
                    top: 190,
                    right: 40,
                    left: 40,
                  ),
                  children: [
                    Text(
                      'Masuk',
                      style: Styles.loginTitleStyle,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Pastikan nomor handphone Anda valid untuk proses verifikasi,',
                      style: Styles.loginDescStyle,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    CustomTextField(
                      autovalidateMode: state.showErrorMessages
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      controller: _phoneNumberController,
                      validator: (_) => state.phoneNumber.value.fold(
                        (failure) => failure.maybeMap(
                          orElse: () => '',
                          invalidPhone: (_) => 'Invalid Phone',
                        ),
                        (_) => null,
                      ),
                      hintText: 'Nomor Handphone',
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onPressed: _onFormSubmitted,
                      label: 'Lanjut Verifikasi',
                    ),
                  ],
                )
              ],
            )
          ],
        );
      },
    );
  }

  void _onPhoneNumberChanged() {
    _loginBloc.add(
      LoginEvent.phoneNumberChanged(_phoneNumberController.text),
    );
  }

  void _onFormSubmitted() {
    _loginBloc.add(
      const LoginEvent.verifOtpPressed(),
    );
  }
}
