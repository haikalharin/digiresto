import 'package:digiresto/domain/home/entity/menu_category.dart';
import 'package:digiresto/presentation/home_new/dynamic_menu/widgets/menu_category_widget.dart';
import 'package:flutter/material.dart';

class DynamicMenu extends StatelessWidget {
  final List<MenuCategory> menuCategories;
  final List<GlobalKey> menuCategoryKeys;
  const DynamicMenu({
    Key? key,
    required this.menuCategories,
    required this.menuCategoryKeys,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      width: double.infinity,
      child: GridView.count(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: menuCategories.length > 4 ? 3 : 2,
        childAspectRatio: menuCategories.length > 4 ? (7 / 6) : (16 / 9),
        children: [
          ...menuCategories.map((menuCategory) {
            var index = menuCategories.indexOf(menuCategory);
            return MenuCategoryWidget(
              menuCategory,
              key: menuCategoryKeys[index],
            );
          }),
        ],

        // gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        //     maxCrossAxisExtent: 200,
        //     childAspectRatio: 3 / 2,
        //     crossAxisSpacing: 20,
        //     mainAxisSpacing: 20),
        // itemCount: menuCategoryList.length,
        // itemBuilder: (BuildContext ctx, index) {
        //   return
        // },
      ),
    );
  }
}
