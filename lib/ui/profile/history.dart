import 'package:boilerplate/models/transaction/transaction_history.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/utils/loading/loading.dart';
import 'package:boilerplate/stores/transaction/transaction_store.dart';
import 'package:boilerplate/utils/formatting/rupiah.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  TransactionStore _transactionStore;

  List<TransactionHistory> transactionHistory = [];

  void getTransactionHistory() async {
    Loading.show();
    await _transactionStore.getTransactionHistory().then((res) {
      setState(() {
        transactionHistory = res;
      });
      Loading.dismiss();
    }).catchError((err) {
      print("error response: " + err.toString());
    });
  }

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();
    // Additional initialization of the State
  }

  List<Widget> buildList() {
    final df = new DateFormat('dd MMM yyyy, hh:mm:ss');
    final isoParser = new DateFormat('yyyy-MM-ddTHH:mm:ssZ');

    return transactionHistory
        .map<Widget>((transaction) => GestureDetector(
              onTap: () {
                print('Transaction ${transaction.receiptCode} clicked');
              },
              child: Container(
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), boxShadow: [
                  BoxShadow(
                    color: Colors.grey[400],
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(0, 2.0),
                  )
                ]),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
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
                      SizedBox(height: 10),
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
                        children: [
                          Text('Total'),
                          Text(Rupiah.format(transaction.totalPayment.toString())),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ))
        .toList();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // initializing stores
    _transactionStore = Provider.of<TransactionStore>(context);
    getTransactionHistory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 20,
            color: AppColors.red,
          ),
          Container(
            color: AppColors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(width: 100, child: Text("")),
                    Container(
                      width: 100,
                      child: Text("Digiresto",
                          style: TextStyle(
                            fontFamily: "roboto",
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center),
                    ),
                    Container(
                      width: 100,
                      alignment: Alignment.centerRight,
                      child: FlatButton(
                        onPressed: () => Navigator.of(context).pop(),
                        highlightColor: Colors.transparent,
                        child: Text(
                          "CLOSE",
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.normal, fontFamily: 'roboto', color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: buildList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
