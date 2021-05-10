import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/constants/strings.dart';
import 'package:boilerplate/models/order/delivery_method_model.dart';
import 'package:boilerplate/models/order/payment_method.dart';
import 'package:boilerplate/stores/order/order_store.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/utils/formatting/rupiah.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectDeliveryMethodScreen extends StatelessWidget {
  OrderStore _orderStore;
  UserStore _userStore;

  @override
  Widget build(BuildContext context) {
    _orderStore = Provider.of<OrderStore>(context);
    _userStore = Provider.of<UserStore>(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Pesan Antar',
          style: TextStyle(
            fontFamily: "roboto",
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView.separated(
        shrinkWrap: true,
        itemCount: _orderStore.listDeliveryMethod.length,
        itemBuilder: (context, index) => _buildProviderList(context, _orderStore.listDeliveryMethod[index]),
        separatorBuilder: (context, index) => SizedBox(height: 5),
      ),
    );
  }

  Widget _buildProviderList(context, DeliveryMethod provider) {
    return Container(
      child: Column(
        children: [
          _buildProviderTitle(context, provider.name),
          SizedBox(height: 5),
          ListView.separated(
            shrinkWrap: true,
            itemCount: provider.shipmentMethods.length,
            itemBuilder: (context, index) => _buildItemList(context, provider.shipmentMethods[index], provider),
            separatorBuilder: (context, index) => SizedBox(height: 5),
          ),
        ],
      ),
    );
  }

  Widget _buildProviderTitle(context, String title) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Text(
        title,
        style: TextStyle(
          color: AppColors.red,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        )
      ),
    );
  }

  Widget _buildItemList(context, Map<String, dynamic> item, DeliveryMethod provider) {
    String description = item['description']!=null  ? item['description'].toString()+" - " : "";
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item['name'],
                style: TextStyle(
                  color:Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                )
              ),
              SizedBox(height: 5),
              Text(
                  description + (item['price'] > 0 ? Rupiah.format(item['price'].toString()) : 'Free'),
                style: TextStyle(
                  color:Colors.black,
                )
              ),
            ],
          ),
          FlatButton(
            onPressed: () {
              _orderStore.setDeliveryMethod({
                'method': item,
                'param': provider.paramString,
                'user': {
                  'address': _userStore.activeAddress,
                  'addressLat': _userStore.activeAddressLat,
                  'addressLng': _userStore.activeAddresslng,
                }
              });
              Navigator.of(context).pop();
            },
            color: Colors.white,
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0),side: BorderSide(
              width: 1,
              color: AppColors.red,
            ),),
            child: Text('Pilih', style: TextStyle(color:AppColors.red, fontWeight: FontWeight.bold,))
          )
        ],
      ),
    );
  }

}
