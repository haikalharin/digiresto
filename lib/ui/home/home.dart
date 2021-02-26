import 'package:boilerplate/data/network/apis/user/user_api.dart';
import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/language/language_store.dart';
import 'package:boilerplate/stores/post/post_store.dart';
import 'package:boilerplate/stores/theme/theme_store.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/ui/home/home_navigation.dart';
import 'package:boilerplate/utils/loading/loading.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
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
  Loading _loading = new Loading();

  @override
  void initState() {
    super.initState();
  }

  void loadingAdd(){
    setState(() {
      _loading.add();
    });
  }

  void loadingDelete(){
    setState(() {
      _loading.delete();
    });
  }

  void getBasicInformation(){
      loadingAdd();
      _userStore.getProfile().then((value) {
        loadingDelete();

        loadingAdd();
        _userStore.getAddress(_userStore.profile.mobilePhone).then((res) {
          //if (_userStore.activeAddress!=null){
            for(int i = 0; i< res.length; i++) {
              if (res[i].isDefault) {
                _userStore.setActiveAddress(res[i].address, res[i].latitude, res[i].longitude);
              }
            }
          //}
          loadingDelete();
        });
      });

      loadingAdd();
      _userStore.getBalance().then((value) => {
        loadingDelete()
      });

      loadingAdd();
      _userStore.getPromo({
        "location": "-6.17494964,106.82605807",
        "page": "1",
        "filter": ""
      }).then((value) => {
        loadingDelete()
      });


  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // initializing stores
    _languageStore = Provider.of<LanguageStore>(context);
    _themeStore = Provider.of<ThemeStore>(context);
    _postStore = Provider.of<PostStore>(context);
    _userStore = Provider.of<UserStore>(context,listen: true);

    // if (_userStore.profile==null){
    //   getBasicInformation();
    // }
    // if (_userStore.balance==null){
    //   getBasicInformation();
    // }
    if (_userStore.profile==null && _userStore.balance==null) getBasicInformation();

  }
  @override
  Widget build(BuildContext context) {
    if (_loading.counter!=0){
      Loading.show();
    }else{
      Loading.dismiss();
    }
    return Scaffold(
        body: HomeNavigationScreen()
    );
  }
}
