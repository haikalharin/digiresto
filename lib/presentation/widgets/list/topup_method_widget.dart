import 'package:digiresto/domain/core/constants/assets.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/entity/user/topup_list_model.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:digiresto/presentation/widgets/horizontal_menu_white_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class TopupMethodWidget extends StatelessWidget {
  final List<TopupList> data;
  final Axis scrollDirection;
  final void Function() runAction;
  const TopupMethodWidget(
      {Key? key,
      required this.data,
      this.scrollDirection = Axis.vertical,
      required this.runAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true, // new line
            scrollDirection: scrollDirection,
            padding: const EdgeInsets.all(5),
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return data[index].isEnable!
                  ? Column(
                      children: [
                        HorizontalMenuWhite(
                            title: data[index].title,
                            leftIcon: new Image.asset(
                              Assets.iconVirtualAccount,
                              width: 30,
                              height: 30,
                            ),
                            rightIcon: Icons.arrow_forward_outlined,
                            onClick: () {
                              Get.toNamed(Routers.topupCredit,
                                  arguments: data[index]);
                            }),
                        Container(
                          color: AppColors.greyStroke,
                          height: 10,
                          width: double.infinity,
                        ),
                      ],
                    )
                  : Container();
            }));
  }
}
