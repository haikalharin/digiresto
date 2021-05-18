import 'dart:convert';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/models/order/static_banner_model.dart';
import 'package:boilerplate/models/order/user_promo_model.dart';
import 'package:boilerplate/models/transaction/transaction_history.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/order/order_store.dart';
import 'package:boilerplate/stores/transaction/transaction_store.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/utils/launch_url/launch_url.dart';
import 'package:boilerplate/utils/loading/loading.dart';
import 'package:boilerplate/widgets/list/home_history_order_widget.dart';
import 'package:boilerplate/widgets/list/home_hot_promo_widget.dart';
import 'package:boilerplate/widgets/list/home_track_order_widget.dart';
import 'package:boilerplate/widgets/list_item_widget.dart';
import 'package:boilerplate/widgets/top_background_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeContentScreen extends StatefulWidget {
  @override
  _HomeContentScreenState createState() => _HomeContentScreenState();
}

class _HomeContentScreenState extends State<HomeContentScreen> {
  PageController _controller = PageController(
    initialPage: 0,
  );
  int slideIndex = 0;

  UserStore _userStore;
  OrderStore _orderStore;
  TransactionStore _transactionStore;

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
    _transactionStore = Provider.of<TransactionStore>(context, listen: true);
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
    return  _orderStore.listHotPromo != null ? Container(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
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
          ListHomeHotPromoWidget(
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
    return _transactionStore.listTransactionHistory != null ? Container(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: GestureDetector(
                        child: Text(
                          "Pesan Lagi",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        onTap: () {
                        }),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: GestureDetector(
                        child: Text(
                          "",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: AppColors.red),
                        ),
                        onTap: () {
                        }),
                  )
                ]
            ),
            ListHomeHistoryOrderWidget(
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
    return _transactionStore.listOngoingTransaction != null ? Container(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: GestureDetector(
                        child: Text(
                          "",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: AppColors.red),
                        ),
                        onTap: () {

                        }),
                  )
                ]
            ),
            Container(height: 5,),
            HomeTrackOrderWidget(
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
              _hotPromo(),
              _historyOrder(),
              _singleAdvertisement(),
          ],
        ),
            )),
      ],
    );
  }
}
