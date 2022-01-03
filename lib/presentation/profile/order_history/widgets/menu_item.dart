import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/common_util.dart';
import 'package:digiresto/domain/core/utils/random/random_images.dart';
import 'package:digiresto/domain/profile/order_history_details.dart';
import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {
  final MenuItem menuItem;
  const MenuItemWidget(this.menuItem, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    num price;
    num modifierTotalPrice = 0;
    menuItem.modifiers.forEach((modifier) {
      modifierTotalPrice += modifier.price * modifier.qty;
    });
    price = menuItem.price + modifierTotalPrice;

    final random = Random();
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        bottom: 15,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          menuItem.img != null || (menuItem.img?.isEmpty ?? false)
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: CachedNetworkImage(
                    imageUrl: menuItem.img!,
                    height: 70,
                    width: 70,
                    errorWidget: (context, obj, stacktrace) {
                      return Image(
                        image: RandomImages.getImage(),
                      );
                    },
                  ),
                )
              : ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/${random.nextInt(10)}.png',
                    height: 70,
                    width: 70,
                  ),
                ),
          SizedBox(
            width: 17,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Text(
                        menuItem.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        softWrap: false,
                        style: Styles.menuItemTitleStyle,
                      ),
                    ),
                    Text(
                      CommonUtils.currencyFormat(price.toDouble()),
                      style: Styles.menuItemPriceStyle,
                    )
                  ],
                ),
                if (menuItem.modifiers.isNotEmpty)
                  Text(
                      menuItem.modifiers
                          .map((e) => '${e.title} (${e.qty})')
                          .toList()
                          .join(', '),
                      softWrap: false,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: AppFont.textBlack12Regular.copyWith(
                        color: AppColors.grey747474,
                        height: 2,
                      ),
                      textAlign: TextAlign.left),
                Text(
                  '(${menuItem.qty}x)',
                  style: Styles.menuItemQtyStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                if (menuItem.note.isNotEmpty)
                  Text(
                    'Note: ${menuItem.note}',
                    style: Styles.menuItemNoteStyle,
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
