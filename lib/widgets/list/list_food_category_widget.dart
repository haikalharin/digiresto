import 'package:flutter/material.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/rendering.dart';

class ListFoodCategory extends StatelessWidget {
  final List<dynamic> data;
  final Axis scrollDirection;
  final int selected;
  const ListFoodCategory({Key key, this.data,this.scrollDirection= Axis.horizontal, this.selected})
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
              Color selectedTextColor = selected==data[index]["id"] ? Colors.white : Colors.black;
              Color selectedContaineerColor = selected==data[index]["id"] ? AppColors.redYoung : AppColors.greyStroke;
              return Container(
                padding:  EdgeInsets.all(7),
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  //color: AppColors.greyStroke,
                  color: selectedContaineerColor,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(child: Text('${data[index]["title"]}', style: TextStyle(color: selectedTextColor),)),
              );
            }
        )
    );
  }
}
