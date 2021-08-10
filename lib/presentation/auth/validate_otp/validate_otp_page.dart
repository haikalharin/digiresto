import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/presentation/auth/register/register_page.dart';
import 'package:digiresto/presentation/auth/widgets/auth_scafold.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ValidateOtpPage extends StatelessWidget {
  final String phoneNumber;
  const ValidateOtpPage({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthScafold(
      headerCurvedHeight: 250,
      title: 'Verify phone',
      suffixWidget: GestureDetector(
        child: Icon(
          Icons.help_outline,
          color: Colors.white,
          size: 30,
        ),
      ),
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 40),
        children: [
          SizedBox(
            height: 30,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: Styles.loginDescStyle.copyWith(height: 1.7),
              children: <TextSpan>[
                TextSpan(
                  text: """Silakan masukkan 6 digit kode verifikasi
yang kami kirim ke WhatsApp/SMS Anda
di nomor """,
                ),
                TextSpan(
                  text: phoneNumber,
                  style: Styles.loginDescStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),
                ),
                TextSpan(
                  text: """. Harap masukkan kode terbaru untuk melanjutkan.

Jika Anda tidak menerima kode,
klik kirim ulang kode. """,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          PinCodeTextField(
            enableActiveFill: true,
            keyboardType: TextInputType.number,
            pinTheme: PinTheme(
              borderWidth: 0,
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(6),
              fieldHeight: 55,
              fieldWidth: 45,
              activeFillColor: Colors.white,
              inactiveFillColor: Colors.white,
              selectedFillColor: Colors.white,
            ),
            hintCharacter: '●',
            hintStyle: Styles.hintStyle.copyWith(
              fontSize: 42,
              color: AppColors.greyColor,
              height: 1,
            ),
            appContext: context,
            length: 6,
            onChanged: (text) {},
            onCompleted: (text) => Get.to(RegisterPage()),
          ),
          SizedBox(
            height: 20,
          ),
          CustomButton(
            onPressed: () {},
            margin: EdgeInsets.zero,
            label: 'Kirim Ulang',
          ),
        ],
      ),
    );
  }
}
