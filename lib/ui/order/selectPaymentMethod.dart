import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/constants/strings.dart';
import 'package:boilerplate/models/order/payment_method.dart';
import 'package:boilerplate/stores/order/order_store.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/utils/loading/loading.dart';
import 'package:boilerplate/utils/utils.dart';
import 'package:boilerplate/widgets/Error_popup_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectPaymentMethodScreen extends StatelessWidget {
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

  Widget _showCredits(){
    if (_userStore.balance != null ) {
      String tmpBalance = Utils.formatRupiah(_userStore.balance.balance);
      return  Text("Rp. "+tmpBalance, style: TextStyle(color:Colors.black, fontWeight: FontWeight.normal,fontSize: 14));
    }else{
      return  Text("Rp. 0", style: TextStyle(color:Colors.black, fontWeight: FontWeight.normal,fontSize: 14));
    }
  }

  Widget _buildItemList(context, PaymentMethod item) {
    String title = item.title.replaceAll('%1\$s', Strings.appName);
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
              Text(title, style: TextStyle(color:Colors.black, fontWeight: FontWeight.bold,)),
              title.toLowerCase()=="digiresto credits" ? _showCredits() : Container(),

            ],
          ),

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
