import 'package:flutter/material.dart';

class CustomShadow {
  static final BoxShadow standard = BoxShadow(
      color: Colors.grey.withOpacity(0.7), blurRadius: 10, spreadRadius: 4
      //offset: Offset(3,3), // changes position of shadow
      );
}
