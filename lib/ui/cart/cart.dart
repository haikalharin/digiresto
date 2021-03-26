
import 'dart:async';

import 'package:boilerplate/routes.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    super.initState();

    // it will navigate to login page as soon as this state is built
    Timer.run(() {
      Navigator.of(context)
          .pushNamedAndRemoveUntil(
          Routes.order_cart,
              (Route<dynamic> route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("123"),
    );
  }
}
