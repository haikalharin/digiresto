import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/constants/font.dart';
import 'package:digiresto/domain/entity/order/outlet_product_category_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListFoodCategory extends StatelessWidget {
  final List<OutletProductCategoryDataResponse> data;
  final Axis scrollDirection;
  final String? selected;
  final void Function(OutletProductCategoryDataResponse?) runAction;
  const ListFoodCategory(
      {Key? key,
      required this.data,
      this.scrollDirection = Axis.horizontal,
      required this.selected,
      required this.runAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        child: ListView.builder(
            scrollDirection: scrollDirection,
            shrinkWrap: true, // new line
            padding: const EdgeInsets.all(5),
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              Color selectedTextColor;
              Color selectedContaineerColor;
              if (selected == "" && data[index].id == 0) {
                selectedTextColor = Colors.white;
                selectedContaineerColor = AppColors.redYoung;
              } else {
                selectedTextColor = selected == data[index].id.toString()
                    ? Colors.white
                    : Colors.black;
                selectedContaineerColor = selected == data[index].id.toString()
                    ? AppColors.redYoung
                    : AppColors.greyStroke;
              }
              return GestureDetector(
                onTap: () {
                  if (data[index].id == 0) {
                    runAction(null);
                  } else {
                    runAction(data[index]);
                  }
                },
                child: Container(
                  padding: EdgeInsets.only(left: 24, right: 24),
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    //color: AppColors.greyStroke,
                    color: selectedContaineerColor,
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: Center(
                      child: Text(
                    '${data[index].name}',
                    style: AppFont.textBlack13Regular
                        .copyWith(color: selectedTextColor),
                  )),
                ),
              );
            }));
  }
}
