import 'package:digiresto/application/home_new/bloc/home_bloc.dart';
import 'package:digiresto/application/home_new/static_banner_controller.dart';
import 'package:digiresto/application/landing/bottom_tab_cubit.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/launch_url/launch_url.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:digiresto/presentation/guide/guide_widget.dart';
import 'package:digiresto/presentation/home_new/address_top_bar/address_top_bar.dart';
import 'package:digiresto/presentation/home_new/dynamic_menu/dynamic_menu.dart';
import 'package:digiresto/presentation/home_new/search_box/search_box.dart';
import 'package:digiresto/presentation/home_new/static_banner/static_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final staticBannerController = Get.put(StaticBannerController());
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<HomeBloc, HomeState>(
          bloc: getIt<HomeBloc>()..add(HomeEvent.started()),
          listener: (context, state) {
            state.optionBanners.fold(
              () {},
              (data) => data.fold(
                (l) {},
                (ilist) => staticBannerController.setListStaticBanner(
                  ilist.unlock,
                ),
              ),
            );
          },
          builder: (context, state) {
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
                      DynamicMenu(),
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
