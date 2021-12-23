import 'dart:convert';

import 'package:digiresto/application/home_new/bloc/home_bloc.dart';
import 'package:digiresto/application/home_new/static_banner_controller.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/home/entity/menu_category.dart';
import 'package:digiresto/domain/home/entity/static_banner.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class StaticBannerWidget extends GetView<StaticBannerController> {
  final List<MenuCategory> menuCategory;

  const StaticBannerWidget({
    required this.menuCategory,
    Key? key,
  }) : super(key: key);

  // _showDetailImage(String imageUrl) {
  //   Navigator.of(Get.context!).push(TransparentRoute(
  //       builder: (BuildContext context) =>
  //           DetailImageDialog(dataImage: imageUrl)));
  // }

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.fiber_manual_record,
              color: isCurrentPage ? AppColors.red : Colors.grey, size: 12),
        ],
      ),
    );
  }

  Widget _promoList(StaticBanner data) {
    return GestureDetector(
        onTap: () {
          Get.toNamed(Routers.homePromoUrl, arguments: {
            "url": data.promoUrl,
            "title": data.promoName,
            "image_url": data.promoBanner,
            "desc": data.promoDescription,
            "callId": data.promoCallMenuId,
            "menu": menuCategory.firstWhere(
              (element) => element.id == data.promoCallMenuId,
            )
          });
        },
        child: Container(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: data.promoBanner != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image(
                      image: data.promoBanner?.substring(1, 4) == 'data:'
                          ? MemoryImage(
                              Base64Decoder().convert(data.promoBanner!),
                              scale: 0.5)
                          : NetworkImage(data.promoBanner!, scale: 0.5)
                              as ImageProvider,
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  )
                : Container()));
  }

  @override
  Widget build(BuildContext context) {
    Get.put(StaticBannerController());
    PageController _controller =
        Get.put(PageController(initialPage: 0), tag: "home");

    return BlocConsumer<HomeBloc, HomeState>(
      bloc: getIt<HomeBloc>()..add(HomeEvent.getStaticBanner()),
      listener: (context, state) {
        state.optionBanners.fold(
          () {},
          (data) => data.fold(
            (l) {},
            (ilist) => controller.setListStaticBanner(
              ilist.unlock,
            ),
          ),
        );
      },
      builder: (context, state) => Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              bottom: 10,
            ),
            height: Get.height * 0.25,
            width: double.infinity,
            child: PageView(
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                controller.setSlideIndex(index);
              },
              controller: _controller,
              children: [
                for (int i = 0; i < controller.listStaticBanner.length; i++)
                  _promoList(controller.listStaticBanner[i]),
              ],
            ),
          ),
          Obx(
            () => Container(
              padding: EdgeInsets.only(left: 10, top: 5, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      for (int i = 0;
                          i < controller.listStaticBanner.length;
                          i++)
                        i == controller.slideIndex.value
                            ? _buildPageIndicator(true)
                            : _buildPageIndicator(false),
                    ],
                  ),
                  //hidden see all promo request by user
                  // GestureDetector(
                  //   onTap: () {},
                  //   child: Row(
                  //     children: [
                  //       Text(
                  //         "Lihat semua promo",
                  //         style: AppFont.textRed14Bold,
                  //       ),
                  //       SizedBox(width: 9),
                  //       Image(
                  //         image: new AssetImage(AppAssets.iconForwardRed),
                  //         height: 12,
                  //       ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
