import 'package:cached_network_image/cached_network_image.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/home/entity/menu_category.dart';
import 'package:flutter/material.dart';

class MenuCategoryWidget extends StatelessWidget {
  final MenuCategory menuCategory;
  const MenuCategoryWidget(this.menuCategory, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: InkWell(
        onTap: () {},
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
                menuCategory.title.en,
                style: AppFont.textBlack14SemiBold
                    .copyWith(color: AppColors.red, height: 1.2),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
