import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/formatting/rupiah.dart';
import 'package:digiresto/domain/core/utils/locale/app_localization.dart';
import 'package:digiresto/domain/entity/order/transaction_mobile.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'order_view_controller.dart';

class PaymentReceiptScreen extends GetView<OrderViewController> {
  //OrderStore _orderStore;
  TransactionMobile? _transaction;
  String? _receiptStatusTitle;
  String? _receiptStatusDesc;

  @override
  void didChangeDependencies() {
    //super.didChangeDependencies();
    // _orderStore = Provider.of<OrderStore>(context);

    // _transaction = _orderStore.transactionAfterPayment;

    // String receiptStatus = _transaction.status;
    _receiptStatusTitle =
        AppLocalizations.of(Get.context!)!.translate('nota_title_default') ??
            '';
    _receiptStatusDesc = '';

    // initial = pending payment
    // waiting = udah di bayar, tunggu response toko
    // process = pesanan di terima toko
    // reject = pesanan ditolak toko
    // ready = pesanan udah siap di antar (khusus delivery)
    // done = pesanan selesai
    // auto_done = pesanan selesai otomatis by system
    // failed = pembayaran gagal
    //switch (receiptStatus) {
    switch ('initial') {
      case 'initial':
        _receiptStatusTitle = AppLocalizations.of(Get.context!)!
            .translate('nota_pending_payment');
        break;
      case 'waiting':
        _receiptStatusDesc =
            AppLocalizations.of(Get.context!)!.translate('nota_waiting_desc');
        break;
      case 'process':
        _receiptStatusDesc =
            AppLocalizations.of(Get.context!)!.translate('nota_process_desc');
        break;
      case 'reject':
        _receiptStatusDesc =
            AppLocalizations.of(Get.context!)!.translate('nota_reject_desc');
        break;
      case 'cancelled':
        _receiptStatusDesc =
            AppLocalizations.of(Get.context!)!.translate('nota_cancel_desc');
        break;
      case 'ready':
        _receiptStatusDesc =
            AppLocalizations.of(Get.context!)!.translate('nota_ready_desc');
        break;
      case 'done':
        _receiptStatusDesc =
            AppLocalizations.of(Get.context!)!.translate('nota_done_desc');
        break;
      case 'auto_done':
        _receiptStatusDesc =
            AppLocalizations.of(Get.context!)!.translate('nota_auto_done_desc');
        break;
      case 'failed':
        _receiptStatusTitle =
            AppLocalizations.of(Get.context!)!.translate('nota_failed');
        break;
    }
  }

  Widget _lr(Widget left, Widget right) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [left, right],
    );
  }

  @override
  Widget build(BuildContext context) {
    final df = new DateFormat('dd MMM yyyy, hh:mm:ss');
    final isoParser = new DateFormat('yyyy-MM-ddTHH:mm:ssZ');

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            //_orderStore.clearCart();
            Navigator.of(context).pushReplacementNamed(Routers.home);
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
                  Text(
                    _receiptStatusTitle!,
                    style: TextStyle(
                      color: AppColors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  if (_receiptStatusDesc!.isNotEmpty) SizedBox(height: 5),
                  if (_receiptStatusDesc!.isNotEmpty)
                    Text(
                      _receiptStatusDesc!,
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
                            offset: Offset(0, 5))
                      ],
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                          "_transaction.outlet['detail']['name']",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text('Kode Struk:'),
                        SizedBox(height: 5),
                        Text(
                          _transaction!.receiptCode!,
                          style: TextStyle(
                            color: AppColors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text('Waktu:'),
                        SizedBox(height: 5),
                        Text(df.format(
                            isoParser.parse(_transaction!.deviceTimestamp!))),
                        SizedBox(height: 5),
                        Divider(height: 1, color: Colors.black),
                        SizedBox(height: 5),
                        ListView.separated(
                          shrinkWrap: true,
                          itemCount: _transaction!.items!.length,
                          itemBuilder: (context, index) => _lr(
                            Text(
                                '${_transaction!.items![index]['title']} ${_transaction!.items![index]['qty']}x'),
                            Text(
                              Rupiah.format(_transaction!.items![index]
                                      ['subtotal']
                                  .toString()),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 5),
                        ),
                        SizedBox(height: 5),
                        Divider(height: 1, color: Colors.black),
                        SizedBox(height: 5),
                        _lr(
                          Text('Subtotal'),
                          Text(
                            Rupiah.format(_transaction!.subtotal.toString()),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        ListView.separated(
                          shrinkWrap: true,
                          itemCount: _transaction!.taxesAndServices!.length,
                          itemBuilder: (context, index) => _lr(
                            Text(
                                _transaction!.taxesAndServices![index]['name']),
                            Text(
                              Rupiah.format(_transaction!
                                  .taxesAndServices![index]['amount']
                                  .toString()),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 5),
                        ),
                        SizedBox(height: 5),
                        if (_transaction!.salesType == 'DELIVERY')
                          _lr(
                            Text('Delivery'),
                            Text(
                              Rupiah.format(
                                  _transaction!.deliveryAmount.toString()),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        if (_transaction!.salesType == 'DELIVERY')
                          SizedBox(height: 5),
                        SizedBox(height: 5),
                        if (_transaction!.roundAmount != 0)
                          _lr(
                            Text('Rounding'),
                            Text(
                              Rupiah.format(
                                  _transaction!.roundAmount.toString()),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        if (_transaction!.roundAmount != 0) SizedBox(height: 5),
                        Divider(height: 1, color: Colors.black),
                        SizedBox(height: 5),
                        _lr(
                          Text(
                            'Total Payment',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            Rupiah.format(_transaction!.finalAmount.toString()),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Divider(height: 1, color: Colors.black),
                        SizedBox(height: 5),
                        Text(
                          'Terima kasih telah melakukan pemesanan, kami akan segera memproses pesanan anda.',
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Silahkan simpan bukti pesanan ini untuk ditunjukkan pada pihak resto.',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
