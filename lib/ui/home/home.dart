import 'package:boilerplate/data/network/apis/user/user_api.dart';
import 'package:boilerplate/data/network/constants/response_mapping.dart';
import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/language/language_store.dart';
import 'package:boilerplate/stores/order/order_store.dart';
import 'package:boilerplate/stores/post/post_store.dart';
import 'package:boilerplate/stores/theme/theme_store.dart';
import 'package:boilerplate/stores/transaction/transaction_store.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/ui/home/home_navigation.dart';
import 'package:boilerplate/utils/loading/loading.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:boilerplate/widgets/Error_popup_widget.dart';
import 'package:boilerplate/widgets/progress_indicator_widget.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:material_dialog/material_dialog.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //stores:---------------------------------------------------------------------
  PostStore _postStore;
  ThemeStore _themeStore;
  LanguageStore _languageStore;
  UserStore _userStore;
  OrderStore _orderStore;
  TransactionStore _transactionStore;

  Loading _loading = new Loading();
  @override
  void initState() {
    super.initState();
  }

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

  void getBasicInformation() {
    loadingAdd();
    _userStore.getProfile().then((value) async {
      loadingDelete();
      loadingAdd();
      _userStore.getAddress(_userStore.profile.mobilePhone).then((res) {
        for (int i = 0; i < res.length; i++) {
          if (res[i].isDefault) {
            print("default address found");
            _userStore.setActiveAddress(
                res[i].address, res[i].latitude, res[i].longitude);
            _orderStore.getStaticBanner({
              "location": _userStore.activeAddressLat +
                  "," +
                  _userStore.activeAddresslng,
              "page": "1",
              "filter": ""
            }).catchError((err) {
              print("error response: " + err.toString());
            });
            _userStore.getPromo({
              "location": _userStore.activeAddressLat +
                  "," +
                  _userStore.activeAddresslng,
              "page": "1",
              "filter": ""
            }).catchError((err) {
              print("error response: " + err.toString());
            });

            _orderStore
                .getHotPromo({
                  "location": _userStore.activeAddressLat +
                      "," +
                      _userStore.activeAddresslng,
                  "page": "1",
                  "filter": ""
                })
                .then((res) {
                  loadingDelete();
                })
                .catchError((err) {
                  loadingDelete();
                  print("error response: " + err.toString());
                });
          }
        }
      }).catchError((err) {
        loadingDelete();
        print("error response: " + err.toString());
      });

      loadingAdd();
      await _transactionStore.getTransactionHistory().then((res) {
        print("transaction history : ");
        print(res);
        loadingDelete();
      }).catchError((err) {
        loadingDelete();
        print("error response: " + err.toString());
        ErrorPopupWidget.showDioError(context,err,null);
      });

    }).catchError((err) {
      loadingDelete();
      ErrorPopupWidget.showDioError(context,err,null);
    });

    // loadingAdd();
    // _userStore.getBalance().then((value) => {loadingDelete()});

    // loadingAdd();
    // _userStore.getPromo({
    //   "location": "-6.17494964,106.82605807",
    //   "page": "1",
    //   "filter": ""
    // }).then((value) => {
    //   loadingDelete()
    // });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // initializing stores
    _languageStore = Provider.of<LanguageStore>(context);
    _themeStore = Provider.of<ThemeStore>(context);
    _postStore = Provider.of<PostStore>(context);
    _userStore = Provider.of<UserStore>(context, listen: true);
    _orderStore = Provider.of<OrderStore>(context, listen: true);
    _transactionStore = Provider.of<TransactionStore>(context, listen: true);
    //_userStore.logoutSessionLogin();
    // if (_userStore.profile==null){
    //   getBasicInformation();
    // }
    // if (_userStore.balance==null){
    //   getBasicInformation();
    // }
    if (_userStore.profile == null && _userStore.balance == null)
      getBasicInformation();
  }

  @override
  Widget build(BuildContext context) {
    if (_loading.counter != 0) {
      Loading.show();
    } else {
      Loading.dismiss();
    }
    return Scaffold(body: HomeNavigationScreen());
  }
}
