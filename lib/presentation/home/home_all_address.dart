import 'package:digiresto/domain/core/constants/assets.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/utils/loading/loading.dart';
import 'package:digiresto/domain/entity/user/user_get_address_model.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:digiresto/presentation/widgets/top_background_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_content.dart';

class HomeAllAddressScreen extends GetView<HomeContentController> {
  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  Widget _btnNewAddress() {
    return Container(
      margin: EdgeInsets.all(5),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            blurRadius: 3,
            //offset: Offset(3,3), // changes position of shadow
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(Routers.setAddressAdd);
        },
        child: Container(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                ),
                child: Icon(Icons.add, color: AppColors.red, size: 28.0),
              ),
              Text("Tambah",
                  style: TextStyle(
                    fontFamily: "roboto",
                    color: AppColors.red,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }

  Widget _locationActive() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            blurRadius: 3,
            //offset: Offset(3,3), // changes position of shadow
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () {
          print("set default");
          Get.offNamed(Routers.home);
        },
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 70,
                padding: EdgeInsets.only(top: 6, bottom: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                      ),
                      child: new IconButton(
                        onPressed: () {},
                        icon: ImageIcon(AssetImage(Assets.iconGps),
                            size: 20, color: AppColors.red),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Gunakan lokasi sekarang",
                            style: TextStyle(
                              fontFamily: "roboto",
                              color: AppColors.red,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          width: MediaQuery.of(Get.context!).size.width - 80,
                          child: Text(
                            "",
                            // _userStore?.activeAddress ?? "",
                            maxLines: 2,
                            style: TextStyle(
                              fontFamily: "roboto",
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _listAddress(UserAddress data) {
    return data.isDelete == false
        ? Container(
            margin: EdgeInsets.all(5),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.7),
                  blurRadius: 3,
                  //offset: Offset(3,3), // changes position of shadow
                ),
              ],
            ),
            child: GestureDetector(
              onTap: () {
                print("set default");
                setActiveAddress(
                    data.address!, data.latitude!, data.longitude!);
              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                      ),
                      child: new IconButton(
                        onPressed: () {},
                        icon: ImageIcon(AssetImage(Assets.iconMarker),
                            size: 20, color: AppColors.red),
                      ),
                    ),
                    Column(children: [
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        width: MediaQuery.of(Get.context!).size.width - 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                data.name!,
                                style: TextStyle(
                                  fontFamily: "roboto",
                                  color: AppColors.red,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                data.isDefault! ? "Default" : "",
                                style: TextStyle(
                                  fontFamily: "roboto",
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                                textAlign: TextAlign.end,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        width: MediaQuery.of(Get.context!).size.width - 100,
                        child: Text(
                          data.address!,
                          style: TextStyle(
                            fontFamily: "roboto",
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                          softWrap: true,
                          maxLines: 3,
                        ),
                      )
                    ]),
                  ],
                ),
              ),
            ),
          )
        : Container();
  }

  void getAddress() {
    Loading.show();
    // _userStore?.getAddress(_userStore!.profile!.mobilePhone!).then((res) {
    //   setState(() {
    //     listAddress = res;
    //   });
    //   Loading.dismiss();
    // }).catchError((err) {
    //   Loading.dismiss();
    //   print(err);
    //   ErrorPopupWidget.showDioError(context, err, null);
    // });
  }

  void setActiveAddress(String address, String lat, String lng) {
    controller.setActiveAddress(address);
    // _userStore?.setActiveAddress(address, lat, lng);
    // _userStore?.setActivedHomeTab("home");
    // _userStore?.setProfile(null);
    Get.offNamed(Routers.home);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopBackgound(backgroundColor: AppColors.red),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new IconButton(
                        icon: new Icon(Icons.arrow_back_outlined,
                            color: Colors.black, size: 28.0),
                        onPressed: () {
                          // _userStore?.setActivedHomeTab("home");
                          Get.offNamed(Routers.home);
                        }),
                    Text("All Address",
                        style: TextStyle(
                          fontFamily: "roboto",
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center),
                    new IconButton(
                        icon: new Icon(Icons.map,
                            color: AppColors.red, size: 28.0),
                        onPressed: () {
                          Get.toNamed(Routers.homeAddLocation);
                        }),
                  ],
                ),
                Container(
                  color: Colors.black12,
                  width: double.infinity,
                  height: 10,
                ),
                _locationActive(),
                // _userStore?.skipAndContinue ?? false
                false
                    ? Container()
                    : Column(
                        children: [
                          Container(
                            height: 30,
                            color: Colors.black12,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text("Alamat Tersimpan",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      textAlign: TextAlign.center),
                                ),
                                GestureDetector(
                                    child: Container(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Text(
                                        "Lihat semua",
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.red),
                                      ),
                                    ),
                                    onTap: () {
                                      // _userStore?.setActiveHistoryScreen(
                                      //     "home.address");
                                      Get.toNamed(Routers.setAddressList);
                                    })
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 40),
                            height: MediaQuery.of(context).size.height - 210,
                            // child: SingleChildScrollView(
                            //     child: Column(
                            //   children: [
                            //     listAddress.length > 0
                            //         ? new ListView.builder(
                            //             scrollDirection: Axis.vertical,
                            //             shrinkWrap: true,
                            //             itemCount: listAddress.length,
                            //             itemBuilder: (BuildContext ctxt, int index) {
                            //               return _listAddress(listAddress[index]);
                            //             },
                            //           )
                            //         : Container(),
                            //     _btnNewAddress(),
                            //   ],
                            // )
                            child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true, // new line
                                padding: const EdgeInsets.all(8),
                                itemCount: controller.listAddress.length + 1,
                                itemBuilder: (BuildContext context, int index) {
                                  if (index + 1 ==
                                      controller.listAddress.length + 1) {
                                    return _btnNewAddress();
                                  } else {
                                    return _listAddress(
                                        controller.listAddress[index]);
                                  }
                                }),
                          ),
                        ],
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
