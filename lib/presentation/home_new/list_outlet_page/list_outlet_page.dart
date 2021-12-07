import 'package:digiresto/application/home_new/outlet/list_outlet_page_controller.dart';
import 'package:digiresto/application/home_new/outlet/outlet_bloc.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/home/entity/menu_category.dart';
import 'package:digiresto/domain/order/order_detail_view_argument.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/custom_scafold.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:digiresto/presentation/widgets/empty_widget.dart';
import 'package:digiresto/presentation/home_new/dynamic_menu/widgets/listview_outlet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class ListOutletPage extends StatelessWidget {
  final MenuCategory menuCategory;
  ListOutletPage(this.menuCategory);
  @override
  Widget build(BuildContext context) {
    Get.put(ListOutletPageController());
    return CustomScafold(
      title: menuCategory.getTitle,
      showBackButton: true,
      resizeToAvoidBottomInset: false,
      appBarColor: Colors.white,
      iconBackColor: Colors.black,
      body: ListOutletWidget(
        menuCategory: menuCategory,
      ),
    );
  }
}

class ListOutletWidget extends GetView<ListOutletPageController> {
  final MenuCategory menuCategory;
  ListOutletWidget({
    required this.menuCategory,
  });

  final searchController = TextEditingController();

  void loadMoreOutlet() {
    controller.getOutlets(
      menuCategory: menuCategory,
      search: searchController.text,
      pageParam: controller.page.value + 1,
    );
  }

  void onRefresh() async {
    controller.page.value = 1;
    controller.listOutlet.clear();
    controller.getOutlets(
      menuCategory: menuCategory,
      search: searchController.text,
      pageParam: 1,
    );
  }

  Widget _search() {
    return Theme(
      data: Theme.of(Get.context!).copyWith(
        primaryColor: Colors.grey,
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 5),
        child: TextField(
            textInputAction: TextInputAction.search,
            onSubmitted: (value) {
              controller.listOutlet.clear();
              controller.page.value = 1;
              controller.getOutlets(
                menuCategory: menuCategory,
                search: searchController.text,
                pageParam: 1,
              );
            },
            autocorrect: false,
            controller: searchController,
            onTap: () {
              print("open popup");
            },
            style: TextStyle(
              fontSize: 14.0,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.greyInput,
              contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
              prefixIcon: Icon(Icons.search),
              hintText: I10n.current.home_nearby_outlet_hint,
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.greyInput, width: 32.0),
                  borderRadius: BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.greyInput, width: 32.0),
                  borderRadius: BorderRadius.circular(10)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: Colors.white),
              ),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    controller.getOutlets(
      menuCategory: menuCategory,
      search: searchController.text,
      pageParam: 1,
    );
    return BlocConsumer<OutletBloc, OutletState>(
      listener: (context, state) {
        state.maybeMap(
          getListOutletSuccess: (r) {
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
          orElse: () {},
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
                if (menuCategory.isSearchable) _search(),
                Obx(() {
                  return (controller.listOutlet.length > 0)
                      ? ListviewOutletWidget(
                          loadMoreAction: loadMoreOutlet,
                          onRefresh: onRefresh,
                          runAction: (param) {
                            Get.toNamed(Routers.orderDetailOutlet,
                                    arguments: OrderDetailViewArgument(
                                        param.id, param.merchantId))
                                ?.then((value) {
                              controller.page.value = 1;
                              controller.isHideOpen.value = false;
                              controller.listOutlet.clear();
                              controller.getOutlets(
                                menuCategory: menuCategory,
                                search: searchController.text,
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
            ),
          ],
        );
      },
    );
  }
}
