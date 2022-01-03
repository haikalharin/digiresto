import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/presentation/core/widgets/header_curved.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class AuthScafold extends StatelessWidget {
  final String title;
  final Widget child;
  final Widget? suffixWidget;
  final double? headerCurvedHeight;
  final void Function()? onNext;
  final void Function()? onBackTap;
  const AuthScafold({
    Key? key,
    required this.child,
    this.suffixWidget,
    this.title = '',
    this.headerCurvedHeight,
    this.onNext,
    this.onBackTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceTopBar = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          HeaderCurvedWidget(
            height: headerCurvedHeight ?? deviceHeight * 0.4,
            color: AppColors.mainColor.withOpacity(0.7),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              height: MediaQuery.of(context).size.width * 0.65,
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                color: AppColors.mainColor2.withOpacity(0.5),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                    MediaQuery.of(context).size.width * 0.7,
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: deviceTopBar,
              ),
              Padding(
                padding: EdgeInsets.all(Dimens.defaultMargin),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: deviceWidth * 0.4,
                          child: Text(
                            title,
                            style: Styles.titleStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: onBackTap ?? () => Get.back(),
                          child: Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        suffixWidget ??
                            InkWell(
                              onTap: onNext,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5,
                                ),
                                child: Text(
                                  'LANJUT',
                                  style: Styles.loginDescStyle,
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
