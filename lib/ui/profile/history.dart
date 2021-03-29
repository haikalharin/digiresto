import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/models/transaction/transaction_history.dart';
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

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // initializing stores
    _transactionStore = Provider.of<TransactionStore>(context);
    getTransactionHistory();
  }

  Widget _buildTransactionHistoryItem(BuildContext context, int index) {
    final transaction = transactionHistory[index];

    final df = new DateFormat('dd MMM yyyy, hh:mm:ss');
    final isoParser = new DateFormat('yyyy-MM-ddTHH:mm:ssZ');

    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: GestureDetector(
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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.bgHome),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.white,
                      iconSize: 32,
                      onPressed: () => Navigator.of(context).pop()),
                ),
              ),
              Positioned.fill(
                child: Align(
                  child: Text(
                    "Riwayat",
                    style: TextStyle(
                      fontFamily: "roboto",
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(10),
              itemCount: transactionHistory.length,
              itemBuilder: _buildTransactionHistoryItem,
            ),
          ),
        ],
      ),
    );
  }
}
