import 'dart:convert';

import 'package:digiresto/application/core/app_bloc.dart';
import 'package:digiresto/application/home/home_user_bloc/home_user_bloc.dart';
import 'package:digiresto/domain/core/constants/assets.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/launch_url/launch_url.dart';
import 'package:digiresto/domain/entity/order/static_banner_model.dart';
import 'package:digiresto/domain/entity/user/user_get_address_model.dart';
import 'package:digiresto/presentation/guide/guide_widget.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:digiresto/presentation/widgets/Error_popup_widget.dart';
import 'package:digiresto/presentation/widgets/detail_image_widget.dart';
import 'package:digiresto/presentation/widgets/progress_indicator_widget.dart';
import 'package:digiresto/presentation/widgets/top_background_widget.dart';
import 'package:digiresto/presentation/widgets/transparent_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

class HomeContentController extends GetxController {
  RxBool loadingHistory = false.obs;
  RxBool loadingHotPromo = false.obs;
  RxBool loadingPromo = false.obs;
  RxBool loadingTraceOrder = false.obs;
  RxBool loadingListAddress = false.obs;
  RxList<UserAddress> listAddress = List<UserAddress>.empty().obs;
  RxString activeAddress = "".obs;
  RxInt initialPage = 0.obs;
  RxInt slideIndex = 0.obs;
  Rx<Position> currentPosition = Position(
          longitude: 0,
          latitude: 0,
          timestamp: DateTime.now(),
          accuracy: 0,
          altitude: 0,
          heading: 0,
          speed: 0,
          speedAccuracy: 0)
      .obs;
  RxList<StaticBanner> listStaticBanner = (List<StaticBanner>.empty()).obs;
  Rx<UserAddress> currentLocation = UserAddress().obs;
  setLoadingHistory(bool value) => loadingHistory.value = value;
  setLoadingHotPromo(bool value) => loadingHotPromo.value = value;
  setLoadingPromo(bool value) => loadingPromo.value = value;
  setLoadingTraceOrder(bool value) => loadingTraceOrder.value = value;
  setInitialPage(int value) => initialPage.value = value;
  setSlideIndex(int value) => slideIndex.value = value;
  setLoadingListAddress(bool value) => loadingListAddress.value = value;
  setActiveAddress(String value) => activeAddress.value = value;
  setListAddress(List<UserAddress> value) => listAddress.value = value;
  setCurrentPosition(Position value) => currentPosition.value = value;
  setStaticBanner(List<StaticBanner> value) => listStaticBanner.value = value;
  setCurrentLocation(UserAddress value) => currentLocation.value = value;
}

class HomeContentScreen extends GetView<HomeContentController> {
  @override
  Widget build(BuildContext context) {
    Get.put(
        PageController(
          initialPage: 0,
        ),
        tag: "home");
    Get.put(HomeContentController());
    context.read<HomeUserBloc>().add(HomeUserEvent.getActiveAddress());
    context.read<HomeUserBloc>().add(HomeUserEvent.getStaticBanner());
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
                data.list.forEach((element) {
                  if (element.isDefault!) {
                    controller.setActiveAddress(element.address!);
                  }
                });
                final isThereDefault =
                    data.list.every((element) => element.isDefault!);
                if (!isThereDefault) {
                  controller.setActiveAddress(data.list[0].address!);
                  controller.setListAddress(data.list);
                }
                controller.setListAddress(data.list);
              }
            },
            getActiveAddressFail: (fail) {
              print("error");
              print(fail);
              context.read<HomeUserBloc>().add(HomeUserEvent.getListAddress());
            },
            getActiveAddressSuccess: (data) {
              controller.setActiveAddress(data.response.address!);
            },
            orElse: () {});
      },
      builder: (context, state) {
        return Column(
          children: [
            Column(
              children: <Widget>[
                TopBackgound(backgroundColor: AppColors.red),
                _yourLocation(),
                _searchBox(),
              ],
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  _staticBanner(),
                  //_buildPageIndicator(true),
                  // _orderStore!.listStaticBanner != null
                  //     ? _staticBanner()
                  //     : Container(),
                  _trackOrder(),
                  _groupFoodRow1(),
                  _groupFoodRow2(),
                  //_hotPromo(),
                  //_historyOrder(),
                  _singleAdvertisement(),
                ],
              ),
            )),
          ],
        );
      },
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
                              Base64Decoder().convert(data.promoBanner!))
                          : NetworkImage(data.promoBanner!) as ImageProvider,
                      fit: BoxFit.fill,
                      height: 150,
                      alignment: Alignment.topCenter,
                    ),
                  )
                : Container()));
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

  Widget _staticBanner() {
    PageController _controller = Get.find<PageController>(tag: "home");
    return Obx(() => Column(
          key: GuideKeys.banner,
          children: [
            Container(
              padding: EdgeInsets.only(
                bottom: 10,
              ),
              height: MediaQuery.of(Get.context!).size.height / 3 - 20,
              width: double.infinity,
              child: PageView(
                scrollDirection: Axis.horizontal,
                onPageChanged: (index) {
                  Get.find<HomeContentController>().setSlideIndex(index);
                },
                controller: _controller,
                children: [
                  for (int i = 0; i < controller.listStaticBanner.length; i++)
                    _promoList(controller.listStaticBanner[i]),
                ],
              ),
            ),
            Container(
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
            )
          ],
        ));
  }

  Widget _searchBox() {
    return GestureDetector(
      key: GuideKeys.search,
      onTap: () {
        Get.toNamed(Routers.homeNearbyOutlet);
      },
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
        height: 35,
        decoration: BoxDecoration(
          color: AppColors.grey[50],
          // border: Border.all(
          //   //color: Colors.black12,
          //   width: 1.5,
          //
          // ),
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

  Widget _yourLocation() {
    return GestureDetector(
      key: GuideKeys.location,
      onTap: () {
        Get.toNamed(Routers.homeAllAddress);
        //  _userStore?.setActiveHistoryScreen("home.address");
        //Navigator.of(Get.context!).pushNamed(Routes.home_all_address);
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
                        Get.find<HomeContentController>()
                                    .loadingListAddress
                                    .value ==
                                true
                            ? CustomProgressIndicatorWidget(size: 15)
                            : Container(),
                      ],
                    ),
                  ),
                  Container(
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _groupFoodRow1() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            key: GuideKeys.terdekat,
            onTap: () {
              Get.toNamed(Routers.homeNearbyOutlet);
            },
            child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: new AssetImage(AppAssets.iconHomeNearby),
                      height: 60,
                    ),
                    Text(
                      "Terdekat",
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
          ),
          GestureDetector(
            key: GuideKeys.digidiscount,
            onTap: () {
              Get.toNamed(Routers.homeDigiDiscount);
            },
            child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: new AssetImage(AppAssets.iconHomeDiscount),
                      height: 60,
                    ),
                    Text(
                      "DigiDiscount",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: AppColors.red),
                    )
                  ],
                ),
                margin: EdgeInsets.only(left: 5, right: 10),
                height: 100,
                width: MediaQuery.of(Get.context!).size.width / 2 - 20,
                decoration: BoxDecoration(
                  //color: AppColors.cream,
                  //color: Colors.white,
                  borderRadius: BorderRadius.circular(7.0),
                )),
          ),
        ],
      ),
    );
  }

  Widget _groupFoodRow2() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            key: GuideKeys.frozenfood,
            onTap: () {
              Get.toNamed(Routers.homeDigiDiscount);
            },
            child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: new AssetImage(AppAssets.iconFrozenFood),
                      height: 60,
                    ),
                    Text(
                      "Frozen Food",
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
          ),
          GestureDetector(
            key: GuideKeys.indonesiapastibisa,
            onTap: () {
              Get.toNamed(Routers.homeDigiDiscount);
            },
            child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: new AssetImage(AppAssets.iconIndPastiBisa),
                      height: 60,
                    ),
                    Text(
                      "Indonesia Pasti Bisa",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: AppColors.red),
                    )
                  ],
                ),
                margin: EdgeInsets.only(left: 5, right: 10),
                height: 100,
                width: MediaQuery.of(Get.context!).size.width / 2 - 20,
                decoration: BoxDecoration(
                  //color: AppColors.cream,
                  //color: Colors.white,
                  borderRadius: BorderRadius.circular(7.0),
                )),
          ),
        ],
      ),
    );
  }

  Widget _hotPromo() {
    var _loadingHotPromo = Get.find<HomeContentController>().loadingHotPromo;
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
                    // _loadingHotPromo == true
                    //     ? Container()
                    //     : ListHomeHotPromoWidget(
                    //         runAction: _orderStore!.setOrderParameter,
                    //         height: 200.0,
                    //         data: _orderStore!.listHotPromo!,
                    //         scrollDirection: Axis.horizontal,
                    //      )
                  ],
                ))
            : Container();
  }

  Widget _historyOrder() {
    var _loadingHistory = Get.find<HomeContentController>().loadingHistory;
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
                    // _loadingHistory == true
                    //     ? Container()
                    //     : ListHomeHistoryOrderWidget(
                    //         runAction: _orderStore!.setOrderParameter,
                    //         height: 320.0,
                    //         data: _transactionStore!.listTransactionHistory!,
                    //         scrollDirection: Axis.horizontal,
                    //       )
                  ],
                ))
            : Container();
  }

  Widget _trackOrder() {
    var _loadingTraceOrder =
        Get.find<HomeContentController>().loadingTraceOrder;
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
                // _loadingTraceOrder == true
                //     ? Container()
                //     : HomeTrackOrderWidget(
                //         runAction: (TransactionHistory trx) {
                //           Navigator.of(Get.context!)
                //               .pushNamed(Routes.history_detail, arguments: trx)
                //               .then((value) => setState(() => {}));
                //         },
                //         height: 90.0,
                //         data: _transactionStore!.listOngoingTransaction!,
                //         scrollDirection: Axis.horizontal,
                //       )
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
                    child: RaisedButton(
                        onPressed: () {
                          LaunchUrl.run("https://www.digiresto.co.id/");
                        },
                        color: AppColors.redYoung,
                        child: Text("Selengkapnya",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(25.0))),
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

  _showDetailImage(String imageUrl) {
    Navigator.of(Get.context!).push(TransparentRoute(
        builder: (BuildContext context) =>
            DetailImageDialog(dataImage: imageUrl)));
  }

  void getDataAfterPosition() {
    // _orderStore?.getStaticBanner({
    //   "location":
    //       _userStore!.activeAddressLat! + "," + _userStore!.activeAddresslng!,
    //   "page": "1",
    //   "filter": ""
    // }).then((value) {
    //   setState(() {});
    // }).catchError((err) {
    //   print("error response: " + err.toString());
    //   ErrorPopupWidget.showDioError(Get.context!, err, null);
    // });
  }

  void goToAddLocation() {
    //  _userStore?.setActiveHistoryScreen("home.address");
    Get.toNamed(Routers.homeAllAddress);
  }

  _getCurrentLocation() async {
    Get.find<HomeContentController>().setLoadingListAddress(true);
    print("get current location");
    await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
      forceAndroidLocationManager: true,
    ).then((Position position) {
      print("lat: " + position.latitude.toString());
      print("lng:" + position.longitude.toString());

      Get.find<HomeContentController>().setCurrentPosition(position);

      getGeocode();

      Get.find<HomeContentController>().setLoadingListAddress(false);
      getDataAfterPosition();
    }).catchError((e) {
      Get.find<HomeContentController>().setLoadingListAddress(false);
      ErrorPopupWidget.show(Get.context!, "Digiresto",
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

  void getGeocode() {
    // setState(() {
    //   _loadingListAddress = true;
    // });
    // print("get address name");
    // _mapStore?.getGeocode({
    //   "latitude": _currentPosition!.latitude.toString(),
    //   "longitude": _currentPosition!.longitude.toString()
    // }).then((res) {
    //   _userStore?.setActiveAddress(
    //       res.formattedAddress.toString(),
    //       _currentPosition!.latitude.toString(),
    //       _currentPosition!.longitude.toString());
    //   print(res.formattedAddress.toString());
    //   setState(() {
    //     _loadingListAddress = false;
    //   });
    // }).catchError((err) {
    //   setState(() {
    //     _loadingListAddress = false;
    //   });
    //   ErrorPopupWidget.showDioError(context, err, null);
    //   print("error response: " + err);
    // });
  }

  void getBasicInformationSkipAndContinue() {
    // if (_userStore?.activeAddress != "") {
    //   print(">>> _userStore.activeAddresslng is not null");
    //   getDataAfterPosition();
    // } else {
    //   //get current location
    //   print(">>> address api  null");
    //   _getCurrentLocation();
    // }
  }

  void getBasicInformation() {
    // _userStore?.getProfile().then((value) async {
    //   setState(() {
    //     _loadingTraceOrder = true;
    //   });

    //   await _transactionStore?.getOngoingTransaction().then((res) {
    //     print("ongoing transaction : ");
    //     print(res);
    //     setState(() {
    //       _loadingTraceOrder = false;
    //     });
    //   }).catchError((err) {
    //     print("error response: " + err.toString());
    //     ErrorPopupWidget.showDioError(context, err, null);
    //     setState(() {
    //       _loadingTraceOrder = false;
    //     });
    //   });

    //   setState(() {
    //     _loadingListAddress = true;
    //   });
    //   _userStore
    //       ?.getAddress(_userStore!.profile!.mobilePhone!)
    //       .then((res) async {
    //     setState(() {
    //       _loadingListAddress = false;
    //     });
    //     if (_userStore?.activeAddress != "") {
    //       //if (_userStore.activeAddress == "x") {
    //       print(">>> _userStore.activeAddresslng is not null");
    //       getDataAfterPosition();
    //     } else {
    //       if (res.length == 0) {
    //         //get current location
    //         print(">>> address api  null");
    //         _getCurrentLocation();
    //       } else {
    //         print(">>> address api  is not null");
    //         bool defaultAddress = false;
    //         for (int i = 0; i < res.length; i++) {
    //           if (res[i].isDefault ?? false) {
    //             defaultAddress = true;
    //             print(">>> default address found");
    //             _userStore?.setActiveAddress(
    //                 res[i].address!, res[i].latitude!, res[i].longitude!);
    //             getDataAfterPosition();
    //           }
    //         }

    //         if (defaultAddress == false) {
    //           ErrorPopupWidget.show(
    //               context, "Digiresto", "Please set your default Address", () {
    //             Navigator.pop(context);
    //             goToAddLocation();
    //           });
    //         }
    //       }
    //     }
    //   }).catchError((err) {
    //     setState(() {
    //       _loadingListAddress = false;
    //     });
    //     print("error response: " + err.toString());
    //   });
    // }).catchError((err) {
    //   ErrorPopupWidget.showDioError(context, err, null);
    // });
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
