import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/entity/user/topup_list_model.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopupWidget extends StatelessWidget {
  final TopupList data;
  final Axis scrollDirection;
  final void Function() runAction;
  const TopupWidget(
      {Key? key,
      required this.data,
      this.scrollDirection = Axis.vertical,
      required this.runAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height - 170,
        child: ListView.builder(
            scrollDirection: scrollDirection,
            shrinkWrap: true, // new line
            padding: const EdgeInsets.all(5),
            itemCount: data.subCategory!.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Get.toNamed(Routers.topupCreditNominal, arguments: {
                    "topupList": data,
                    "subCategory": data.subCategory![index]
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: AppColors.red,
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            '${data.subCategory![index].title}',
                            style: TextStyle(
                                color: AppColors.greyStroke,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )),
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
