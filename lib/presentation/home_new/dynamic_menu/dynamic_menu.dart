import 'package:digiresto/application/home_new/bloc/home_bloc.dart';
import 'package:digiresto/domain/home/entity/menu_category.dart';
import 'package:digiresto/presentation/home_new/dynamic_menu/widgets/menu_category_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DynamicMenu extends StatelessWidget {
  const DynamicMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final menuCategoryList = state.optionMenuCategory.fold(
          () => <MenuCategory>[],
          (data) => data.fold((l) => <MenuCategory>[], (r) => r.unlock),
        );
        return state.isLoading
            ? Container()
            : Container(
                padding: EdgeInsets.only(top: 15),
                width: double.infinity,
                child: GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  childAspectRatio: 7 / 6,
                  children: [
                    ...menuCategoryList
                        .where((element) => element.isEnable)
                        .map(
                          (menuCategory) => MenuCategoryWidget(
                            menuCategory,
                          ),
                        ),
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
      },
    );
  }
}
