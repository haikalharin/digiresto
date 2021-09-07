import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:digiresto/domain/core/theme.dart';

class CustomScafold extends StatelessWidget {
  final bool showBackButton;
  final bool centerTitle;
  final Widget body;
  final Widget suffixWidget;
  final String title;
  final Widget? titleWidget;
  final Color appBarColor;
  final Color iconBackColor;
  final Color titleFontColor;

  const CustomScafold({
    Key? key,
    this.centerTitle = true,
    this.titleWidget,
    this.body = const SizedBox(),
    this.suffixWidget = const SizedBox(
      width: 35,
    ),
    this.title = '',
    this.showBackButton = false,
    this.appBarColor = Colors.white,
    this.iconBackColor = Colors.black,
    this.titleFontColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.mainColor,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            Container(
              color: appBarColor,
              padding: const EdgeInsets.all(
                Dimens.defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  showBackButton
                      ? Container(
                          margin: const EdgeInsets.only(right: 15),
                          child: GestureDetector(
                            onTap: () => Get.back(),
                            child: SvgPicture.asset(
                              'assets/arrow_back_icon.svg',
                              color: iconBackColor,
                            ),
                          ),
                        )
                      : SizedBox(
                          width: 35,
                        ),
                  Expanded(
                    child: titleWidget ??
                        Text(
                          title,
                          style: Styles.appBarTitleStyle
                              .copyWith(color: titleFontColor),
                          textAlign:
                              centerTitle ? TextAlign.center : TextAlign.left,
                        ),
                  ),
                  suffixWidget,
                ],
              ),
            ),
            Expanded(
              child: body,
            ),
          ],
        ),
      ),
    );
  }
}
