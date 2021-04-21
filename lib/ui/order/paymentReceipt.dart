import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/constants/strings.dart';
import 'package:boilerplate/data/network/apis/transaction/transaction_api.dart';
import 'package:boilerplate/models/order/payment_method.dart';
import 'package:boilerplate/models/order/transaction_mobile.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/order/order_store.dart';
import 'package:boilerplate/utils/formatting/rupiah.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class PaymentReceiptScreen extends StatefulWidget {
  @override
  _PaymentReceiptScreenState createState() => _PaymentReceiptScreenState();
}

class _PaymentReceiptScreenState extends State<PaymentReceiptScreen> {
  OrderStore _orderStore;
  TransactionMobile _transaction;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _orderStore = Provider.of<OrderStore>(context);

    _transaction = _orderStore.transactionAfterPayment;
  } 

  Widget _lr(Widget left, Widget right) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [left, right],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            _orderStore.clearCart();
            Navigator.of(context).pushReplacementNamed(Routes.home);
          },
        ),
        title: Text(
          'Status Transaksi',
          style: TextStyle(
            fontFamily: "roboto",
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.red,
      ),
      body: Container(
        height: double.infinity,
        color: Colors.grey[200],
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(40),
            child: Column(
              children: [
                Text('Selamat!',
                  style: TextStyle(
                    color: AppColors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 5),
                Text('Pesanan anda sedang diproses',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        spreadRadius: -10,
                        offset: Offset(0, 5)
                      )
                    ],
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(20),  
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(_transaction.outlet['detail']['name'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text('Kode Struk:'),
                      SizedBox(height: 5),
                      Text(_transaction.receiptCode,
                        style: TextStyle(
                          color: AppColors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text('Waktu:'),
                      SizedBox(height: 5),
                      Text('19 Apr 2021, 03:42:19'),
                      SizedBox(height: 5),
                      Divider(height: 1, color: Colors.black),
                      SizedBox(height: 5),
                      ListView.separated(
                        shrinkWrap: true,
                        itemCount: _transaction.items.length,
                        itemBuilder: (context, index) => 
                          _lr(
                            Text('${_transaction.items[index]['title']} ${_transaction.items[index]['qty']}x'),
                            Text(Rupiah.format(_transaction.items[index]['subtotal'].toString()),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        separatorBuilder: (context, index) => SizedBox(height: 5),
                      ),
                      SizedBox(height: 5),
                      Divider(height: 1, color: Colors.black),
                      SizedBox(height: 5),
                      _lr(
                        Text('Subtotal'),
                        Text(Rupiah.format(_transaction.subtotal.toString()),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      ListView.separated(
                        shrinkWrap: true,
                        itemCount: _transaction.taxesAndServices.length,
                        itemBuilder: (context, index) => 
                          _lr(
                            Text(_transaction.taxesAndServices[index]['name']),
                            Text(Rupiah.format(_transaction.taxesAndServices[index]['amount'].toString()),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        separatorBuilder: (context, index) => SizedBox(height: 5),
                      ),
                      SizedBox(height: 5),
                      if (_transaction.roundAmount != 0)
                        _lr(
                          Text('Rounding'),
                          Text(Rupiah.format(_transaction.roundAmount.toString()),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      if (_transaction.roundAmount != 0)
                        SizedBox(height: 5),
                      Divider(height: 1, color: Colors.black),
                      SizedBox(height: 5),
                      _lr(
                        Text('Total Payment',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(Rupiah.format(_transaction.finalAmount.toString()),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Divider(height: 1, color: Colors.black),
                      SizedBox(height: 5),
                      Text('Terima kasih telah melakukan pemesanan, kami akan segera memproses pesanan anda.',
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 15),
                      Text('Silahkan simpan bukti pesanan ini untuk ditunjukkan pada pihak resto.',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}
