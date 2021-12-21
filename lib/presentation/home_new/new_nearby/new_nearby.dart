import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/constants/font.dart';
import 'package:digiresto/domain/core/utils/random/random_images.dart';
import 'package:digiresto/domain/home/entity/menu_category.dart';
import 'package:digiresto/domain/home/entity/new_nearby_outlet.dart';
import 'package:digiresto/domain/order/order_detail_view_argument.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/home_new/list_outlet_page/list_outlet_page.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class NewNearby extends StatelessWidget {
  final List<OutletsHighight>? outlets;
  final MenuCategory? navigation;

  const NewNearby({Key? key, this.outlets, this.navigation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 15),
          child: Row(
            children: [
              Text(
                "${I10n.current.lang == 'id' ? outlets?.first.title.id : outlets?.first.title.en}",
                style: AppFont.textBlack14Bold,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: GestureDetector(
                    onTap: () => navigation != null
                        ? Get.to(ListOutletPage(navigation!))
                        : null,
                    child: SvgPicture.asset('assets/arrow_right.svg')),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 21).copyWith(bottom: 8),
          scrollDirection: Axis.horizontal,
          child: Row(children: _newNearbyOutlets(outlets?.first.outlets ?? [])),
        )
      ],
    );
  }

  List<Widget> _newNearbyOutlets(List<Outlet> outlets) {
    List<Widget> _widgets = [];
    for (int i = 0; i < outlets.length; i++) {
      if (i != 0) _widgets.add(SizedBox(width: 10));
      _widgets.add(_itemNearbyOutlet(outlets[i]));
    }
    return _widgets;
  }

  Widget _itemNearbyOutlet(Outlet outlet) {
    const double imgSize = 145;
    final TextStyle distanceTextStyle =
        AppFont.textBlack10Regular.copyWith(color: AppColors.greyColor);

    return InkWell(
      onTap: () => Get.toNamed(Routers.orderDetailOutlet,
          arguments: OrderDetailViewArgument(outlet.id, outlet.merchantId!)),
      child: Container(
        constraints: BoxConstraints(maxWidth: imgSize),
        decoration: BoxDecoration(
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                  color: AppColors.greyColor.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 2))
            ],
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: AppColors.greyColor)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
              child: FadeInImage.assetNetwork(
                placeholder: RandomImages.getImage().assetName,
                image: outlet.merchantLogo ?? "",
                imageErrorBuilder: (context, obj, stacktrace) => Image(
                  image: RandomImages.getImage(),
                ),
                fit: BoxFit.cover,
                height: imgSize,
                width: imgSize,
                alignment: Alignment.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      outlet.name!,
                      maxLines: 2,
                      style: AppFont.textBlack14Bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        outlet.distance.distance,
                        style: distanceTextStyle,
                      ),
                      Text(' | ', style: distanceTextStyle),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/star.svg',
                            width: 10,
                            height: 10,
                            color: (outlet.rating ?? 0) > 0
                                ? null
                                : AppColors.greyColor,
                          ),
                          Text((outlet.rating ?? ' -').toString(),
                              style: distanceTextStyle),
                        ],
                      )
                    ],
                  ),
                  Text.rich(
                    TextSpan(text: outlet.priceRangeDesc),
                    style: AppFont.textBlack10Regular,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
