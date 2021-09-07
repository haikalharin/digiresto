import 'dart:convert';

import 'package:digiresto/application/address/list/address_list_bloc.dart';
import 'package:digiresto/application/core/app_bloc.dart';
import 'package:digiresto/application/home/home_content_view_controller.dart';
import 'package:digiresto/application/home/home_user_bloc/home_user_bloc.dart';
import 'package:digiresto/domain/core/constants/assets.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/constants/strings.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/launch_url/launch_url.dart';
import 'package:digiresto/domain/entity/order/static_banner_model.dart';
import 'package:digiresto/domain/order/home_order_view_argument.dart';
import 'package:digiresto/presentation/guide/guide_widget.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:digiresto/presentation/widgets/Error_popup_widget.dart';
import 'package:digiresto/presentation/widgets/detail_image_widget.dart';
import 'package:digiresto/presentation/widgets/progress_indicator_widget.dart';
import 'package:digiresto/presentation/widgets/transparent_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

class HomeContentScreen extends GetView<HomeContentViewController> {
  @override
  Widget build(BuildContext context) {
    Get.put(
        PageController(
          initialPage: 0,
        ),
        tag: "home");
    Get.put(HomeContentViewController());
    showTutorial(context);
    return BlocConsumer<HomeUserBloc, HomeUserState>(
      listener: (context, state) {
        controller.setLoadingHistory(true);
        state.maybeMap(
            bannerLoadSuccess: (data) {
              controller.setStaticBanner(data.list);
            },
            bannerLoadFailed: (fail) {
              print(fail.message);
            },
            addressListSuccess: (data) {
              if (data.list.length > 0) {
                if (controller.activeAddress.value == "") {
                  data.list.forEach((element) {
                    if (element.isDefault!) {
                      Get.context!
                          .read<AddressListBloc>()
                          .add(AddressListEvent.setActiveAddress(element));
                      controller.setActiveAddress(element.address!);
                    }
                  });
                  if (!(data.list.every((element) => element.isDefault!))) {
                    Get.context!
                        .read<AddressListBloc>()
                        .add(AddressListEvent.setActiveAddress(data.list[0]));
                    controller.setActiveAddress(data.list[0].address!);
                  }
                }
              }
              controller.setListAddress(data.list);
            },
            getActiveAddressFail: (fail) {
              context.read<HomeUserBloc>().add(HomeUserEvent.getListAddress());
            },
            getActiveAddressSuccess: (data) {
              controller.setActiveAddress(data.response.address!);
              context.read<HomeUserBloc>().add(HomeUserEvent.getListAddress());
            },
            addressListFailed: (e) {
              print("error");
              print(e.message);
            },
            orElse: () {});
      },
      builder: (context, state) {
        return Obx(() {
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Column(
                    children: <Widget>[
                      //TopBackgound(backgroundColor: AppColors.red),
                      _YourLocation(key: GuideKeys.location),
                      _SearchBox(key: GuideKeys.search),
                    ],
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Column(
                      children: [
                        _StaticBanner(key: GuideKeys.banner),
                        _trackOrder(),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _FoodRowItem(
                                key: GuideKeys.terdekat,
                                imageAsset: AppAssets.iconHomeNearby,
                                label: Strings.titleNearby,
                              ),
                              _FoodRowItem(
                                  key: GuideKeys.digidiscount,
                                  imageAsset: AppAssets.iconHomeDiscount,
                                  label: Strings.titleDigidiscount),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _FoodRowItem(
                                key: GuideKeys.frozenfood,
                                imageAsset: AppAssets.iconFrozenFood,
                                label: Strings.titleFrozenFood,
                              ),
                              _FoodRowItem(
                                key: GuideKeys.indonesiapastibisa,
                                imageAsset: AppAssets.iconIndPastiBisa,
                                label: Strings.titleIndonesiaPastiBisa,
                              ),
                            ],
                          ),
                        ),
                        _singleAdvertisement(),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          );
        });
      },
    );
  }

  Widget _hotPromo() {
    var _loadingHotPromo =
        Get.find<HomeContentViewController>().loadingHotPromo;
    return //_orderStore?.listHotPromo != null || _loSadingHotPromo == true
        true
            ? Container(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                child: GestureDetector(
                                    child: Text(
                                      "Hot promo",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    onTap: () {}),
                              ),
                              _loadingHotPromo.value == true
                                  ? CustomProgressIndicatorWidget(size: 20)
                                  : Container(),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 10),
                            child: GestureDetector(
                                child: Text(
                                  "See all",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.red),
                                ),
                                onTap: () {
                                  Get.toNamed(Routers.homeAllHotPromo);
                                }),
                          )
                        ]),
                  ],
                ))
            : Container();
  }

  Widget _historyOrder() {
    var _loadingHistory = Get.find<HomeContentViewController>().loadingHistory;
    return //_transactionStore?.listTransactionHistory != null ||
        _loadingHistory.value == true
            ? Container(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: GestureDetector(
                                child: Text(
                                  "Pesan Lagi ",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                onTap: () {}),
                          ),
                          _loadingHistory.value == true
                              ? CustomProgressIndicatorWidget(
                                  size: 20,
                                )
                              : Container()
                        ]),
                  ],
                ))
            : Container();
  }

  Widget _trackOrder() {
    var _loadingTraceOrder =
        Get.find<HomeContentViewController>().loadingTraceOrder;
    // return _transactionStore!.listOngoingTransaction!.isNotEmpty ||
    return _loadingTraceOrder.value == true
        ? Container(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: GestureDetector(
                          child: Text(
                            "Lacak orderan anda",
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      _loadingTraceOrder.value == true
                          ? CustomProgressIndicatorWidget(size: 20)
                          : Container(),
                    ]),
                Container(
                  height: 5,
                ),
              ],
            ))
        : Container();
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
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 5, left: 10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Bergabung menjadi Mitra",
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
                      "Terima pembayaran nontunai dan melakukan pengiriman instant menjadi lebih mudah",
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
                      child: Text("Selengkapnya",
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

  void goToAddLocation() {
    Get.toNamed(Routers.homeAllAddress);
  }

  _getCurrentLocation() async {
    Get.find<HomeContentViewController>().setLoadingListAddress(true);
    print("get current location");
    await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
      forceAndroidLocationManager: true,
    ).then((Position position) {
      print("lat: " + position.latitude.toString());
      print("lng:" + position.longitude.toString());

      Get.find<HomeContentViewController>().setCurrentPosition(position);

      Get.find<HomeContentViewController>().setLoadingListAddress(false);
    }).catchError((e) {
      Get.find<HomeContentViewController>().setLoadingListAddress(false);
      ErrorPopupWidget.show("Digiresto",
          "Lokasi saat ini tidak dapat terdeteksi,tentukan titik lokasi sekarang",
          () {
        {
          Get.back();
          Get.toNamed(Routers.homeAddLocation);
        }
      });
      print(e);
    });
  }

  void showTutorial(BuildContext context) {
    final _appBloc = BlocProvider.of<AppBloc>(context);
    _appBloc.state.guideShown.fold(
      () => null,
      (guideShown) => guideShown
          ? null
          : {
              TutorialCoachMark(
                context,
                targets: GuideKeys.targetFocus,
                hideSkip: true,
                paddingFocus: 5,
                onFinish: () => _appBloc.add(AppEvent.skipGuide()),
                onClickTarget: (target) {},
                onSkip: () => _appBloc.add(AppEvent.skipGuide()),
              )..show()
            },
    );

    // tutorial.skip();
    // tutorial.finish();
    // tutorial.next(); // call next target programmatically
    // tutorial.previous(); // call previous target programmatically
  }
}

class _StaticBanner extends GetView<HomeContentViewController> {
  _StaticBanner({Key? key}) : super(key: key);
  _showDetailImage(String imageUrl) {
    Navigator.of(Get.context!).push(TransparentRoute(
        builder: (BuildContext context) =>
            DetailImageDialog(dataImage: imageUrl)));
  }

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.fiber_manual_record,
              color: isCurrentPage ? AppColors.red : Colors.grey, size: 12),
        ],
      ),
    );
  }

  Widget _promoList(StaticBanner data) {
    return GestureDetector(
        onTap: () {
          if (data.promoUrl == null || data.promoUrl == "") {
            _showDetailImage(data.promoBanner ?? "");
          } else {
            print("goto home promo url " + data.promoUrl.toString());
            Get.toNamed(Routers.homePromoUrl,
                arguments: {"url": data.promoUrl, "title": data.promoName});
          }
        },
        child: Container(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: data.promoBanner != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image(
                      image: data.promoBanner?.substring(1, 4) == 'data:'
                          ? MemoryImage(
                              Base64Decoder().convert(data.promoBanner!),
                              scale: 0.5)
                          : NetworkImage(data.promoBanner!, scale: 0.5)
                              as ImageProvider,
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  )
                : Container()));
  }

  @override
  Widget build(BuildContext context) {
    PageController _controller = Get.find<PageController>(tag: "home");
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            bottom: 10,
          ),
          height: Get.height * 0.25,
          width: double.infinity,
          child: PageView(
            scrollDirection: Axis.horizontal,
            onPageChanged: (index) {
              Get.find<HomeContentViewController>().setSlideIndex(index);
            },
            controller: _controller,
            children: [
              for (int i = 0; i < controller.listStaticBanner.length; i++)
                _promoList(controller.listStaticBanner[i]),
            ],
          ),
        ),
        Obx(() => Container(
              padding: EdgeInsets.only(left: 10, top: 5, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      for (int i = 0;
                          i < controller.listStaticBanner.length;
                          i++)
                        i == controller.slideIndex.value
                            ? _buildPageIndicator(true)
                            : _buildPageIndicator(false),
                    ],
                  ),
                  //hidden see all promo request by user
                  // GestureDetector(
                  //   onTap: () {},
                  //   child: Row(
                  //     children: [
                  //       Text(
                  //         "Lihat semua promo",
                  //         style: AppFont.textRed14Bold,
                  //       ),
                  //       SizedBox(width: 9),
                  //       Image(
                  //         image: new AssetImage(AppAssets.iconForwardRed),
                  //         height: 12,
                  //       ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ))
      ],
    );
  }
}

class _YourLocation extends GetView<HomeContentViewController> {
  _YourLocation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routers.homeAllAddress);
      },
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            ImageIcon(AssetImage(AppAssets.iconMarkerMove),
                size: 24, color: AppColors.red),
            Container(
              width: MediaQuery.of(Get.context!).size.width - 50,
              padding: EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text("Lokasi Kamu",
                            style: TextStyle(
                              fontFamily: "roboto",
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            )),
                        new Icon(Icons.keyboard_arrow_down,
                            color: AppColors.red, size: 28.0),
                        controller.loadingListAddress.value == true
                            ? CustomProgressIndicatorWidget(size: 15)
                            : Container(),
                      ],
                    ),
                  ),
                  Obx(() {
                    return Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        controller.activeAddress.value,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: "roboto",
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SearchBox extends StatelessWidget {
  _SearchBox({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routers.homeNearbyOutlet,
            arguments: HomeOrderViewArgument(title: Strings.titleNearby));
      },
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
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
            Text("Temukan makanan favorit anda",
                style: TextStyle(
                  fontFamily: "roboto",
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                )),
          ],
        ),
      ),
    );
  }
}

class _FoodRowItem extends GetView<HomeContentViewController> {
  final String imageAsset;
  final String label;
  const _FoodRowItem({
    Key? key,
    required this.imageAsset,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (label == Strings.titleDigidiscount) {
          Get.toNamed(Routers.homeDigiDiscount,
              arguments: HomeOrderViewArgument(title: label));
        } else if (label == Strings.titleFrozenFood ||
            label == Strings.titleIndonesiaPastiBisa) {
          Get.toNamed(Routers.homeOutletCategory,
              arguments: HomeOrderViewArgument(title: label));
        } else {
          Get.toNamed(Routers.homeNearbyOutlet,
              arguments: HomeOrderViewArgument(title: label));
        }
      },
      child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: new AssetImage(imageAsset),
                height: 72,
              ),
              Text(
                label,
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: AppColors.red),
              )
            ],
          ),
          margin: EdgeInsets.only(left: 10, right: 5),
          height: 100,
          width: MediaQuery.of(Get.context!).size.width / 2 - 20,
          decoration: BoxDecoration(
            //color: Colors.white,
            borderRadius: BorderRadius.circular(7.0),
          )),
    );
  }
}
