import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/presentation/widgets/top_background_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAllPromoScreen extends StatelessWidget {
  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopBackgound(backgroundColor: AppColors.red),
          Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new IconButton(
                      icon: new Icon(Icons.arrow_back_outlined,
                          color: Colors.black, size: 24.0),
                      onPressed: () => Get.back(),
                    ),
                    Container(
                      width: 100,
                      child: Text("All Promo",
                          style: TextStyle(
                            fontFamily: "roboto",
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.center),
                    ),
                    Container(
                      width: 10,
                    )
                  ],
                ),
                Container(
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height - 68,
                    ),
                    child: Text("all promo")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
