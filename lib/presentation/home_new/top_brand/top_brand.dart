import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/constants/font.dart';
import 'package:digiresto/domain/core/utils/random/random_images.dart';
import 'package:digiresto/domain/home/entity/menu_category.dart';
import 'package:digiresto/domain/home/entity/top_brand_response.dart';
import 'package:digiresto/presentation/home_new/list_catering_page/list_catering_page.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopBrandOutlet extends StatelessWidget {
  final TopBrandResponData? topBrand;
  final MenuCategory? menuCategory;

  const TopBrandOutlet({
    Key? key,
    this.topBrand,
    this.menuCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 0).copyWith(top: 5),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: _topBrandOutlets(topBrand!),
          ),
        )
      ],
    );
  }

  _topBrandOutlets(
    TopBrandResponData outletslist,
  ) {
    List<Widget> _widgets = [];
    for (int i = 0; i < outletslist.listOutlet.length; i++) {
      if (i != 0) _widgets.add(SizedBox(width: 10));
      _widgets.add(_itemNearbyOutlet(outletslist, i));
    }
    return _widgets;
  }

  Widget _itemNearbyOutlet(TopBrandResponData outlet, index) {
    const double imgSize = 145;
    final TextStyle distanceTextStyle =
        AppFont.textBlack10Regular.copyWith(color: AppColors.greyColor);

    return InkWell(
      onTap: () => Get.to(
        ListCateringPage(
          menuCategory: menuCategory,
          nameMerchant: outlet.listOutlet[index].name,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
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
                    image: outlet.listOutlet[index].logo,
                    imageErrorBuilder: (context, obj, stacktrace) => Image(
                      image: RandomImages.getImage(),
                    ),
                    fit: BoxFit.cover,
                    height: imgSize,
                    width: imgSize,
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            constraints: BoxConstraints(maxWidth: imgSize),
            padding: EdgeInsets.only(top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    outlet.listOutlet[index].name,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: AppFont.textBlack14Bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
