import 'dart:async';

import 'package:digiresto/domain/core/constants/assets.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/utils/loading/loading.dart';
import 'package:digiresto/domain/core/utils/locale/app_localization.dart';
import 'package:digiresto/domain/entity/map/geocode.dart';
import 'package:digiresto/routes.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeAddLocationScreen extends StatefulWidget {
  @override
  State<HomeAddLocationScreen> createState() => HomeAddLocationScreenState();
}

class HomeAddLocationScreenState extends State<HomeAddLocationScreen> {
  GoogleMapController? mapController;
  LatLng? _lastMapPosition;
  // MapStore? _mapStore;
  // UserStore? _userStore;
  ImageIcon marker =
      ImageIcon(AssetImage(Assets.iconMarker), size: 36, color: AppColors.red);
  ImageIcon markerMove = ImageIcon(AssetImage(Assets.iconMarkerMove),
      size: 36, color: AppColors.red);
  bool isMarkerMove = false;
  bool isMarkerClicked = false;
  Geocode? _geocode;

  //final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
  final LatLng _center = const LatLng(-6.175483, 106.826852);
  final _addressController = TextEditingController();

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _onCameraMove(CameraPosition position) {
    setState(() {
      _lastMapPosition = position.target;
      isMarkerMove = true;
      isMarkerClicked = false;
    });
  }

  void _onCameraMoveEnd() {
    setState(() {
      isMarkerMove = false;
    });
    // print("camera idle");
    // print(_lastMapPosition);
  }

  void _onClickSetDestination() {
    getGeocode();
  }

  _getCurrentLocation() {
    Loading.show();
    print("get current location deefault gps");
    //final Geolocator geolocator = Geolocator()..forceAndroidLocationManager = true;
    Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.best,
            forceAndroidLocationManager: true)
        .then((Position position) {
      Loading.dismiss();
      mapController!.animateCamera(
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

  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // _mapStore = Provider.of<MapStore>(context);
    // _userStore = Provider.of<UserStore>(context);
    _getCurrentLocation();
  }

  void getGeocode() {
    Loading.show();
    // _mapStore!.getGeocode({
    //   "latitude": _lastMapPosition!.latitude.toString(),
    //   "longitude": _lastMapPosition!.longitude.toString()
    // }).then((res) {
    //   Loading.dismiss();
    //   setState(() {
    //     _geocode = res;
    //     isMarkerClicked = true;
    //   });
    //   _addressController.text = _geocode!.formattedAddress!;
    // }).catchError((err) {
    //   Ctoast.show("failed get addrress");
    //   Loading.dismiss();
    //   print("error response: " + err);
    // });
  }

  void addAddress() {
    // _userStore!.setActiveAddress(
    //     _addressController.text.toString(),
    //     _lastMapPosition!.latitude.toString(),
    //     _lastMapPosition!.longitude.toString());
    // _userStore!.setActivedHomeTab("home");
    // _userStore!.setProfile(null);
    Navigator.of(context).pushNamed(Routes.home);
  }

  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              contentPadding: EdgeInsets.all(10),
              title: Text(
                "Detail Location",
                textAlign: TextAlign.center,
              ),
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
                            borderSide:
                                BorderSide(width: 1, color: AppColors.red),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide:
                                BorderSide(width: 1, color: AppColors.red),
                          ),
                          errorBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                              borderSide:
                                  BorderSide(width: 1, color: AppColors.red)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
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
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              color: Colors.white,
                              child: Text(
                                  AppLocalizations.of(context)!
                                      .translate('profile_cancel'),
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.red)),
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                                side: BorderSide(
                                  width: 1,
                                  color: AppColors.red,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 120,
                            height: 40,
                            child: RaisedButton(
                              onPressed: () {
                                addAddress();
                              },
                              color: AppColors.red,
                              child: Text("Save",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                                side: BorderSide(
                                  width: 1,
                                  color: AppColors.red,
                                ),
                              ),
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
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back_outlined,
                  color: Colors.black, size: 28.0),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: ImageIcon(AssetImage(Assets.iconGps),
                      size: 20, color: AppColors.red),
                ),
                Text(
                  'Select location',
                  style: TextStyle(
                    fontFamily: "roboto",
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )),
        body: Stack(children: [
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
                  isMarkerMove || isMarkerClicked == true
                      ? Container(
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.transparent,
                              border: Border.all(color: AppColors.greyStroke)),
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
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColors.red,
                                border:
                                    Border.all(color: AppColors.greyStroke)),
                            child: Text("Click To Set Destination",
                                style: TextStyle(
                                  fontFamily: "roboto",
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                ),
                                textAlign: TextAlign.center),
                          ),
                        ),
                  isMarkerMove ? markerMove : marker,
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.bottomRight,
                child: new IconButton(
                  icon: ImageIcon(AssetImage(Assets.iconGps),
                      size: 36, color: AppColors.red),
                  onPressed: () {
                    _getCurrentLocation();
                  },
                ),
              ),
              isMarkerClicked
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
                              "Set Destination Location",
                              style: TextStyle(
                                fontFamily: "roboto",
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
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
                              _geocode?.formattedAddress != null
                                  ? _geocode!.formattedAddress.toString()
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
                              child: RaisedButton(
                                  onPressed: () {
                                    print("i use this location");
                                    _showMyDialog(context);
                                  },
                                  color: AppColors.red,
                                  child: Text("Use This Location",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(30.0))),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(),
            ],
          )
        ]),
      ),
    );
  }
}
