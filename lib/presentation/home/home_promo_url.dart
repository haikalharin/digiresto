import 'dart:convert';

import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/constants/dimens.dart';
import 'package:digiresto/presentation/widgets/top_background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class HomePromoUrlScreen extends StatelessWidget {
  goBack(BuildContext context) {
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    print(ModalRoute.of(context)!.settings.arguments);
    final routes =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final promoBanner =
        'https://dev-digimitra.nos.wjv-1.neo.id/admin/Banners/Promo%20Banner%20Nearby_1638251117631.jpeg';

    final dec = 'kalau bukan htlm gimana ya';

    return Scaffold(
      backgroundColor: AppColors.white,
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        width: double.infinity,
        child: Column(
          children: [
            Divider(
              color: AppColors.greyDivider,
            ),
            Padding(
              padding: const EdgeInsets.all(
                Dimens.defaulCardPadding,
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.redYoung,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      Dimens.defaultBorderRadius,
                    ),
                  ),
                ),
                child: Center(
                  child: Text("Selengkapnya",
                      style: TextStyle(
                        fontFamily: "roboto",
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBackgound(backgroundColor: AppColors.red),
            Container(
              color: AppColors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          icon: new Icon(
                            Icons.arrow_back_outlined,
                            color: Colors.black,
                            size: 24.0,
                          ),
                          onPressed: () => Get.back(),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Text("Promo sad asda a asda asd asdsa sasdasda",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              fontFamily: "roboto",
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center),
                      ),
                      Expanded(
                        flex: 1,
                        child: SizedBox(),
                      )
                    ],
                  ),
                  Container(
                    color: AppColors.greyStroke,
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(Dimens.defaultMargin),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: promoBanner != null
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image(
                                    image: promoBanner.substring(1, 4) ==
                                            'data:'
                                        ? MemoryImage(
                                            Base64Decoder()
                                                .convert(promoBanner),
                                            scale: 0.5)
                                        : NetworkImage(promoBanner, scale: 0.5)
                                            as ImageProvider,
                                    fit: BoxFit.fill,
                                    alignment: Alignment.topCenter,
                                  ),
                                )
                              : Container(),
                        ),
                        Html(data: dec)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
