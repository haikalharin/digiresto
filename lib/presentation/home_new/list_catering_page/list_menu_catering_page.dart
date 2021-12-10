import 'package:digiresto/domain/core/constants/assets.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/constants/dimens.dart';
import 'package:digiresto/domain/core/constants/font.dart';
import 'package:digiresto/domain/core/utils/random/random_images.dart';
import 'package:digiresto/domain/core/utils/utils.dart';
import 'package:digiresto/generated/assets.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
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
                TabBar(onTap: (index) {}, tabs: [
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
                            color: AppColors.greyCOC0C0),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          I10n.current.outlet_menu,
                          style: AppFont.textGrey14Bold,
                        )
                      ],
                    ),
                  ),
                ]),
                Expanded(
                  child: TabBarView(children: [Container(), _menuTab()]),
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
                              child: Text("Ta wan XBC",
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
                                onPressed: () {},
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
                                                    .iconOutletOrderDineIn),
                                                size: 16,
                                                color: AppColors.white),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              Utils.formatSalesType('takeAway'),
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
          color: AppColors.greyColor,
          height: 10,
          width: double.infinity,
        ),
        Expanded(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Dimens.defaultMargin),
            child: ListView.separated(
                itemBuilder: (_, __) => Row(
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
                            child: Text(
                              'Ayam Bakar Bumbu Bali',
                              style: AppFont.textBlack14Bold,
                            ),
                          ),
                        ),
                        Text(
                          Utils.formatRupiah('20000'),
                          style: AppFont.textBlack14Bold
                              .copyWith(fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                separatorBuilder: (_, __) => Container(
                      height: 8,
                      color: AppColors.white,
                    ),
                itemCount: 50),
          ),
        )
      ],
    );
  }
}
