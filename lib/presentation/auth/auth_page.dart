import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/presentation/auth/validate_otp/validate_otp_page.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/core/widgets/custom_textfield.dart';
import 'package:digiresto/presentation/core/widgets/header_curved.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
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
                controller: _phoneController,
                hintText: 'Nomor Handphone',
                keyboardType: TextInputType.phone,
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                onPressed: () => Get.to(
                  ValidateOtpPage(
                    phoneNumber: _phoneController.text,
                  ),
                ),
                label: 'Lanjut Verifikasi',
              ),
            ],
          )
        ],
      ),
    );
  }
}
