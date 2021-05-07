import 'dart:ui';

import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/models/transaction/transaction_history.dart';
import 'package:boilerplate/models/transaction/transaction_history_item.dart';
import 'package:boilerplate/models/transaction/transaction_history_taxes_and_services.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/order/order_store.dart';
import 'package:boilerplate/stores/transaction/transaction_store.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/utils/formatting/rupiah.dart';
import 'package:boilerplate/utils/launch_url/launch_url.dart';
import 'package:boilerplate/utils/loading/loading.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:boilerplate/utils/random/random_images.dart';
import 'package:boilerplate/widgets/Error_popup_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class HistoryDetailScreen extends StatefulWidget {
  @override
  _HistoryDetailScreenState createState() => _HistoryDetailScreenState();
}

class _HistoryDetailScreenState extends State<HistoryDetailScreen> {
  TransactionStore _transactionStore;
  UserStore _userStore;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // initializing stores
    _transactionStore = Provider.of<TransactionStore>(context);
    _userStore = Provider.of<UserStore>(context);
  }

  @override
  Widget build(BuildContext context) {
    final TransactionHistory transaction = ModalRoute.of(context).settings.arguments;

    final df = new DateFormat('dd MMM yyyy, hh:mm:ss');
    final isoParser = new DateFormat('yyyy-MM-ddTHH:mm:ssZ');

    Widget _cancelBtn(BuildContext context){
      return Container(
        width: MediaQuery.of(context).size.width-50,
        height: 40,
        child: RaisedButton(
          onPressed: () {
            ErrorPopupWidget.confirmation(context,"Batalkan Transaksi","Apakah anda yakin ingin membatalkan transaksi?",(){
              Navigator.pop(context);
              Loading.show();
              _transactionStore.cancelTransaction(transaction.receiptCode).then((value) async {
                    _transactionStore.deleteTransactionHistory();
                    await _transactionStore.getTransactionHistory();
                    Loading.dismiss();
                    ErrorPopupWidget.show(context, "Digiresto", "Pesanan anda telah dibatalkan", () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                      // _userStore.setActivedHomeTab("home");
                      // Navigator.of(context).pushNamed(Routes.home);
                    });
              }).catchError((err)=>{
                Navigator.pop(context),
                Loading.dismiss(),
                print("error cancel transaction"),
                print(err),
                ErrorPopupWidget.showDioError(context, err, () { })
              });

            });
          },
          color: AppColors.redYoung,
          child: Text("Batal",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(15.0),
            side: BorderSide(
              width: 1,
              color: AppColors.redYoung,
            ),
          ),
        ),
      );
    }

    Widget _acceptBtn(BuildContext context){
      return Container(
        width: MediaQuery.of(context).size.width-50,
        height: 40,
        child: RaisedButton(
          onPressed: () {
            ErrorPopupWidget.confirmation(context,"Pesanan Selesai","Apakah anda ingin menyelesaikan transaksi ?",(){
              Navigator.pop(context);
              Loading.show();
                _transactionStore.acceptTransaction(transaction.receiptCode).then((value) async {
                _transactionStore.deleteTransactionHistory();
                await _transactionStore.getTransactionHistory();
                Loading.dismiss();
                ErrorPopupWidget.show(context, "Digiresto", "Pesanan sudah selesai", () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  // _userStore.setActivedHomeTab("home");
                  // Navigator.of(context).pushNamed(Routes.home);
                });
              }).catchError((err)=>{
                Navigator.pop(context),
                Loading.dismiss(),
                print("error accept transaction"),
                print(err),
                ErrorPopupWidget.showDioError(context, err, () { })
              });

            });
          },
          color: AppColors.redYoung,
          child: Text("Selesai",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(15.0),
            side: BorderSide(
              width: 1,
              color: AppColors.redYoung,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Detail Riwayat',
          style: TextStyle(
            fontFamily: "roboto",
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.red,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Colors.grey[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400],
                      blurRadius: 1.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        'Toko ${transaction.outlet.detail.name}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text('Kode Struk: ${transaction.receiptCode}'),
                      SizedBox(height: 5),
                      Text(
                        df.format(isoParser.parse(transaction.deviceTimestamp)),
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 300,
                        child: Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 44,
                                child: FlatButton(
                                  onPressed: () {
                                    LaunchUrl.call(transaction.outlet.detail.phone.toString());
                                  },
                                  color: Colors.white,
                                  child: Text(
                                    'Telepon Toko',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.red,
                                    ),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(
                                      color: AppColors.red,
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 30),
                            Expanded(
                              child: SizedBox(
                                height: 44,
                                child: FlatButton(
                                  onPressed: () {
                                    final url = 'https://wa.me/${transaction.outlet.detail.phone}';
                                    LaunchUrl.run(url);
                                  },
                                  color: Colors.white,
                                  child: Text(
                                    'Chat Toko',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.red,
                                    ),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(
                                      color: AppColors.red,
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400],
                      blurRadius: 1.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Tipe Order'),
                          Text(transaction.salesType),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Status Transaksi'),
                          Text(transaction.status),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Daftar Order')],
                      ),
                      SizedBox(height: 10),
                      ListView.separated(
                        shrinkWrap: true,
                        itemCount: transaction.items.length,
                        itemBuilder: (context, index) => _buildItemList(transaction.items[index]),
                        separatorBuilder: (context, index) => SizedBox(height: 5),
                      ),
                      Divider(color: Colors.black),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Subtotal'),
                          Text(Rupiah.format(transaction.subtotal.toString())),
                        ],
                      ),
                      SizedBox(height: 5),
                      ListView.separated(
                        shrinkWrap: true,
                        itemCount: transaction.taxesAndServices.length,
                        itemBuilder: (context, index) => _buildTaxAndServiceList(transaction.taxesAndServices[index]),
                        separatorBuilder: (context, index) => SizedBox(height: 5),
                      ),
                      if (transaction.roundAmount != 0) SizedBox(height: 5),
                      if (transaction.roundAmount != 0)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Rounding'),
                            Text(Rupiah.format(transaction.roundAmount.toString())),
                          ],
                        ),
                      if (transaction.salesType == 'DELIVERY') SizedBox(height: 5),
                      if (transaction.salesType == 'DELIVERY')
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Delivery'),
                            Text(Rupiah.format(transaction.deliveryAmount.toString())),
                          ],
                        ),
                      Divider(color: Colors.black),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Payment',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            Rupiah.format(transaction.totalPayment.toString()),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  transaction.status=="waiting" ? _cancelBtn(context) : Container(),
                  transaction.status=="process" || transaction.status=="ready" ? _acceptBtn(context) : Container(),
                ],
              ),
              SizedBox(height: double.maxFinite),
            ],
          ),
        ),
      ),
    );
  }



  Widget _buildItemList(TransactionHistoryItem item) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          child:  Image(
            image: RandomImages.getImageUrl(item.img), //Image.network(item.img),]),
            fit: BoxFit.fill,
            width: double.infinity,
            alignment: Alignment.center,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('(${item.qty}x)'),
                ],
              ),
              Text(
                Rupiah.format(item.amount.toString()),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTaxAndServiceList(TransactionHistoryTaxesAndServices item) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(item.name),
        Text(Rupiah.format(item.amount.toString())),
      ],
    );
  }
}
