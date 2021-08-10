import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/presentation/auth/widgets/auth_scafold.dart';
import 'package:digiresto/presentation/auth/widgets/draw_circle.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return AuthScafold(
      title: 'Daftar',
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            padding: EdgeInsets.all(Dimens.defaultMargin),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Info Profil',
                      style: Styles.loginDescStyle.copyWith(
                        color: AppColors.mainColor,
                      ),
                    ),
                    Text(
                      'Buat Pin Login',
                      style: Styles.loginDescStyle.copyWith(
                        color: AppColors.greyColor2,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: 8,
                          ),
                          child: DrawCircle(),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: double.infinity,
                        height: 3,
                        color: AppColors.greyColor2,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 8,
                        ),
                        child: DrawCircle(
                          color: AppColors.greyColor2,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
