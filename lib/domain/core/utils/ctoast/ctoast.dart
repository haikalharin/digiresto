import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
/*show toast message*/
class Ctoast{
  static void show(String message){
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black87,
        textColor: Colors.white70,
        fontSize: 16.0
    );
  }
}