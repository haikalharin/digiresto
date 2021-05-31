import 'dart:async';
import 'dart:convert';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/models/order/static_banner_model.dart';
import 'package:boilerplate/models/order/user_promo_model.dart';
import 'package:boilerplate/models/transaction/transaction_history.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/map/map_store.dart';
import 'package:boilerplate/stores/order/order_store.dart';
import 'package:boilerplate/stores/transaction/transaction_store.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/utils/ctoast/ctoast.dart';
import 'package:boilerplate/utils/launch_url/launch_url.dart';
import 'package:boilerplate/utils/loading/loading.dart';
import 'package:boilerplate/widgets/Error_popup_widget.dart';
import 'package:boilerplate/widgets/list/home_history_order_widget.dart';
import 'package:boilerplate/widgets/list/home_hot_promo_widget.dart';
import 'package:boilerplate/widgets/list/home_track_order_widget.dart';
import 'package:boilerplate/widgets/list_item_widget.dart';
import 'package:boilerplate/widgets/progress_indicator_widget.dart';
import 'package:boilerplate/widgets/top_background_widget.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:geolocator/geolocator.dart';
class HomeContentScreen extends StatefulWidget {
  @override
  _HomeContentScreenState createState() => _HomeContentScreenState();
}

class _HomeContentScreenState extends State<HomeContentScreen> {
  PageController _controller = PageController(
    initialPage: 0,
  );
  int slideIndex = 0;
  Position _currentPosition;
  UserStore _userStore;
  OrderStore _orderStore;
  MapStore _mapStore;
  TransactionStore _transactionStore;

  bool _loadingHistory;
  bool _loadingHotPromo;
  bool _loadingPromo;
  bool _loadingTraceOrder;
  bool _loadingListAddress;
  @override
  void initState() {
    super.initState();
    _loadingHistory = false;
    _loadingHotPromo = false;
    _loadingPromo=false;
    _loadingTraceOrder=false;
    _loadingListAddress=false;
  }

  void getDataAfterPosition() {
    _orderStore.getStaticBanner({
      "location":
      _userStore.activeAddressLat + "," + _userStore.activeAddresslng,
      "page": "1",
      "filter": ""
    }).catchError((err) {
      print("error response: " + err.toString());
    });

    /*
    setState(() {

      _loadingPromo=true;
    });
    _userStore.getPromo({
      "location":
      _userStore.activeAddressLat + "," + _userStore.activeAddresslng,
      "page": "1",
      "filter": ""
    }).then((value) => {
      setState(() {
      _loadingPromo=false;
      })
    }).catchError((err) {
      setState(() {
        _loadingPromo=false;
      });
      print("error response: " + err.toString());
    });

    setState(() {
      _loadingHotPromo=true;
    });
    _orderStore
        .getHotPromo({
      "location":
      _userStore.activeAddressLat + "," + _userStore.activeAddresslng,
      "page": "1",
      "filter": ""
    })
        .then((res) {
      setState(() {
        _loadingHotPromo=false;
      });
    })
        .catchError((err) {
      setState(() {
        _loadingHotPromo=false;
      });
      print("error response: " + err.toString());
    });
    */
  }

  void goToAddLocation() {
    _userStore.setActiveHistoryScreen("home.address");
    Navigator.of(context).pushNamed(Routes.home_all_address);
  }


  _getCurrentLocation() async {

      setState(() {
        _loadingListAddress=true;
      });
      print("get current location");
      Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.best,locationPermissionLevel: GeolocationPermission.locationWhenInUse)
          .then((Position position) {
        print("lat: "+position.latitude.toString());
        print("lng:"+position.longitude.toString());
        setState(() {
          _currentPosition = position;
        });
        getGeocode();
        setState(() {
          _loadingListAddress=false;
        });
      }).catchError((e) {
        setState(() {
          _loadingListAddress=false;
        });
        ErrorPopupWidget.show(context, "Digiresto", "Lokasi saat tidak dapat terdeteksi,tentukan lokasi manual",
                () {
              {
                Navigator.pop(context);
                Navigator.of(context).pushNamed(Routes.home_add_location);
              }
            });
        print(e);
      });

  }

  void getGeocode() {
    setState(() {
      _loadingListAddress=true;
    });
    print("get address name");
    _mapStore.getGeocode({
      "latitude": _currentPosition.latitude.toString(),
      "longitude": _currentPosition.longitude.toString()
    }).then((res) {
      _userStore.setActiveAddress(res.formattedAddress.toString(),_currentPosition.latitude.toString(),_currentPosition.longitude.toString());
      print(res.formattedAddress.toString());
      setState(() {
        _loadingListAddress=false;
      });
    }).catchError((err) {
      setState(() {
        _loadingListAddress=false;
      });
      ErrorPopupWidget.showDioError(context, err, null);
      print("error response: " + err);
    });
  }
  void getBasicInformation() {

    _userStore.getProfile().then((value) async {
      setState(() {
        _loadingTraceOrder=true;
      });

      await _transactionStore.getOngoingTransaction().then((res) {
        print("ongoing transaction : ");
        print(res);
        setState(() {
          _loadingTraceOrder=false;
        });
      }).catchError((err) {
        print("error response: " + err.toString());
        ErrorPopupWidget.showDioError(context, err, null);
        setState(() {
          _loadingTraceOrder=false;
        });
      });

      setState(() {
        _loadingListAddress=true;
      });
      _userStore.getAddress(_userStore.profile.mobilePhone).then((res) async {
        setState(() {
          _loadingListAddress=false;
        });
        if (_userStore.activeAddress != "") {
        //if (_userStore.activeAddress == "x") {
          print(">>> _userStore.activeAddresslng is not null");
          getDataAfterPosition();
        } else {
          if (res.length == 0) {
            //get current location
            print(">>> address api  null");
            _getCurrentLocation();
          }else {
            print(">>> address api  is not null");
            bool defaultAddress = false;
            for (int i = 0; i < res.length; i++) {
              if (res[i].isDefault) {
                defaultAddress = true;
                print(">>> default address found");
                _userStore.setActiveAddress(
                    res[i].address, res[i].latitude, res[i].longitude);
                getDataAfterPosition();
              }
            }

            if (defaultAddress == false) {
              ErrorPopupWidget.show(
                  context, "Digiresto", "Please set your default Address", () {
                Navigator.pop(context);
                goToAddLocation();
              });
            }
          }
        }
      }).catchError((err) {
        setState(() {
          _loadingListAddress=false;
        });
        print("error response: " + err.toString());
      });

      /*
      setState(() {
        _loadingHistory=true;
      });
      await _transactionStore.getTransactionHistory().then((res) {
        print("transaction history : ");
        print(res);
        setState(() {
          _loadingHistory=false;
        });
      }).catchError((err) {
        setState(() {
          _loadingHistory=false;
        });
        print("error response: " + err.toString());
        ErrorPopupWidget.showDioError(context, err, null);
      });
      */
    }).catchError((err) {
      ErrorPopupWidget.showDioError(context, err, null);
    });

  }

  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // initializing stores
    _userStore = Provider.of<UserStore>(context, listen: true);
    _orderStore = Provider.of<OrderStore>(context, listen: true);
    _mapStore = Provider.of<MapStore>(context, listen: true);
    _transactionStore = Provider.of<TransactionStore>(context, listen: true);
    if (_userStore.profile == null && _userStore.balance == null)
      getBasicInformation();
  }

  Widget _promoList(StaticBanner data) {
    return GestureDetector(
      onTap: () {
        if (data.promoUrl != null || data.promoUrl != "") {
          Navigator.of(context).pushNamed(Routes.home_promo_url,
              arguments: {"url": data.promoUrl, "title": data.promoName});
        } else {
          print("other action");
        }
      },
      child: Container(
        padding: EdgeInsets.only(right: 5, left: 5),
        child: data.promoBanner!=null ? Image(
          image: data.promoBanner.substring(1, 4) == 'data:'
              ? MemoryImage(Base64Decoder().convert(data.promoBanner))
              : NetworkImage(data.promoBanner),
          fit: BoxFit.fill,
          height: 150,
          alignment: Alignment.topCenter,
        ) : Container()
      )
    );
  }


  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.fiber_manual_record,
              color: isCurrentPage ? AppColors.red : Colors.grey, size: 12),
        ],
      ),
    );
  }

  Widget _staticBanner() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 5, right: 5, bottom: 10),
          height: 150,
          width: double.infinity,
          child: PageView(
            scrollDirection: Axis.horizontal,
            onPageChanged: (index) {
              setState(() {
                slideIndex = index;
              });
            },
            controller: _controller,
            children: [
              for (int i = 0; i < _orderStore.listStaticBanner.length; i++) _promoList(_orderStore.listStaticBanner[i]) ,
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    for (int i = 0; i < _orderStore.listStaticBanner.length; i++)
                      i == slideIndex
                          ? _buildPageIndicator(true)
                          : _buildPageIndicator(false),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _searchBox() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(Routes.home_nearby_outlet);
      },
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 10,bottom: 10),
        height: 35,
        decoration: BoxDecoration(
          color: AppColors.grey[50],
          // border: Border.all(
          //   //color: Colors.black12,
          //   width: 1.5,
          //
          // ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Row(
          children: [
            Container(
                padding: EdgeInsets.only(left: 5, right: 5),
                child: Icon(
                  Icons.search,
                  color: AppColors.grey[100],
                  size: 18,
                )),
            Text("Temukan makanan favorit anda",
                style: TextStyle(
                  fontFamily: "roboto",
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                )),
          ],
        ),
      ),
    );
  }

  Widget _yourLocation() {
    return GestureDetector(
      onTap: () {
        _userStore.setActiveHistoryScreen("home.address");
        Navigator.of(context).pushNamed(Routes.home_all_address);
      },
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            ImageIcon(AssetImage(Assets.iconMarkerMove),
                size: 24, color: AppColors.red),
            Container(
              width: MediaQuery.of(context).size.width - 50,
              padding: EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text("Lokasi Kamu",
                            style: TextStyle(
                              fontFamily: "roboto",
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            )),
                        new Icon(Icons.keyboard_arrow_down,
                            color: AppColors.red, size: 28.0),
                        _loadingListAddress==true ? CustomProgressIndicatorWidget(size:15) : Container(),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      _userStore.activeAddress.toString(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: "roboto",
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _discount() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(Routes.home_nearby_outlet);
            },
            child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: new AssetImage(Assets.iconHomeNearby),
                      height: 60,
                    ),

                    Text("Terdekat",style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: AppColors.red),
                    )
                  ],
                ),
                margin: EdgeInsets.only(left: 10, right: 5),
                height: 100,
                width: MediaQuery.of(context).size.width/2-20,
                decoration: BoxDecoration(
                  //color: Colors.white,
                  borderRadius: BorderRadius.circular(7.0),
                )),
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(Routes.home_digidiscount);
            },
            child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: new AssetImage(Assets.iconHomeDiscount),
                      height: 60,
                    ),

                    Text("DigiDiscount",style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: AppColors.red),
                    )
                  ],
                ),
                margin: EdgeInsets.only(left: 5, right: 10),
                height: 100,
                width: MediaQuery.of(context).size.width/2-20,
                decoration: BoxDecoration(
                  //color: AppColors.cream,
                  //color: Colors.white,
                  borderRadius: BorderRadius.circular(7.0),
                )),
          ),
        ],
      ),
    );
  }
  Widget _hotPromo(){
    return  _orderStore.listHotPromo != null || _loadingHotPromo==true ? Container(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: GestureDetector(
                      child: Text(
                        "Hot promo",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      onTap: () {
                      }),
                ),
                _loadingHotPromo==true ? CustomProgressIndicatorWidget(size:20) : Container(),
              ],
            ),

            Container(
              padding: EdgeInsets.only(right: 10),
              child: GestureDetector(
                  child: Text(
                    "See all",
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: AppColors.red),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(Routes.home_all_hot_promo);
                  }),
            )
          ]
        ),
          //Text(_orderStore.listHotPromo.length.toString()),
          _loadingHotPromo==true ? Container() : ListHomeHotPromoWidget(
            runAction: _orderStore.setOrderParameter,
            height:  200.0,
            data: _orderStore.listHotPromo,
            scrollDirection: Axis.horizontal,
          )
          ],
      )
    )  : Container();
  }

  Widget _historyOrder(){
    return _transactionStore.listTransactionHistory != null || _loadingHistory==true ? Container(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: GestureDetector(
                        child: Text(
                          "Pesan Lagi ",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        onTap: () {
                        }),
                  ),
                  _loadingHistory ? CustomProgressIndicatorWidget(size: 20,) : Container()
                ]
            ),
            _loadingHistory==true ? Container() : ListHomeHistoryOrderWidget(
              runAction: _orderStore.setOrderParameter,
              height:  320.0,
              data: _transactionStore.listTransactionHistory,
              scrollDirection: Axis.horizontal,
            )
            //ListItem(entries: entries,colorCodes: colorCodes),
          ],
        )
    ) : Container();
  }

  Widget _trackOrder(){
    return _transactionStore.listOngoingTransaction.isNotEmpty || _loadingTraceOrder == true ? Container(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: GestureDetector(
                        child: Text(
                          "Lacak orderan anda",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                    ),
                  ),
                  _loadingTraceOrder==true ? CustomProgressIndicatorWidget(size:20) : Container(),
                ]
            ),
            Container(height: 5,),
            _loadingTraceOrder==true ? Container() : HomeTrackOrderWidget(
              runAction: (TransactionHistory trx){
                Navigator.of(context).pushNamed(Routes.history_detail, arguments: trx).then((value) => setState(() => {}));
              },
              height:  90.0,
              data: _transactionStore.listOngoingTransaction,
              scrollDirection: Axis.horizontal,
            )
            //ListItem(entries: entries,colorCodes: colorCodes),
          ],
        )
    ) : Container();
  }

  Widget _singleAdvertisement(){
    return Container(
        height: 200,
        child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7.0),
                ),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0),topRight: Radius.circular(8.0)),
                      child: Image(
                        image: AssetImage(Assets.bgHomeMitra),
                        fit: BoxFit.fill,
                        width: double.infinity,
                        height: 96,
                        alignment: Alignment.center,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top:5,left: 10),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Bergabubng menjadi Mitra",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontFamily: "roboto",
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top:5,left: 10),
                              width: MediaQuery. of(context). size. width/2,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Terima pembayaran nontunai dan melakukan pengiriman instant menjadi lebih mudah",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontFamily: "roboto",
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          child: SizedBox(
                            width: 130,
                            height: 45,
                            child: RaisedButton(
                                onPressed: () {
                                  LaunchUrl.run("https://play.google.com/store/apps/details?id=id.damcorp.digimitra");
                                },
                                color: AppColors.redYoung,
                                child: Text("Selengkapnya",
                                    style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.w500,color: Colors.white)),
                                shape: RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(25.0))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: <Widget>[
            TopBackgound(backgroundColor: AppColors.red),
            _yourLocation(),
            _searchBox(),
          ],
        ),
        Container(
            height: MediaQuery.of(context).size.height / 1.4,
            child: SingleChildScrollView(
              child: Column(
          children: [
              _orderStore.listStaticBanner != null ? _staticBanner() : Container(),
              _trackOrder(),
              _discount(),
              //_hotPromo(),
              //_historyOrder(),
              _singleAdvertisement(),
          ],
        ),
            )),
      ],
    );
  }
}
