import 'package:digiresto/application/landing/bottom_tab_cubit.dart';
import 'package:digiresto/domain/core/constants/strings.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/order/home_order_view_argument.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class SearchBox extends StatelessWidget {
  SearchBox({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimens.defaultMargin),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(
            Routers.homeNearbyOutlet,
            arguments: HomeOrderViewArgument(
              title: I10n.current.home_nearby_outlet,
              param: Strings.titleNearby,
            ),
          )?.then((value) {
            Get.context!.read<BottomTabCubit>().checkAllCounter();
          });
        },
        child: Container(
          height: 35,
          decoration: BoxDecoration(
            color: AppColors.grey[50],
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Row(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Icon(
                    Icons.search,
                    color: AppColors.grey[100],
                    size: 18,
                  )),
              Text(
                I10n.current.home_search_food_hint,
                style: AppFont.textBlack12Regular.copyWith(
                  color: AppColors.greyField,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
