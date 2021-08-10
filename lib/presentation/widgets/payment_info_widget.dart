import 'package:flutter/material.dart';

class PaymentInfo extends StatelessWidget {
  final name;
  final value;
  final useDevider;
  const PaymentInfo({Key? key, this.name, this.value, this.useDevider = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 5),
            child: Text(name,
                style: TextStyle(
                  fontFamily: "roboto",
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center),
          ),
          Container(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: Text(value,
                  style: TextStyle(
                    fontFamily: "roboto",
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.center)),
          useDevider
              ? Divider(
                  color: Colors.grey,
                )
              : Container()
        ],
      ),
    );
  }
}
