import 'dart:async';

import 'package:digiresto/application/address/address_location_screen_controller.dart';
import 'package:digiresto/application/address/map/address_map_bloc.dart';
import 'package:digiresto/domain/core/constants/assets.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/constants/font.dart';
import 'package:digiresto/domain/core/utils/ctoast/ctoast.dart';
import 'package:digiresto/domain/entity/map/param/get_geocode_param.dart';
import 'package:digiresto/domain/entity/user/user_get_address_model.dart';
import 'package:digiresto/presentation/address/map/autocomplete_address.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddLocationScreen extends GetView<AddressLocationScreenController> {
  final LatLng _center = const LatLng(-6.175483, 106.826852);
  final _addressController = TextEditingController();

  void _onMapCreated(GoogleMapController mapController) {
    controller.mapController.value = mapController;
  }

  void _onCameraMove(CameraPosition position) {
    controller.lastMapPosition.value = position.target;
    controller.isMarkerMove.value = true;
    controller.isMarkerClicked.value = false;
  }

  void _onCameraMoveEnd() {
    controller.isMarkerMove.value = false;
  }

  void _onClickSetDestination() {
    getGeocode();
  }

  _getCurrentLocation() {
    Loading.show();
    print("get current location deefault gps");
    Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.best,
            forceAndroidLocationManager: true)
        .then((Position position) {
      Loading.dismiss();
      controller.mapController.value!.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
              target: LatLng(position.latitude, position.longitude), zoom: 15),
        ),
      );
    }).catchError((e) {
      Loading.dismiss();
      print(e);
    });
  }

  void getGeocode() {
    Loading.show();
    Get.context!.read<AddressMapBloc>().add(AddressMapEvent.getGeoCode(
        GetGeoCodeParam(
            latitude: controller.lastMapPosition.value!.latitude.toString(),
            longitude:
                controller.lastMapPosition.value!.longitude.toString())));
  }

  void addAddress() {
    Get.context!.read<AddressMapBloc>().add(AddressMapEvent.setActiveAddress(
        UserAddress(
            address: _addressController.text.toString(),
            latitude: controller.lastMapPosition.value!.latitude.toString(),
            longitude:
                controller.lastMapPosition.value!.longitude.toString())));
  }

  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding:
              EdgeInsets.only(top: 10, bottom: 10, right: 18, left: 18),
          title: Text(I10n.current.address_location_detail,
              textAlign: TextAlign.center, style: AppFont.textBlack17Bold),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(14.0))),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: TextFormField(
                    maxLines: 4,
                    controller: _addressController,
                    decoration: new InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "address",
                      border: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            width: 2,
                          )),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(width: 1, color: AppColors.red),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(width: 1, color: AppColors.red),
                      ),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.red)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.red)),
                      //fillColor: Colors.green
                    ),
                    style: TextStyle(fontSize: 14.0, color: Colors.black),
                    // Only numbers can be entered
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your address';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 120,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.back();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                              side: BorderSide(
                                width: 1,
                                color: AppColors.red,
                              ),
                            ),
                          ),
                          child: Text(controller.cancelText,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.red)),
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            addAddress();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                              side: BorderSide(
                                width: 1,
                                color: AppColors.red,
                              ),
                            ),
                          ),
                          child: Text(I10n.current.address_save,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back_outlined,
                color: Colors.black, size: 28.0),
            onPressed: () {
              controller.dispose();
              Get.back();
            },
          ),
          title: Container(
            transform: Matrix4.translationValues(-24, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: ImageIcon(AssetImage(AppAssets.iconGps),
                      size: 20, color: AppColors.red),
                ),
                Text(I10n.current.address_use_current_location,
                    style: AppFont.textBlack15Bold),
              ],
            ),
          )),
      body: BlocConsumer<AddressMapBloc, AddressMapState>(
        listener: (context, state) {
          state.maybeMap(
              getGeoCodeFail: (value) {
                Ctoast.show("failed get addrress");
                Loading.dismiss();
              },
              getGeoCodeSuccess: (response) {
                Loading.dismiss();
                controller.geocode.value = response.response;
                controller.isMarkerClicked.value = true;
                _addressController.text =
                    controller.geocode.value!.formattedAddress!;
              },
              setActiveAddressSuccess: (_) {
                controller.dispose();
                Get.back(closeOverlays: true);
                int count = 0;
                Get.until((route) => count++ == 2);
              },
              orElse: () {});
        },
        builder: (context, state) {
          Get.put(AddressLocationScreenController());
          return Stack(children: [
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 15.0,
              ),
              onCameraMove: _onCameraMove,
              onCameraIdle: _onCameraMoveEnd,
              myLocationButtonEnabled: false,
              myLocationEnabled: true,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(bottom: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    controller.isMarkerMove.value ||
                            controller.isMarkerClicked.value == true
                        ? Container(
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.transparent,
                                border:
                                    Border.all(color: AppColors.greyStroke)),
                            child: Text("",
                                style: TextStyle(
                                  fontFamily: "roboto",
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                ),
                                textAlign: TextAlign.center),
                          )
                        : GestureDetector(
                            onTap: () {
                              _onClickSetDestination();
                            },
                            child: Container(
                              padding: EdgeInsets.all(14),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(37),
                                  color: AppColors.red,
                                  border:
                                      Border.all(color: AppColors.greyStroke)),
                              child: Text(I10n.current.address_set_destionation,
                                  style: AppFont.textBlack14Bold
                                      .copyWith(color: AppColors.white),
                                  textAlign: TextAlign.center),
                            ),
                          ),
                    controller.isMarkerMove.value
                        ? controller.markerMove
                        : controller.marker,
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              blurRadius: 10,
                              spreadRadius: 4)
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 24,
                        backgroundColor: AppColors.red,
                        child: new IconButton(
                          color: AppColors.red,
                          icon: ImageIcon(AssetImage(AppAssets.iconGps),
                              size: 24, color: AppColors.white),
                          onPressed: () {
                            _getCurrentLocation();
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                controller.isMarkerClicked.value
                    ? Container(
                        alignment: Alignment.bottomCenter,
                        height: 180,
                        width: double.infinity,
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(20),
                              alignment: Alignment.topLeft,
                              child: Text(
                                I10n.current.address_set_destionation_location,
                                style: AppFont.textBlack15Bold,
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              alignment: Alignment.topLeft,
                              child: Text(
                                controller.geocode.value?.formattedAddress !=
                                        null
                                    ? controller.geocode.value!.formattedAddress
                                        .toString()
                                    : "-",
                                style: TextStyle(
                                  fontFamily: "roboto",
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                textAlign: TextAlign.start,
                                maxLines: 3,
                              ),
                            ),
                            Container(
                              padding:
                                  EdgeInsets.only(top: 10, left: 30, right: 30),
                              child: SizedBox(
                                width: double.infinity,
                                height: 44,
                                child: ElevatedButton(
                                  onPressed: () {
                                    print("i use this location");
                                    _showMyDialog(Get.context!);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: AppColors.red,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(30.0),
                                      side: BorderSide(
                                        width: 1,
                                        color: AppColors.red,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                      I10n.current.address_use_this_location,
                                      style: AppFont.textBlack14Bold
                                          .copyWith(color: AppColors.white)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              blurRadius: 10,
                              spreadRadius: 4)
                        ],
                      ),
                      width: MediaQuery.of(Get.context!).size.width * 0.8,
                      child: AutoCompleteAddress().defaultWidget(
                          onSuccess: (place) {
                        controller.mapController.value!.animateCamera(
                          CameraUpdate.newCameraPosition(
                            CameraPosition(
                                target: LatLng(place.geometry!.location.lat,
                                    place.geometry!.location.lng),
                                zoom: 15),
                          ),
                        );
                      }))),
            ),
          ]);
        },
      ),
    );
  }
}
