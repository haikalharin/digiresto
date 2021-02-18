import 'dart:async';
import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:boilerplate/models/map/geocode.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/map/map_store.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/utils/ctoast/ctoast.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:boilerplate/constants/strings.dart';
class AddAddressScreen extends StatefulWidget {
  @override
  State<AddAddressScreen> createState() => AddAddressScreenState();
}

class AddAddressScreenState extends State<AddAddressScreen> {
  GoogleMapController mapController;
  Completer<GoogleMapController> _controller = Completer();
  LatLng _lastMapPosition;
  MapStore _mapStore;
  UserStore _userStore;
  ImageIcon marker =
      ImageIcon(AssetImage(Assets.iconMarker), size: 36, color: AppColors.red);
  ImageIcon markerMove = ImageIcon(AssetImage(Assets.iconMarkerMove),
      size: 36, color: AppColors.red);
  bool isMarkerMove = false;
  bool isMarkerClicked = false;
  Geocode _geocode;

  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
  final LatLng _center = const LatLng(-6.175483, 106.826852);
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  bool isSelectedDefault = false;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _onCameraMove(CameraPosition position) {
    setState(() {
      _lastMapPosition = position.target;
      isMarkerMove = true;
      isMarkerClicked = false;
    });
    //print(_lastMapPosition);
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
    final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
              target: LatLng(position.latitude, position.longitude), zoom: 15),
        ),
      );
    }).catchError((e) {
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
    _mapStore = Provider.of<MapStore>(context);
    _userStore = Provider.of<UserStore>(context);
  }

  void getGeocode() {
      _mapStore.getGeocode({
        "latitude": _lastMapPosition.latitude.toString(),
        "longitude": _lastMapPosition.longitude.toString()
      }).then((res) {
        setState(() {
          _geocode = res;
          isMarkerClicked = true;
        });
        _addressController.text = _geocode.formattedAddress;
      }).catchError((err) {
        print("error response: " + err);
      });
  }

  void addAddress() {
      _userStore.addAddress({
        "wa_id": _userStore.profile.mobilePhone,
        "waba_no": Strings.wabaNo,
        "name": _nameController.text.toString(),
        "address": _addressController.text.toString(),
        "latitude": _lastMapPosition.latitude.toString(),
        "longitude":  _lastMapPosition.longitude.toString(),
        "is_default": isSelectedDefault,
      }).then((res) {
        if (res.id!=null){
          _userStore.setActivedHomeTab("profile");
          Navigator.of(context).pushReplacementNamed(Routes.set_address_list);
        }
      }).catchError((err) {
        print("error response: " + err);
      });
  }

  void changeTic(bool value) {
    setState(() {
      isSelectedDefault = value;
    });
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
                      child: TextFormField(
                        controller: _nameController,
                        decoration: new InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "name",
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
                          if (value.isEmpty) {
                            return 'Please enter your name address';
                          }
                          return null;
                        },
                      ),
                    ),
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
                          if (value.isEmpty) {
                            return 'Please enter your address';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isSelectedDefault = !isSelectedDefault;
                                  });
                                },
                                child: isSelectedDefault
                                    ? Icon(
                                        Icons.check_box_rounded,
                                        color: Colors.green,
                                        size: 30,
                                      )
                                    : Icon(
                                        Icons.check_box_outline_blank,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                              ),
                              SizedBox(width: 5),
                              Container(
                                constraints: BoxConstraints(
                                    minWidth: 200, maxWidth: 300),
                                child: Text("Default address",
                                    style: TextStyle(
                                      fontFamily: "roboto",
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ),
                            ],
                          ),
                        ],
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
                                  AppLocalizations.of(context)
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
                                if (_nameController.text.toString().length==0){
                                  Ctoast.show("Required name");
                                }else{
                                  addAddress();
                                }
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
                                  ? _geocode?.formattedAddress.toString()
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
