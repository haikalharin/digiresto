import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/data/repository.dart';
//import 'package:boilerplate/models/key_value_model.dart';
import 'package:boilerplate/models/order/detail_outlet_model.dart';
import 'package:boilerplate/models/order/payment_method.dart';
import 'package:boilerplate/models/transaction/transaction_history_taxes_and_services.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/order/order_store.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/ui/order/detailProductDialog.dart';
import 'package:boilerplate/utils/launch_url/launch_url.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:boilerplate/utils/random/random_images.dart';
import 'package:boilerplate/utils/utils.dart';
import 'package:boilerplate/widgets/list/detail_outlet_hot_promo_widget.dart';
import 'package:boilerplate/widgets/list/list_food_category_widget.dart';
import 'package:boilerplate/widgets/list/list_product_cart_widget.dart';
import 'package:boilerplate/widgets/list/list_product_outlet_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/constants/font_family.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'dart:core';
import 'package:boilerplate/utils/loading/loading.dart';
import 'package:flutter_mobx/flutter_mobx.dart';


class OrderCartScreen extends StatefulWidget {
  @override
  _OrderCartScreenState createState() => _OrderCartScreenState();
}

class KeyValueModel {
  String key;
  String value;
  KeyValueModel({this.key, this.value});
}


class _OrderCartScreenState extends State<OrderCartScreen> {
  Repository _repository;
  UserStore _userStore;
  OrderStore _orderStore;
  DetailOutlet detailOutlet;
  Loading _loading = new Loading();

  void loadingAdd() {
    setState(() {
      _loading.add();
    });
  }

  void loadingDelete() {
    setState(() {
      _loading.delete();
    });
  }

  final ScrollController _scrollController = new ScrollController();
  final notesController = TextEditingController();
  final placeInfoController = TextEditingController();
  final voucherCodeController = TextEditingController();
  final paxController = TextEditingController();
  final selectedDateController = TextEditingController();
  bool useSchedule;
  int reloadCounter = 0;
  DateTime selectedDate;
  bool notesSubmited=true;

  List<KeyValueModel> _dataSmoking = [
    KeyValueModel(key: "1", value: "Smoking"),
    KeyValueModel(key: "2", value: "Non Smoking"),
  ];

  List<KeyValueModel> _dataClock = [
    KeyValueModel(key: "13:00", value: "13:00"),
    KeyValueModel(key: "14:00", value: "14:00"),
    KeyValueModel(key: "15:00", value: "15:00"),
    KeyValueModel(key: "16:00", value: "16:00"),
    KeyValueModel(key: "17:00", value: "17:00"),
    KeyValueModel(key: "18:00", value: "18:00"),
    KeyValueModel(key: "19:00", value: "19:00"),
    KeyValueModel(key: "20:00", value: "20:00"),
    KeyValueModel(key: "21:00", value: "21:00"),
    KeyValueModel(key: "22:00", value: "22:00"),
    KeyValueModel(key: "23:00", value: "23:00"),
    KeyValueModel(key: "24:00", value: "24:00"),
  ];
  String _selectedValueClock;
  String _selectedValueSmoking;

  List<PaymentMethod> _paymentMethods;

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _userStore = Provider.of<UserStore>(context);
    _orderStore = Provider.of<OrderStore>(context);
    initDialogPlace();

    print('DEBUG >> transactionData on cart_store ${_orderStore.transactionData}');

    _orderStore.getPaymentMethod().then((value) {
      setState(() {
        _paymentMethods = value;
      });
    });
  }

  void initDialogPlace(){
    setState(() {
      useSchedule=false;
      paxController.text = "1";
      selectedDate = DateTime.now();
      _selectedValueClock = "13:00";
      _selectedValueSmoking = "1";
      selectedDateController.text = new DateFormat("yyyy/MM/dd").format(DateTime.now());
    });
  }
  void _editCart(Map<String, dynamic> x, String y) {}

  void _plusProduct(
      int productId, int qty, int price, Map<String, dynamic> detailProduct) {
    setState(() {
      reloadCounter++;
    });
    _orderStore.setProduct(productId, qty, price, detailProduct);
  }

  Widget _order() {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: EdgeInsets.only(top: 10, left: 10, right: 5),
      margin: EdgeInsets.only(top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text(
              _orderStore.orderOutletDetailName,
              //_orderStore.orderOutlet.detail["name"],
              //detailOutlet != null ? data.outlet["detail"]["name"] : ""
              style: TextStyle(
                fontFamily: "roboto",
                //color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              _orderStore.orderMerchantName,
              //_orderStore.orderOutlet.merchantName,
              //detailOutlet != null ? data.outlet["detail"]["name"] : ""
              style: TextStyle(
                fontFamily: "roboto",
                //color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: ListProductCartWidget(
              addOrRemove: _plusProduct,
              orderType: _orderStore.orderSalesTypesCode,
              data: _orderStore.orderProduct,
              runEditAction: _editCart,
              scrollDirection: Axis.vertical,
            ),
          ),
        ],
      ),
    );
  }

  Widget _addNew() {
    return Column(
      children: [
        Container(
          color: AppColors.greyStroke,
          height: 5,
          width: double.infinity,
        ),
        Container(
          color: Colors.white,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Text("Mau pesan yang lain ? ",
                        style: TextStyle(
                          fontFamily: "roboto",
                          //color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )),
                    Container(
                      padding: EdgeInsets.only(left: 10, top: 5, bottom: 10),
                      child: Text("Tambahkan pesanan lainnya ",
                          style: TextStyle(
                            fontFamily: "roboto",
                            //color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                height: 35,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(Routes.order_detail_outlet);
                  },
                  color: Colors.white,
                  child: Text("Tambah",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.red)),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0),
                    side: BorderSide(
                      width: 1,
                      color: AppColors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: AppColors.greyStroke,
          height: 10,
          width: double.infinity,
        ),
      ],
    );
  }

  Widget _header() {
    return Stack(children: [
      Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.bgHome),
            fit: BoxFit.fill,
          ),
          shape: BoxShape.rectangle,
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new IconButton(
                  icon: new Icon(Icons.arrow_back_outlined,
                      color: Colors.white, size: 24.0),
                  onPressed: () {
                    //if (_userStore.activeHistoryScreen=='profile.address'){
                    _userStore.setActivedHomeTab("home");
                    Navigator.of(context).pushNamed(Routes.home);
                    //}
                  },
                ),
                Container(
                  child: Text("Detail Order",
                      //detailOutlet != null ? data.outlet["detail"]["name"] : ""
                      style: TextStyle(
                        fontFamily: "roboto",
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center),
                ),
                Container(
                  width: 50,
                )
              ],
            ),
          ),
        ],
      ),
    ]);
  }

  String getValueSmoking(String key){
    for (int i=0; i <= _dataSmoking.length; i++ ){
      if (_dataSmoking[i].key==key){
        return _dataSmoking[i].value;
      }
    }
  }
  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
      builder: (BuildContext context, Widget child) {
        return Theme(
            isMaterialAppTheme: true,
            child: child,
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light().copyWith(
                primary: AppColors.red
              ),
            primaryColor: AppColors.red,
        ));
      },
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        selectedDateController.text=new DateFormat("yyyy/MM/dd").format(picked);
      });
  }


  Widget _notes() {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.black,
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Info Makan di Tempat",
                      style: TextStyle(
                        fontFamily: "roboto",
                        //color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                  Container(
                    padding: const EdgeInsets.only(top: 5, bottom: 10),
                    child: TextField(
                        textInputAction: TextInputAction.search,
                        onSubmitted: (value) {},
                        controller: placeInfoController,
                        readOnly: true,
                        onTap: () {
                          _dialogPlace(context);
                        },
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                        decoration: InputDecoration(
                          isDense: true,
                          filled: true,
                          fillColor: AppColors.greyFill,
                          contentPadding: EdgeInsets.only(top:12,bottom: 12, left: 10, right: 10),
                          hintText: "",
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 32.0),
                              borderRadius: BorderRadius.circular(5)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            borderSide: BorderSide(width: 1, color: Colors.black),
                          ),
                        )),
                  ),

                  Row(
                    children: [
                      Text("Catatan",
                          style: TextStyle(
                            fontFamily: "roboto",
                            //color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                      Container(
                        padding: EdgeInsets.only(left: 5),
                        child: Text("opsional",
                            style: TextStyle(
                              fontFamily: "roboto",
                              color: Colors.black87 ,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 5, bottom: 10),
                    child: TextField(
                        textInputAction: TextInputAction.search,
                        onSubmitted: (value) {},
                        onChanged: (text) {
                          setState(() {
                            notesSubmited=false;
                          });
                        },
                        controller: notesController,
                        readOnly: false,
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                        decoration: InputDecoration(
                          isDense: true,
                          filled: true,
                          fillColor: AppColors.greyFill,
                          contentPadding: EdgeInsets.only(top:12,bottom: 12, left: 10, right: 10),
                          hintText: "Contoh, tidak pakai bawang",
                          border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.black, width: 32.0),
                              borderRadius: BorderRadius.circular(5)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            borderSide: BorderSide(width: 1, color: Colors.black),
                          ),
                        )),
                  ),
                  notesSubmited==false ? Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        padding: const EdgeInsets.only(top:5),
                        //width: MediaQuery. of(context). size. width-200,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: 55,
                          child: RaisedButton(
                            onPressed: () {
                              setState(() {
                                notesSubmited=true;
                              });
                            },
                            color: AppColors.red,
                            child: Text("Simpan",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(5.0),
                              side: BorderSide(
                                width: 1,
                                color: AppColors.redYoung,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ) : Container()
                ],
              ),
            ),
            Container(
              color: AppColors.greyStroke,
              height: 10,
              width: double.infinity,
            ),

          ],
        ),
      ),
    );
  }
  Widget _paymentMethod() {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.black,
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Metode Pembayaran",
                        style: TextStyle(
                          fontFamily: "roboto",
                          //color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                      )),
                      if (_orderStore.orderPaymentTypeText != null)
                        Text(_orderStore.orderPaymentTypeText,
                          style: TextStyle(
                            fontFamily: "roboto",
                            //color: Colors.white,
                            fontSize: 14,
                        )), 
                    ],
                  ),
                  if (_orderStore.orderPaymentTypeText != null)
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Routes.select_payment_method);
                      },
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                        side: BorderSide(
                          width: 1,
                          color: AppColors.red,
                        ),
                      ),
                      child: Text(
                        'Ubah',
                        style: TextStyle(
                          color:AppColors.red,
                          fontWeight: FontWeight.bold,
                        )
                      )
                    )
                  else 
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Routes.select_payment_method);
                      },
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                        side: BorderSide(
                          width: 1,
                          color: AppColors.red,
                        ),
                      ),
                      child: Text(
                        'Pilih',
                        style: TextStyle(
                          color:AppColors.red,
                          fontWeight: FontWeight.bold,
                        )
                      )
                    )
                ],
              ),
            ),
            Container(
              color: AppColors.greyStroke,
              height: 10,
              width: double.infinity,
            ),

          ],
        ),
      ),
    );
  }
  Widget _detailPayment() {
    final transaction = _orderStore.countedTransaction;
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.black,
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Detail Payment",
                      style: TextStyle(
                        fontFamily: "roboto",
                        //color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Subtotal'),
                      Text("Rp."+Utils.formatRupiah(transaction.subtotal.toString()))
                    ],
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: transaction.taxesAndServices.length,
                    itemBuilder: (context, index) => _buildTaxAndServiceList(transaction.taxesAndServices[index]),
                    separatorBuilder: (context, index) => SizedBox(height: 5),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total'),
                      Text("Rp."+Utils.formatRupiah(transaction.totalPayment.toString()))
                    ],
                  ),
                  SizedBox(height: 20,),
                  FlatButton(
                    minWidth: double.infinity,
                    onPressed: () {
                      print('DEBUG >> do checkout');
                      _orderStore.checkout();
                    },
                    color: AppColors.red,
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    child: Text('Order', style: TextStyle(color:Colors.white),)
                  )
                ],
              ),
            ),
            Container(
              color: AppColors.greyStroke,
              height: 10,
              width: double.infinity,
            ),

          ],
        ),
      ),
    );
  }

  _dialogPlace(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => new AlertDialog(
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Container(
                 height: useSchedule ? 350 : 270,
                 width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      child:  Text("Info Makan di Tempat",
                          style: TextStyle(
                            fontFamily: "roboto",
                            //color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Gunakan Jadwal",
                            style: TextStyle(
                              fontFamily: "roboto",
                              //color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            )),
                        Switch(
                          value: useSchedule,
                          onChanged: (value) {
                            setState(() {
                              useSchedule = value;
                            });
                          },
                          activeTrackColor: Colors.redAccent,
                          activeColor: AppColors.redYoung,
                        )
                      ],
                    ),
                    useSchedule ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text("Jadwal",
                              style: TextStyle(
                                fontFamily: "roboto",
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Container(
                                padding: const EdgeInsets.only(top: 5, bottom: 10),
                                child: TextField(
                                    textInputAction: TextInputAction.search,
                                    onSubmitted: (value) {},
                                    controller: selectedDateController,
                                    readOnly: true,
                                    onTap: () {
                                      _selectDate(context);
                                    },
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                    decoration: InputDecoration(
                                      isDense: true,
                                      filled: true,
                                      fillColor: AppColors.greyFill,
                                      contentPadding: EdgeInsets.only(top:12,bottom: 12, left: 10, right: 10),
                                      hintText: "Contoh, tidak pakai bawang",
                                      border: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Colors.black, width: 32.0),
                                          borderRadius: BorderRadius.circular(5)),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(5)),
                                        borderSide: BorderSide(width: 1, color: Colors.black),
                                      ),
                                    )),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                width: 80,
                                child: DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                      isDense: true,
                                      filled: true,
                                      fillColor: AppColors.greyFill,
                                      contentPadding: EdgeInsets.only(top:8,bottom: 8, left: 5, right: 5),
                                      border: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.black),
                                      )),
                                  value: _selectedValueClock,
                                  items: _dataClock
                                      .map((data) => DropdownMenuItem<String>(
                                    child: Text(data.value),
                                    value: data.key,
                                  ))
                                      .toList(),
                                  onChanged: (String value) {
                                    setState((){
                                      _selectedValueClock = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ) : Container(),
                    Container(
                      child: Text("Pax",
                          style: TextStyle(
                            fontFamily: "roboto",
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 5, bottom: 10),
                      child: TextField(
                          textInputAction: TextInputAction.search,
                          onSubmitted: (value) {},
                          controller: paxController,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ], // Only numbers can be entered,
                          readOnly: false,
                          onTap: () {
                          },
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: AppColors.greyFill,
                            contentPadding: EdgeInsets.only(top:12,bottom: 12, left: 10, right: 10),
                            hintText: "",
                            border: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.black, width: 32.0),
                                borderRadius: BorderRadius.circular(5)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(width: 1, color: Colors.black),
                            ),
                          )),
                    ),
                    Container(
                      child: Text("Smoking / Non Smoking",
                          style: TextStyle(
                            fontFamily: "roboto",
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.only(top:5),
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: AppColors.greyFill,
                            contentPadding: EdgeInsets.only(top:8,bottom: 8, left: 10, right: 10),
                            border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.black),
                            )),
                        value: _selectedValueSmoking,
                        items: _dataSmoking
                            .map((data) => DropdownMenuItem<String>(
                          child: Text(data.value),
                          value: data.key,
                        ))
                            .toList(),
                        onChanged: (String value) {
                          setState((){
                            _selectedValueSmoking = value;
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top:15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              padding: EdgeInsets.all(5),
                              height: 50,
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width - 260,
                              child: RaisedButton(
                                onPressed: () {
                                  placeInfoController.text = "";
                                  initDialogPlace();
                                  Navigator.of(context).pop();
                                },
                                color: Colors.white,
                                child: Text("Batal",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.redYoung)),
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  side: BorderSide(
                                    width: 1,
                                    color: AppColors.redYoung,
                                  ),
                                ),
                              ),
                            ),
                         Container(
                              padding: EdgeInsets.all(5),
                              height: 50,
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width - 260,
                              child: RaisedButton(
                                onPressed: () {
                                  String txt;
                                  if (useSchedule){
                                    txt = selectedDateController.text.toString()+" "+_selectedValueClock+" "+paxController.text.toString()+" pax, "+getValueSmoking(_selectedValueSmoking);
                                  }else{
                                    txt = "Now, "+paxController.text.toString()+" pax, "+getValueSmoking(_selectedValueSmoking);
                                  }
                                  placeInfoController.text = txt;
                                  Navigator.of(context).pop();
                                },
                                color: AppColors.red,
                                child: Text("Ok",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  side: BorderSide(
                                    width: 1,
                                    color: AppColors.redYoung,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }
          ),

        ));
  }

  Widget _useVoucherCode() {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.black,
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Kode Voucher",
                      style: TextStyle(
                        fontFamily: "roboto",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery. of(context). size. width/1.5,
                        padding: const EdgeInsets.only(top: 15, bottom: 10),
                        child: TextField(
                            textInputAction: TextInputAction.search,
                            onSubmitted: (value) {},
                            controller: voucherCodeController,
                            readOnly: false,
                            onTap: () {

                            },
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                            decoration: InputDecoration(
                              isDense: true,
                              filled: true,
                              fillColor: AppColors.greyFill,
                              contentPadding: EdgeInsets.only(top:12,bottom: 12, left: 10, right: 10),
                              hintText: "Masukkan Kode Voucher",
                              border: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.black, width: 32.0),
                                  borderRadius: BorderRadius.circular(5)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                borderSide: BorderSide(width: 1, color: Colors.black),
                              ),
                            )),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        padding: const EdgeInsets.only(top:5),
                        //width: MediaQuery. of(context). size. width-200,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: 50,
                          child: RaisedButton(
                            onPressed: () {

                            },
                            color: AppColors.red,
                            child: Text("Gunakan",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(5.0),
                              side: BorderSide(
                                width: 1,
                                color: AppColors.redYoung,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: AppColors.greyStroke,
              height: 10,
              width: double.infinity,
            ),

          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 20,
            color: AppColors.red,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 30,
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  _header(),
                  _order(),
                  _addNew(),
                  _notes(),
                  _useVoucherCode(),
                  Observer(builder: (context) => _paymentMethod()),
                  Observer(builder: (context) => _detailPayment()),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTaxAndServiceList(TransactionHistoryTaxesAndServices item) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(item.name),
        Text('Rp.'+Utils.formatRupiah(item.amount.toString())),
      ],
    );
  }
}
