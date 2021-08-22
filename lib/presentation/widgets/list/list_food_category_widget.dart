import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/entity/order/outlet_product_category_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListFoodCategory extends StatelessWidget {
  final List<OutletProductDataResponse> data;
  final Axis scrollDirection;
  final String selected;
  final void Function(String?) runAction;
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
              if (selected == null && data[index].id == 0) {
                selectedTextColor = Colors.white;
                selectedContaineerColor = AppColors.redYoung;
              } else {
                selectedTextColor =
                    selected == data[index].name ? Colors.white : Colors.black;
                selectedContaineerColor = selected == data[index].name
                    ? AppColors.redYoung
                    : AppColors.greyStroke;
              }
              return GestureDetector(
                onTap: () {
                  if (data[index].id == 0) {
                    runAction(null);
                  } else {
                    runAction(data[index].name);
                  }
                },
                child: Container(
                  padding: EdgeInsets.all(7),
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    //color: AppColors.greyStroke,
                    color: selectedContaineerColor,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                      child: Text(
                    '${data[index].name}',
                    style: TextStyle(color: selectedTextColor),
                  )),
                ),
              );
            }));
  }
}
