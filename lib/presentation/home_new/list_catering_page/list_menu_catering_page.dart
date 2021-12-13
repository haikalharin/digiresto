import 'dart:ui';

import 'package:digiresto/domain/core/constants/assets.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/constants/dimens.dart';
import 'package:digiresto/domain/core/constants/font.dart';
import 'package:digiresto/domain/core/utils/launch_url/launch_url.dart';
import 'package:digiresto/domain/core/utils/random/random_images.dart';
import 'package:digiresto/domain/core/utils/utils.dart';
import 'package:digiresto/generated/assets.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/custom_review.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:digiresto/presentation/widgets/Error_popup_widget.dart';
import 'package:digiresto/presentation/widgets/top_background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ListMenuCateringPage extends StatelessWidget {
  const ListMenuCateringPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StackWithProgress(
      isLoading: false,
      children: [
        DefaultTabController(
          length: 2,
          initialIndex: 1,
          child: Scaffold(
            body: Column(
              children: [
                TopBackgound(backgroundColor: AppColors.red),
                _header(),
                TabBar(onTap: (index) {
                  
                }, tabs: [
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(AssetImage(AppAssets.iconOutletOverview),
                            color: AppColors.redTabBar),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          I10n.current.outlet_overview,
                          style: AppFont.textRed14Bold,
                        )
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(AssetImage(AppAssets.iconOutletOverview),
                            color: AppColors.redTabBar),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          I10n.current.outlet_menu,
                          style: AppFont.textRed14Bold,
                        )
                      ],
                    ),
                  ),
                ]),
                Expanded(
                  child: TabBarView(children: [_menuOverview(), _menuTab(),]),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  

  Widget _header() {
    return Stack(children: [
      Container(
        height: 135,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.bgHome),
            fit: BoxFit.fill,
          ),
          shape: BoxShape.rectangle,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_outlined,
                        color: Colors.white, size: 24.0),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 200,
                              child: Text("Ta wan BXC",
                                  style: TextStyle(
                                    fontFamily: "roboto",
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.left),
                            ),
                            IconButton(
                              icon: Icon(Icons.refresh,
                                  color: Colors.white, size: 24.0),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 6),
                              child: Text(
                                'Powered By Digiresto',
                                style: TextStyle(
                                  fontFamily : "roboto",
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                        
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "${I10n.current.cart_order_type}:",
                                style: AppFont.textBlack10SemiBold
                                    .copyWith(color: AppColors.white),
                              ),
                              SizedBox(
                                width: 9,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  _showDialogSalesType();
                                },
                                child: Container(
                                  width: Get.width * 0.55,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            ImageIcon(
                                                AssetImage(AppAssets
                                                    .iconOutletOrderDelivery),
                                                size: 16,
                                                color: AppColors.white),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              Utils.formatSalesType('onlineDriver'),
                                              style: AppFont.textBlack14Bold
                                                  .copyWith(
                                                      color: AppColors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Icon(Icons.expand_more,
                                          color: AppColors.white),
                                    ],
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white30,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(42))),
                              )
                            ])
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }

  Future<void> _showDialogSalesType() async {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
        ),
        backgroundColor: Colors.white,
        context: Get.context!,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 8,
              ),
              ListTile(
                // leading: GestureDetector(
                //   onTap: () {
                //     Get.back();
                //   },
                //   child: ImageIcon(
                //     AssetImage(AppAssets.iconBackBlack),
                //     color: Colors.black,
                //   ),
                // ),
                title: Container(
                  //make title to center
                  //transform: Matrix4.translationValues(-24, 0, 0),
                  child: Center(
                    child: new Text(
                      'Silahkan pilih tipe order',
                      style: AppFont.textBlack17Bold,
                    ),
                  ),
                ),
                enabled: false,
              ),
              Column(
                children: [
                  Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
          child: Row(
            children: [
              Container(
                child: ImageIcon(
                  AssetImage(AppAssets.iconOutletOrderDelivery),
                  color: AppColors.white,
                  size: 24,
                ),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: AppColors.redD12B34, shape: BoxShape.circle),
              ),
              SizedBox(
                width: 16,
              ),
              Text(I10n.current.landing_delivery,
                  style: AppFont.textBlack14Bold),
              Expanded(child: Container()),
              ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    I10n.current.cart_choose,
                    style: AppFont.textBlack12Bold
                        .copyWith(color: AppColors.redD12B34),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 0,
                      side: BorderSide(
                        width: 1.0,
                        color: AppColors.redD12B34,
                      ))),
            ],
          ),
        )
                ],
              ),
              SizedBox(
                height: 16,
              )
            ],
          );
        });
  }

  Widget _menuOverview(){
    return  Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    I10n.current.outlet_information,
                    style: AppFont.textBlack14Bold,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Something deskripsi yang cukup panjang ',
                    style: AppFont.textBlack12Regular,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Jln. Sudirman, Daerah khusus ibu kota',
                    style: AppFont.textBlack12Regular,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      CustomRating(
                        currentRating:
                            4.6.floor(),
                        onRatingSelected: (int) {},
                        isEnable: false,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "200 review",
                        style: AppFont.textBlack12Regular
                            .copyWith(color: AppColors.greyRating),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 28,
                        child: ElevatedButton(
                          onPressed: null,
                          child: Text(
                              
                                  I10n.current.outlet_open
                                  ,
                              style: AppFont.textBlack12Bold
                                  .copyWith(color: Colors.white)),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                          color: AppColors.green54C30F))),
                              backgroundColor: MaterialStateProperty.all(
                                  AppColors.green54C30F)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                      "Pembaruan terahkir 3 hari yang lalu",
                      style: AppFont.textBlack12Regular),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      ImageIcon(AssetImage(AppAssets.iconInstagram),
                          size: 18, color: AppColors.redTabBar),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "@instagram",
                        style: AppFont.textBlack12SemiBold
                            .copyWith(color: AppColors.redTabBar),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      ImageIcon(AssetImage(AppAssets.iconWeb),
                          size: 18, color: AppColors.redTabBar),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "www.website.com",
                        style: AppFont.textBlack12SemiBold
                            .copyWith(color: AppColors.redTabBar),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.greyBorder),
                        borderRadius: BorderRadius.circular(6)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Wrap(children: [Container(
          // width: MediaQuery.of(Get.context!).size.width * 0.32,
          child: Row(
            children: [
              ImageIcon(AssetImage(AppAssets.iconOutletOrderDelivery),
                  size: 14, color: AppColors.redTabBar),
              SizedBox(
                width: 4,
              ),
              Text(
                I10n.current.landing_delivery,
                style: AppFont.textBlack11Light,
              ),
            ],
          ),
        )]),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 43,
                          width: MediaQuery.of(Get.context!).size.width * 0.45,
                          child: ElevatedButton(
                            onPressed: () {
                              // String phone =
                              //     controller.detailOutlet.value!.ownerPhone;
                              //                           String url =
                              // "https://api.whatsapp.com/send/?phone=" +
                              //     phone +
                              //     "&text=hi%20Digiresto";
                              String callBackUrl =
                                 '';
                              String url = callBackUrl;
                              LaunchUrl.run(
                                url,
                                onError: () {},
                                onSuccess: () {},
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ImageIcon(AssetImage(AppAssets.iconSendMessage),
                                    color: AppColors.white),
                                SizedBox(width: 8),
                                Text(I10n.current.outlet_message,
                                    style: AppFont.textBlack12SemiBold
                                        .copyWith(color: Colors.white)),
                              ],
                            ),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        side: BorderSide(
                                            color: AppColors.redTabBar))),
                                backgroundColor: MaterialStateProperty.all(
                                    AppColors.redTabBar)),
                          ),
                        ),
                        SizedBox(
                          height: 43,
                          width: MediaQuery.of(Get.context!).size.width * 0.45,
                          child: ElevatedButton(
                            onPressed: () async {
                              final location =
                                  '';
                              await LaunchUrl.openMap(double.parse(location[0]),
                                  double.parse(location[1]), onError: () {
                                ErrorPopupWidget.show(
                                    "Error", "error membuka aplikasi map", () {
                                  Get.back(closeOverlays: true);
                                });
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ImageIcon(AssetImage(AppAssets.iconMapRed),
                                    color: AppColors.white),
                                SizedBox(width: 8),
                                Text(I10n.current.outlet_location,
                                    style: AppFont.textBlack12SemiBold
                                        .copyWith(color: Colors.white)),
                              ],
                            ),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        side: BorderSide(
                                            color: AppColors.redTabBar))),
                                backgroundColor: MaterialStateProperty.all(
                                    AppColors.redTabBar)),
                          ),
                        ),
                      ]),
                ],
              ),
            ),
          );
  }

  Widget _menuTab() {
    return Column(
      children: [
        Container(
          color: AppColors.white,
          padding: EdgeInsets.symmetric(
              horizontal: Dimens.defaultMargin,
              vertical: Dimens.defaultMargin / 2),
          child: Column(children: [
            Row(
              children: [
                SvgPicture.asset(
                  Assets.iconsFoodIcon,
                  height: 15,
                  width: 15,
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    Utils.formatIndonesiaWithoutHour(
                      DateTime.now().toString(),
                    ),
                    style: AppFont.textBlack14Bold,
                  ),
                )
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(
                  Assets.iconsFoodIcon,
                  height: 15,
                  width: 15,
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                        text: 'Makan Siang',
                        style: AppFont.textBlack14Bold,
                      ),
                      TextSpan(text: ' \u2022 '),
                      TextSpan(text: 'Diantar pukul '),
                      TextSpan(
                        text: '10:00 - 13.00',
                        style: AppFont.textBlack14Bold,
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ]),
        ),
        Container(
          color: AppColors.greyBorder,
          height: 10,
          width: double.infinity,
        ),
        Expanded(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Dimens.defaultMargin),
            child: ListView.separated(
                itemBuilder: (_, __) => Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                8.0,
                              ),
                            ),
                            child: Image(
                              errorBuilder: (context, obj, stacktrace) {
                                return Image(
                                  height: 96,
                                  width: 96,
                                  image: RandomImages.getImage(),
                                );
                              },
                              image: RandomImages.getImageUrlDefault("", ""),
                              fit: BoxFit.cover,
                              height: 96,
                              width: 96,
                              alignment: Alignment.center,
                            ),
                          ),
                          Expanded(
                            
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Ayam Bakar Bumbu Bali',
                                    style: AppFont.textBlack14Bold,
                                  ),
                                  Text(
                                    'Deskripsi singkat Ayam Bakar Bumbu Bali',
                                    style: AppFont.textBlack11Light,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            'Rp ${Utils.formatRupiah('20000')}',
                            style: AppFont.textBlack14Bold
                                .copyWith(fontWeight: FontWeight.w800),
                          )
                        ],
                      ),
                ),
                separatorBuilder: (_, __) => Container(
                      height: 8,
                      
                    ),
                itemCount: 20),
          ),
        )
      ],
    );
  }
}
