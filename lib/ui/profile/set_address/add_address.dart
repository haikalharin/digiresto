import 'dart:async';

import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddAddressScreen extends StatefulWidget {
  @override
  State<AddAddressScreen> createState() => AddAddressScreenState();
}

class AddAddressScreenState extends State<AddAddressScreen> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(-6.175483, 106.826852);
  LatLng _lastMapPosition;
  Icon marker = new Icon(Icons.person_pin_circle_outlined,
      color: AppColors.red, size: 36.0);
  Icon markerMove = new Icon(Icons.person_pin_circle_rounded,
      color: AppColors.red, size: 36.0);
  bool isMarkerMove = false;
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
  void _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
    setState(() {
      isMarkerMove=true;
    });
    print(_lastMapPosition);
  }
  void _onCameraMoveEnd() {
    setState(() {
      isMarkerMove=false;
    });
    print("camera idle");
    print(_lastMapPosition);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            leading: new Icon(Icons.arrow_back_outlined,
                color: Colors.black, size: 28.0),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.gps_fixed_outlined,color: AppColors.red, size: 28.0),
                Text('Select location',style: TextStyle(
                  fontFamily: "roboto",
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            )
        ),
        floatingActionButton: new FloatingActionButton(
            elevation: 0.0,
            child: new Icon(Icons.check),
            backgroundColor: new Color(0xFFE57373),
          onPressed: () => Navigator.of(context).pop(),
        ),
        floatingActionButtonLocation:
        FloatingActionButtonLocation.startFloat,
        body:
            Stack(
              children: [
                GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 11.0,
                  ),
                  onCameraMove: _onCameraMove,
                  onCameraIdle: _onCameraMoveEnd,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.only(bottom:50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      isMarkerMove ? Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.transparent,
                            border: Border.all(color: AppColors.greyStroke)
                        ),
                        child: Text("",style: TextStyle(
                          fontFamily: "roboto",
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                            textAlign: TextAlign.center),
                      ) : Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.red,
                            border: Border.all(color: AppColors.greyStroke)
                        ),
                        child: Text("Click To Set Destination",style: TextStyle(
                          fontFamily: "roboto",
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                            textAlign: TextAlign.center),
                      ),
                      new IconButton(
                        icon: isMarkerMove ? markerMove : marker,
                      ),
                    ],
                  ),
              ),
                ),

            ]

        ),
      ),
    );
  }
}