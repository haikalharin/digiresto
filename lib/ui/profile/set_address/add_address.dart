import 'dart:async';
import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddAddressScreen extends StatefulWidget {
  @override
  State<AddAddressScreen> createState() => AddAddressScreenState();
}

class AddAddressScreenState extends State<AddAddressScreen> {
  GoogleMapController mapController;
  Completer<GoogleMapController> _controller = Completer();
  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
  final LatLng _center = const LatLng(-6.175483, 106.826852);
  LatLng _lastMapPosition;
  Position _currentPosition;
  ImageIcon marker =
      ImageIcon(AssetImage(Assets.iconMarker), size: 36, color: AppColors.red);
  ImageIcon markerMove = ImageIcon(AssetImage(Assets.iconMarkerMove),
      size: 36, color: AppColors.red);
  bool isMarkerMove = false;
  bool isMarkerClicked = false;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
    setState(() {
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
    setState(() {
      isMarkerClicked = true;
    });
  }
  _getCurrentLocation() {
    final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
       mapController.animateCamera(
         CameraUpdate.newCameraPosition(
           CameraPosition(target: LatLng(position.latitude, position.longitude), zoom: 15),
         ),
      );
    }).catchError((e) {
      print(e);
    });
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
                      child:
                      new IconButton(
                        icon: ImageIcon(AssetImage(Assets.iconGps), size: 36, color: AppColors.red),
                        onPressed: () {
                          _getCurrentLocation();
                        },
                      ),
                   ),
                    isMarkerClicked
                        ? Container(
                      alignment: Alignment.bottomCenter,
                      height: 160,
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
                              ),textAlign: TextAlign.start,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20, right: 20,),
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Jl. cenndrawasih 1 d 25 RW.013, Margahayu Bekasi Timur Bekasi Cit West Java",
                              style: TextStyle(
                                fontFamily: "roboto",
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),textAlign: TextAlign.start,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                            child: SizedBox(
                              width: double.infinity,
                              height: 44,
                              child: RaisedButton(
                                  onPressed: () {
                                    print("i use this location");
                                  },
                                  color: AppColors.red,
                                  child: Text("Use This Location",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(30.0))),
                            ),
                          ),
                        ],
                      ),
                    ) : Container(),
                  ],
                )
        ]),
      ),
    );
  }
}
