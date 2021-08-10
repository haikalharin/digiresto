import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:core';
import 'package:pinch_zoom/pinch_zoom.dart';

class DetailImageDialog extends StatelessWidget {
  final dataImage;
  @override
  DetailImageDialog({
    Key? key,
    @required this.dataImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.5),
      body: Container(
        child: Stack(children: [
          Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.only(top: 30, right: 10),
            child: Ink(
              decoration: ShapeDecoration(
                color: Colors.black87,
                shape: CircleBorder(),
              ),
              child: IconButton(
                icon: Icon(Icons.close),
                color: Colors.white,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2 + 50,
                child: PinchZoom(
                  child: Image.network(this.dataImage),
                  //zoomedBackgroundColor: Colors.black.withOpacity(0.5),
                  //resetDuration: const Duration(milliseconds: 100),
                  maxScale: 2.5,
                  zoomEnabled: true,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
