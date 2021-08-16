import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class PaymentVA extends StatefulWidget {
  @override
  _PaymentVAState createState() => _PaymentVAState();
}

class _PaymentVAState extends State<PaymentVA> {
  OrderStore _orderStore;
  UserStore _userStore;
  UserProfile _userProfile;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _orderStore = Provider.of<OrderStore>(context);
    _userStore = Provider.of<UserStore>(context);
    _userProfile = _userStore.profile;
  }

  @override
  Widget build(BuildContext context) {
    final vaPayment = _orderStore.paymentData.paymentCode;

    final df = new DateFormat('EEEE, dd MMMM yyyy, hh:mm');
    final isoParser = new DateFormat('yyyy-MM-ddTHH:mm:ssZ');

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Pembayaran',
          style: TextStyle(
            fontFamily: 'roboto',
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.red,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi ${_userProfile.name},',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                      'Silahkan lanjutkan proses pembayaran dengan detail sebagai berikut'),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Batas akhir pembayaran'),
                  SizedBox(height: 5),
                  Text(
                    df.format(isoParser.parse(vaPayment['expiresAt'])),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 10),
                  Text('Transfer ke nomor Virtual Account'),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            vaPayment['title'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            vaPayment['vaNumber'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.red,
                            ),
                          ),
                        ],
                      ),
                      FlatButton(
                          onPressed: () {
                            Clipboard.setData(
                                ClipboardData(text: vaPayment['vaNumber']));
                            Ctoast.show('VA Number Copied');
                          },
                          color: Colors.white,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                            side: BorderSide(
                              width: 1,
                              color: AppColors.red,
                            ),
                          ),
                          child: Text('Salin',
                              style: TextStyle(
                                color: AppColors.red,
                                fontWeight: FontWeight.bold,
                              )))
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Total pembayaran'),
                          SizedBox(height: 5),
                          Text(
                            Rupiah.format(vaPayment['amount'].toString()),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      FlatButton(
                          onPressed: () {
                            Clipboard.setData(ClipboardData(
                                text: vaPayment['amount'].toString()));
                            Ctoast.show('Amount Copied');
                          },
                          color: Colors.white,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                            side: BorderSide(
                              width: 1,
                              color: AppColors.red,
                            ),
                          ),
                          child: Text('Salin',
                              style: TextStyle(
                                color: AppColors.red,
                                fontWeight: FontWeight.bold,
                              )))
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                color: Colors.white,
                child: FlatButton(
                    minWidth: double.infinity,
                    onPressed: () async {
                      await _orderStore.getTransaction();
                      Navigator.of(context)
                          .pushReplacementNamed(Routes.payment_receipt);
                    },
                    color: AppColors.red,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    child: Text(
                      'Selesai',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
