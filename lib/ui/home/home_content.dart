import 'dart:convert';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/models/user/user_get_address_model.dart';
import 'package:boilerplate/models/user/user_promo_model.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/utils/ctoast/ctoast.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:image/image.dart' as ImageProcess;
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
  var listPromo = [];
  var totalPromo = 0;
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
    if (_userStore.listPromo != null){
      setState(() {
        listPromo = _userStore.listPromo;
      });
    }
    getPromo();
  }

  Widget _promoList(UserPromo data) {
    return GestureDetector(
      onTap: (){
        if (data.promoUrl!=null || data.promoUrl !=""){ //open webview url
            //home_promo_url
            Navigator.of(context).pushNamed(Routes.home_promo_url,arguments: {
              "url": data.promoUrl,
              "title": data.promoName
            });
        }else{
          print("other action");
        }
      },
      child: Container(
        child: Image(
          //image: NetworkImage(data.promoBanner),
          image: data.promoBanner.substring(1, 4)=='data:' ? MemoryImage(Base64Decoder().convert(data.promoBanner)) : NetworkImage(data.promoBanner)  ,
          fit: BoxFit.fill,
          //height: 150,
          alignment: Alignment.topCenter,
        ),
      ),
    );
  }

  void getPromo() {
    _userStore.getPromo({
      "location": "-6.17494964,106.82605807",
      "page": "1",
      "filter": ""
    }).then((res) {
      setState(() {
        listPromo = res;
      });
      print(res[0].promoName);
    }).catchError((err) {
      print("error response: " + err.toString());
    });
  }

  Widget _topBackground() {
    return Container(
      width: double.infinity,
      height: 30,
      color: AppColors.red,
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

  Widget _promo() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          height: 150,
          width: double.infinity,
          child: PageView(
            onPageChanged: (index) {
              setState(() {
                slideIndex = index;
              });
            },
            controller: _controller,
            children: [
              for (int i = 0; i < listPromo.length; i++) _promoList(listPromo[i]),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top:5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    for (int i = 0; i < listPromo.length; i++)
                      i == slideIndex
                          ? _buildPageIndicator(true)
                          : _buildPageIndicator(false),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                child: GestureDetector(
                    child: Text("Lihat semua promo",
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: AppColors.red),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(Routes.home_all_promo);
                    }),
              )
            ],
          ),
        )
      ],
    );
  }
  Widget _searchBox(){
    return GestureDetector(
      onTap: (){
        print("open box");
      },
      child: Container(
        margin: EdgeInsets.only(left:10,right:10,top:10),
        height: 35,
        decoration: BoxDecoration(
            color: AppColors.greyStroke,
            border: Border.all(
              color: Colors.grey,
              width: 1.5,

            ),
          borderRadius: BorderRadius.circular(5.0),),
        child: Row(
          children: [
            Container(
                padding: EdgeInsets.only(left:5, right:5),
                child: Icon(Icons.search,color: Colors.grey)),
            Text("Temukan makanan favorit anda",style: TextStyle(
              fontFamily: "roboto",
              fontSize: 12,
              fontWeight: FontWeight.normal,
            )),
          ],
        ),
      ),
    );
    // return Theme(
    //   data: Theme.of(context).copyWith(
    //     primaryColor: Colors.black12,
    //   ),
    //   child: Padding(
    //     padding: const EdgeInsets.only(left:10,right:10,top:10),
    //     child: TextField(
    //         readOnly: true,
    //         onTap: (){
    //           print("open popup");
    //         },
    //         style: TextStyle(
    //           fontSize: 16.0,
    //           color: Colors.blueAccent,
    //         ),
    //         decoration: InputDecoration(
    //             filled: true,
    //             fillColor: AppColors.greyStroke,
    //             contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
    //             prefixIcon: Icon(Icons.search),
    //             hintText: "Temukan makanan favorit anda",
    //             border: OutlineInputBorder(
    //                 borderSide: BorderSide(color: Colors.black12, width: 32.0),
    //                 borderRadius: BorderRadius.circular(5.0)),
    //             focusedBorder: OutlineInputBorder(
    //                 borderSide: BorderSide(color: Colors.black12, width: 32.0),
    //                 borderRadius: BorderRadius.circular(5.0)))),
    //   ),
    // );
  }
  Widget _yourLocation() {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Text("Lokasi Kamu",style: TextStyle(
                  fontFamily: "roboto",
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                )),
                GestureDetector(
                    child: new Icon(Icons.keyboard_arrow_down,
                        color: AppColors.red, size: 28.0),
                    onTap: () {
                      Navigator.of(context).pushNamed(Routes.home_all_address);
                    })
              ],
            ),
          ),
          GestureDetector(
              child: Container(
                child: Row(
                  children: [
                    ImageIcon(AssetImage(Assets.iconMarkerMove),
                        size: 18, color: AppColors.red),
                    Flexible(
                      child: Text(_userStore.activeAddress,
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
              onTap: () {
                Navigator.of(context).pushNamed(Routes.home_all_address);
              })
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            _topBackground(),
            _yourLocation(),
            _searchBox(),
            listPromo.length > 0 ? _promo() : Container(),
          ],
        ));
  }
}
