import 'package:cached_network_image/cached_network_image.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/common_util.dart';
import 'package:digiresto/domain/profile/order_history_details.dart';
import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {
  final MenuItem menuItem;
  const MenuItemWidget(this.menuItem, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        bottom: 15,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          menuItem.img.isNotEmpty
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: CachedNetworkImage(
                    imageUrl: menuItem.img,
                    height: 70,
                    width: 70,
                  ),
                )
              : ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/0.png',
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
                    Text(
                      menuItem.title,
                      style: Styles.menuItemTitleStyle,
                    ),
                    Text(
                      CommonUtils.currencyFormat(menuItem.amount.toDouble()),
                      style: Styles.menuItemPriceStyle,
                    )
                  ],
                ),
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
