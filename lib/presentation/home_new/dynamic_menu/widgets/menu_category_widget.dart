import 'package:cached_network_image/cached_network_image.dart';
import 'package:digiresto/domain/core/constants/strings.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/home/entity/menu_category.dart';
import 'package:digiresto/domain/order/home_order_view_argument.dart';
import 'package:digiresto/presentation/home_new/list_outlet_page/list_outlet_page.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuCategoryWidget extends StatelessWidget {
  final MenuCategory menuCategory;
  const MenuCategoryWidget(this.menuCategory, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: InkWell(
        onTap: () {
          // Get.to(ListOutletPage(menuCategory));
          final label = menuCategory.getTitle;
          if (label == Strings.titleDigidiscount) {
            Get.toNamed(Routers.homeDigiDiscount,
                arguments: HomeOrderViewArgument(title: label, param: label));
          } else if (label == Strings.titleFrozenFood ||
              label == Strings.titleIndonesiaPastiBisa) {
            Get.toNamed(Routers.homeOutletCategory,
                arguments: HomeOrderViewArgument(title: label, param: label));
          } else if (label == Strings.titleNearby) {
            Get.toNamed(Routers.homeNearbyOutlet,
                arguments: HomeOrderViewArgument(title: label, param: label));
          } else {
            Get.to(
              ListOutletPage(menuCategory),
            );
          }
        },
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: CachedNetworkImage(
                  imageUrl: menuCategory.icon,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: Text(
                menuCategory.getTitle,
                style: AppFont.textBlack14SemiBold.copyWith(
                  color: AppColors.red,
                  height: 1.2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
