import 'package:flutter/material.dart';

class CustomShadow {
  static final BoxShadow standard = BoxShadow(
      color: Colors.grey.withOpacity(0.7), blurRadius: 10, spreadRadius: 4

      //offset: Offset(3,3), // changes position of shadow
      );

  static final BoxShadow justTop = BoxShadow(
      color: Colors.grey.withOpacity(0.147),
      blurRadius: 20,
      spreadRadius: 0,
      offset: Offset(0, -4));
}
