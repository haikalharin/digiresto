import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/core/widgets/custom_textfield.dart';
import 'package:digiresto/presentation/core/widgets/header_curved.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          HeaderCurvedWidget(
            height: 210,
            color: mainColor.withOpacity(0.7),
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
                style: loginTitleStyle,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Pastikan nomor handphone Anda valid untuk proses verifikasi,',
                style: loginDescStyle,
              ),
              SizedBox(
                height: 35,
              ),
              CustomTextField(
                hintText: 'Nomor Handphone',
                keyboardType: TextInputType.phone,
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                onPressed: () => Get.toNamed(Routers.validateOtp),
                label: 'Lanjut Verifikasi',
              ),
            ],
          )
        ],
      ),
    );
  }
}
