import 'dart:ui';

import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/models/transaction/transaction_history.dart';
import 'package:boilerplate/models/transaction/transaction_history_item.dart';
import 'package:boilerplate/models/transaction/transaction_history_taxes_and_services.dart';
import 'package:boilerplate/utils/formatting/rupiah.dart';
import 'package:boilerplate/utils/launch_url/launch_url.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HistoryDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TransactionHistory transaction = ModalRoute.of(context).settings.arguments;

    final df = new DateFormat('dd MMM yyyy, hh:mm:ss');
    final isoParser = new DateFormat('yyyy-MM-ddTHH:mm:ssZ');

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
          child: Image.network(item.img),
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
