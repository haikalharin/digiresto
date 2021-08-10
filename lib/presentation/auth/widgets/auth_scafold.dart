import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/presentation/core/widgets/header_curved.dart';
import 'package:flutter/material.dart';

class AuthScafold extends StatelessWidget {
  final String title;
  final Widget child;
  final Widget? suffixWidget;
  const AuthScafold({
    Key? key,
    required this.child,
    this.suffixWidget,
    this.title = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceTopBar = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          HeaderCurvedWidget(
            height: deviceHeight * 0.4,
            color: mainColor.withOpacity(0.7),
          ),
          Column(
            children: [
              SizedBox(
                height: deviceTopBar,
              ),
              Padding(
                padding: EdgeInsets.all(defaultMargin),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: deviceWidth * 0.4,
                          child: Text(
                            'Daftar',
                            style: titleStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        suffixWidget ??
                            InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5,
                                ),
                                child: Text(
                                  'LANJUT',
                                  style: loginDescStyle,
                                ),
                              ),
                            ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(child: child),
            ],
          ),
        ],
      ),
    );
  }
}
