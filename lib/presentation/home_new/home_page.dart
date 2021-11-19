import 'package:dartz/dartz.dart' hide IList;
import 'package:digiresto/application/core/app_bloc.dart';
import 'package:digiresto/application/home_new/bloc/home_bloc.dart';
import 'package:digiresto/application/home_new/static_banner_controller.dart';
import 'package:digiresto/application/landing/bottom_tab_cubit.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/launch_url/launch_url.dart';
import 'package:digiresto/domain/home/entity/menu_category.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:digiresto/presentation/guide/guide_widget.dart';
import 'package:digiresto/presentation/home_new/address_top_bar/address_top_bar.dart';
import 'package:digiresto/presentation/home_new/dynamic_menu/dynamic_menu.dart';
import 'package:digiresto/presentation/home_new/search_box/search_box.dart';
import 'package:digiresto/presentation/home_new/static_banner/static_banner.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _appBloc = getIt<AppBloc>();

    Get.put(StaticBannerController());
    getIt<HomeBloc>()..add(HomeEvent.started());
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<HomeBloc, HomeState>(
          // bloc: getIt<HomeBloc>()..add(HomeEvent.started()),
          builder: (context, state) {
            final IList<MenuCategory> menuCategoryGuide =
                state.optionMenuCategory
                    .fold(
                      () => <MenuCategory>[].toIList(),
                      (a) => a.fold(
                        (l) => <MenuCategory>[].toIList(),
                        (r) => r,
                      ),
                    )
                    .where((element) => element.isEnable)
                    .toIList();
            List<TargetFocus> targets = [];

            List<GlobalKey> _menuKeys = [];

            targets.addAll(GuideKeys.targetFocus);

            ArrowPosition getArrowPosition(MenuCategory menuCategory) {
              final index = menuCategoryGuide.indexOf(menuCategory);
              if (index < 3) {
                if (index == 0) {
                  return ArrowPosition.topLeft;
                } else if (index == 1) {
                  return ArrowPosition.topCenter;
                } else {
                  return ArrowPosition.topRight;
                }
              } else {
                if (index % 3 == 0) {
                  return ArrowPosition.bottomLeft;
                } else if (index % 3 == 1) {
                  return ArrowPosition.bottomCenter;
                } else {
                  return ArrowPosition.bottomRight;
                }
              }
            }

            ContentAlign getContentAlign(MenuCategory menuCategory) {
              final index = menuCategoryGuide.indexOf(menuCategory);
              if (index < 3) {
                return ContentAlign.bottom;
              } else {
                return ContentAlign.top;
              }
            }

            menuCategoryGuide.forEach((menuCategory) {
              _menuKeys.add(GlobalKey());
              targets.add(TargetFocus(
                identify: menuCategory.id,
                keyTarget: _menuKeys.last,
                shape: ShapeLightFocus.RRect,
                radius: 8,
                contents: [
                  TargetContent(
                    align: getContentAlign(menuCategory),
                    builder: (context, controller) {
                      return GuideContentBuild(
                        arrowPosition: getArrowPosition(menuCategory),
                        controller: controller,
                        title: menuCategory.getTitle,
                        description: menuCategory.getDescription,
                      );
                    },
                  )
                ],
              ));
            });
            _appBloc.state.guideShown.fold(
              () => null,
              (guideShown) => guideShown
                  ? null
                  : {
                      if (state.isLoading == false)
                        TutorialCoachMark(
                          context,
                          targets: targets,
                          hideSkip: true,
                          paddingFocus: 5,
                          onFinish: () => _appBloc.add(AppEvent.skipGuide()),
                          onClickTarget: (target) {},
                          onSkip: () => _appBloc.add(AppEvent.skipGuide()),
                        )..show()
                    },
            );
            final menuCategoryList = state.optionMenuCategory
                .fold(
                  () => <MenuCategory>[],
                  (data) => data.fold((l) => <MenuCategory>[], (r) => r.unlock),
                )
                .where((element) => element.isEnable)
                .toList();
            return StackWithProgress(
              isLoading: (state.optionBanners.isNone() ||
                  state.optionUserAddress.isNone() ||
                  state.optionMenuCategory.isNone()),
              children: [
                RefreshIndicator(
                  onRefresh: () async {
                    context.read<HomeBloc>().add(HomeEvent.refresh());
                    context.read<BottomTabCubit>().checkAllCounter();
                  },
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      AddressTopBar(key: GuideKeys.location),
                      SearchBox(key: GuideKeys.search),
                      StaticBannerWidget(key: GuideKeys.banner),
                      DynamicMenu(
                        menuCategories: menuCategoryList,
                        menuCategoryKeys: _menuKeys,
                      ),
                      _singleAdvertisement(),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _singleAdvertisement() {
    return Container(
      margin: EdgeInsets.all(Dimens.defaultMargin),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0)),
            child: Image(
              image: AssetImage(AppAssets.bgHomeMitra),
              fit: BoxFit.fill,
              width: double.infinity,
              height: 96,
              alignment: Alignment.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 5, left: 10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      I10n.current.home_join_digimitra,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: "roboto",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 5, left: 10),
                    width: MediaQuery.of(Get.context!).size.width / 2,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      I10n.current.home_join_digimitra_desc,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: "roboto",
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: MediaQuery.of(Get.context!).size.width / 2 - 40,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        LaunchUrl.run("https://www.digiresto.co.id/",
                            onError: () {}, onSuccess: () {});
                      },
                      style: ElevatedButton.styleFrom(
                          primary: AppColors.redYoung,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(25.0))),
                      child: Text(I10n.current.home_join_digimitra_action,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
