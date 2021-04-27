import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/constants/strings.dart';
import 'package:boilerplate/models/order/payment_method.dart';
import 'package:boilerplate/stores/order/order_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectPaymentMethodScreen extends StatelessWidget {
  OrderStore _orderStore;
  
  @override
  Widget build(BuildContext context) {
    _orderStore = Provider.of<OrderStore>(context);
    
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
          'Metode Pembayaran',
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
        itemCount: _orderStore.paymentMethod.length,
        itemBuilder: (context, index) => _buildItemList(context, _orderStore.paymentMethod[index]),
        separatorBuilder: (context, index) => SizedBox(height: 5),
      ),
    );
  }

  Widget _buildItemList(context, PaymentMethod item) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(item.title.replaceAll('%1\$s', Strings.appName)
          , style: TextStyle(color:Colors.black, fontWeight: FontWeight.bold,)),
          FlatButton(
            onPressed: () {
              _orderStore.setPaymentMethod(item);
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
