import 'package:digiresto/application/catering/catering_bloc.dart';
import 'package:digiresto/application/home_new/outlet/list_outlet_page_controller.dart';
import 'package:digiresto/domain/core/constants/assets.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/constants/font.dart';
import 'package:digiresto/domain/home/entity/menu_category.dart';
import 'package:digiresto/domain/order/order_detail_view_argument.dart';
import 'package:digiresto/generated/assets.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/custom_scafold.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:digiresto/presentation/widgets/empty_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'list_catering_outlet_widget.dart';

class ListCateringPage extends StatelessWidget {
  final MenuCategory? menuCategory;
  final String? nameMerchant;

  ListCateringPage({
    this.menuCategory,
    this.nameMerchant,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(ListOutletPageController());

    return CustomScafold(
      title: menuCategory?.getTitle ?? "-",
      showBackButton: true,
      resizeToAvoidBottomInset: false,
      appBarColor: Colors.white,
      iconBackColor: Colors.black,
      body: ListCateringWidget(
        menuCategory: menuCategory,
        nameMerchant: nameMerchant,
      ),
    );
  }
}

class ListCateringWidget extends GetView<ListOutletPageController> {
  final MenuCategory? menuCategory;
  final String? nameMerchant;

  ListCateringWidget({
    Key? key,
    required this.menuCategory,
    required this.nameMerchant,
  }) : super(key: key);

  // final searchController = TextEditingController();

  void loadMoreOutlet() {
    controller.getCateringOutlets(
      search: controller.searchController.value.text,
      pageParam: controller.page.value + 1,
    );
  }

  void onRefresh() async {
    controller.page.value = 1;
    controller.listOutlet.clear();
    controller.getCateringOutlets(
      search: controller.searchController.value.text,
      pageParam: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    controller.searchController.value.text = nameMerchant ?? "";
    controller.getCateringOutlets(
      search: controller.searchController.value.text,
      pageParam: 1,
    );
    return BlocConsumer<CateringBloc, CateringState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          getListOutletCateringSuccess: (r) {
            if (r.outlets.isNotEmpty) {
              controller.listOutlet.addAll(r.outlets);
              controller.page.value = controller.page.value + 1;
            } else {
              if (!controller.isHideOpen.value) {
                controller.isHideOpen.value = true;
                controller.page.value = 1;
                loadMoreOutlet();
              }
            }
          },
        );
      },
      builder: (context, state) {
        return StackWithProgress(
          isLoading: state.maybeMap(
            orElse: () => false,
            loadInProgress: (_) => true,
          ),
          children: [
            Column(
              children: [
                Container(
                  height: 10,
                  decoration: BoxDecoration(
                    color: AppColors.grey[50],
                    borderRadius: BorderRadius.circular(0),
                    border: Border.all(
                      color: Colors.black12,
                      width: 0.5,
                    ),
                  ),
                ),
                Container(
                  height: 162,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    border: Border.all(
                      color: Colors.black12,
                      width: 0.5,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        height: 37,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  _showDialogEatingType(
                                    context: context,
                                    category: menuCategory!,
                                    onTap:
                                        (titleType, valueType, valueDelivery) {
                                      controller.listOutlet.clear();
                                      controller.isHideOpen.value = false;
                                      controller.page.value = 1;

                                      controller.changeTypeMenu(
                                        titleType,
                                        valueType,
                                        valueDelivery,
                                      );
                                      controller.getCateringOutlets(
                                        search: controller
                                            .searchController.value.text,
                                        pageParam: 1,
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  height: 37,
                                  margin: EdgeInsets.only(top: 1, bottom: 1),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.redD12B34,
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      bottomLeft: Radius.circular(8),
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        Assets.iconsFoodIcon,
                                        height: 15,
                                        width: 15,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(width: 7),
                                      Obx(
                                        () => Text(
                                          controller.mealsTypesTitle.value,
                                          softWrap: false,
                                          overflow: TextOverflow.ellipsis,
                                          style: AppFont.textRed14SemiBold
                                              .copyWith(
                                            color: AppColors.mainColor,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      SizedBox(width: 16),
                                      SvgPicture.asset(
                                        Assets.iconsIcArrowDown,
                                        height: 7,
                                        width: 7,
                                        fit: BoxFit.fill,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 37,
                                child: TextField(
                                  textInputAction: TextInputAction.search,
                                  onSubmitted: (value) {
                                    controller.listOutlet.clear();
                                    controller.page.value = 1;
                                    controller.getCateringOutlets(
                                      search: controller
                                          .searchController.value.text,
                                      pageParam: 1,
                                    );
                                  },
                                  autocorrect: false,
                                  controller: controller.searchController.value,
                                  onTap: () {
                                    print("open popup");
                                  },
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: AppColors.greyInput,
                                    contentPadding: EdgeInsets.fromLTRB(
                                        15.0, 10.0, 15.0, 10.0),
                                    prefixIcon: Icon(Icons.search),
                                    hintText: "Cari menu paket",
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppColors.greyInput,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppColors.greyInput,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                      ),
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppColors.greyInput,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppColors.greyInput,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppColors.greyInput,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                      ),
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 14),

                      /// DATE RANGE
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              DateFormat('MMMM yyyy')
                                  .format(controller.date.value),
                              softWrap: false,
                              overflow: TextOverflow.ellipsis,
                              style: AppFont.textRed14SemiBold.copyWith(
                                color: AppColors.black,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 46,
                            child: ListView(
                              shrinkWrap: true,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    height: 46,
                                    width: 51,
                                    decoration: BoxDecoration(
                                      color: AppColors.greyF6F6F6,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(4),
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          DateFormat('EE').format(
                                            controller
                                                .getDate(controller.date.value)
                                                .value,
                                          ),
                                          softWrap: false,
                                          overflow: TextOverflow.ellipsis,
                                          style: AppFont.textBlack10Regular
                                              .copyWith(
                                            color: AppColors.greyC2C2C2,
                                            fontSize: 11,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          DateFormat('dd').format(
                                            controller
                                                .getDate(controller.date.value)
                                                .value,
                                          ),
                                          softWrap: false,
                                          overflow: TextOverflow.ellipsis,
                                          style: AppFont.textBlack10Regular
                                              .copyWith(
                                            color: AppColors.greyC2C2C2,
                                            fontSize: 11,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                ListView(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  physics: NeverScrollableScrollPhysics(),
                                  children: List.generate(
                                    controller.indexDay.value,
                                    (index) => Obx(
                                      () => Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: GestureDetector(
                                          onTap: () {
                                            controller.changeDate(
                                              date: DateFormat('yyyy-MM-dd')
                                                  .format(
                                                DateTime.now().subtract(
                                                  Duration(days: -index - 1),
                                                ),
                                              ),
                                              index: (-index - 1),
                                              dayNow: DateFormat(
                                                      'EEEE, dd MMMM yyyy')
                                                  .format(
                                                DateTime.now().subtract(
                                                  Duration(days: -index - 1),
                                                ),
                                              ),
                                            );

                                            controller.page.value = 1;
                                            controller.isHideOpen.value = false;
                                            controller.listOutlet.clear();

                                            controller.getCateringOutlets(
                                              search: controller
                                                  .searchController.value.text,
                                              pageParam: 1,
                                            );
                                          },
                                          child: Container(
                                            height: 46,
                                            width: 51,
                                            decoration: BoxDecoration(
                                              color: controller
                                                          .preOrderDate.value ==
                                                      DateFormat('yyyy-MM-dd')
                                                          .format(
                                                        DateTime.now().subtract(
                                                          Duration(
                                                              days: -index - 1),
                                                        ),
                                                      )
                                                  ? AppColors.redD12B34
                                                  : AppColors.greyF6F6F6,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(4),
                                              ),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  DateFormat('EE').format(
                                                    controller
                                                        .getDate(
                                                          controller.date.value
                                                              .subtract(
                                                            Duration(
                                                              days: -index - 1,
                                                            ),
                                                          ),
                                                        )
                                                        .value,
                                                  ),
                                                  softWrap: false,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: AppFont
                                                      .textBlack10Regular
                                                      .copyWith(
                                                    color: controller
                                                                .preOrderDate
                                                                .value ==
                                                            DateFormat(
                                                                    'yyyy-MM-dd')
                                                                .format(
                                                              DateTime.now()
                                                                  .subtract(
                                                                Duration(
                                                                    days:
                                                                        -index -
                                                                            1),
                                                              ),
                                                            )
                                                        ? AppColors.white
                                                        : AppColors.black1F1F1F,
                                                    fontSize: 11,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                                Text(
                                                  DateFormat('dd').format(
                                                    controller
                                                        .getDate(
                                                          controller.date.value
                                                              .subtract(
                                                            Duration(
                                                              days: -index - 1,
                                                            ),
                                                          ),
                                                        )
                                                        .value,
                                                  ),
                                                  softWrap: false,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: AppFont
                                                      .textBlack10Regular
                                                      .copyWith(
                                                    color: controller
                                                                .initialDateIndexParam ==
                                                            (-index - 1)
                                                        ? AppColors.white
                                                        : AppColors.black1F1F1F,
                                                    fontSize: 11,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                /// LIST Catering
                Obx(() {
                  return (controller.listOutlet.length > 0)
                      ? ListCateringOutletWidget(
                          loadMoreAction: loadMoreOutlet,
                          onRefresh: onRefresh,
                          runAction: (param) {
                            Get.toNamed(
                              Routers.orderDetailOutlet,
                              arguments: OrderDetailViewArgument(
                                param.id,
                                param.merchantId,
                                isCatering: controller.isCatering.value,
                                mealsTitle: controller.mealsTypesTitle.value,
                                mealsTypes: controller.mealsTypeParams.value,
                                preOrderDate: controller.preOrderDate.value,
                                dayDate: controller.dayDate.value,
                                deliveryTime: controller.deliveryTime.isNotEmpty
                                    ? controller.deliveryTime.value
                                    : menuCategory?.filter?.first.options?.first
                                        .getDescription,
                              ),
                            )?.then((value) {
                              controller.page.value = 1;
                              controller.isHideOpen.value = false;
                              controller.listOutlet.clear();
                              controller.getCateringOutlets(
                                search: controller.searchController.value.text,
                                pageParam: 1,
                              );
                            });
                          },
                          height: MediaQuery.of(context).size.height / 1.3,
                          data: controller.listOutlet,
                          scrollDirection: Axis.vertical,
                        )
                      : state.maybeMap(
                          orElse: () => false,
                          loadInProgress: (_) => true,
                        )
                          ? Container()
                          : EmptyWidget(
                              onRefresh: onRefresh,
                              imageAsset: AppAssets.emptyOutlet,
                            );
                })
              ],
            )
          ],
        );
      },
    );
  }

  Future<void> _showDialogEatingType({
    required BuildContext context,
    required MenuCategory category,
    required Function(String, String, String) onTap,
  }) async {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
      ),
      backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 8,
            ),
            ListTile(
              // leading: GestureDetector(
              //   onTap: () {
              //     Get.back();
              //   },
              //   child: ImageIcon(
              //     AssetImage(AppAssets.iconBackBlack),
              //     color: Colors.black,
              //   ),
              // ),
              title: Container(
                child: Center(
                  child: new Text(
                    I10n.current.select_menu_type,
                    style: AppFont.textBlack17Bold,
                  ),
                ),
              ),
              enabled: false,
            ),
            Column(
              children: List.generate(
                menuCategory?.filter?.length ?? 0,
                (index) {
                  var _data = menuCategory?.filter?[index].options;
                  return Column(
                    children: List.generate(_data?.length ?? 0, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, right: 16, bottom: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _data?[index].getTitle ?? "-",
                                  style: AppFont.textBlack17Bold
                                      .copyWith(fontSize: 15),
                                ),
                                Text(
                                  _data?[index].getDescription ?? "-",
                                  style: AppFont.textBlack13Light.copyWith(
                                    fontSize: 12,
                                    color: AppColors.black,
                                  ),
                                ),
                              ],
                            ),
                            Expanded(child: Container()),
                            ElevatedButton(
                              onPressed: () {
                                onTap(
                                  _data?[index].getTitle ?? "",
                                  _data?[index].value ?? "",
                                  _data?[index].getDescription ?? "",
                                );
                                Navigator.pop(context);
                              },
                              child: Text(
                                I10n.current.cart_choose,
                                style: AppFont.textBlack12Bold
                                    .copyWith(color: AppColors.redD12B34),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                elevation: 0,
                                side: BorderSide(
                                  width: 1.0,
                                  color: AppColors.redD12B34,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  );
                },
              ),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        );
      },
    );
  }
}
