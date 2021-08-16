import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAllHotPromoScreen extends StatefulWidget {
  @override
  _HomeAllHotPromoScreenState createState() => _HomeAllHotPromoScreenState();
}

class _HomeAllHotPromoScreenState extends State<HomeAllHotPromoScreen> {
  goBack(BuildContext context) {
    Get.back();
  }

  final searchController = TextEditingController();
  // UserStore? _userStore;
  // OrderStore? _orderStore;
  var listAllPromo = [];
  int page = 1;

  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // _userStore = Provider.of<UserStore>(context);
    // _orderStore = Provider.of<OrderStore>(context);
    // if (_orderStore.listHotPromo != null) {
    //   setState(() {
    //     listAllPromo = _orderStore.listHotPromo;
    //   });
    // }else{
    getHotPromo(searchController.text.toString(), 1);
    //}
  }

  void loadMoreOutletByLocation() {
    getHotPromo(searchController.text.toString(), page + 1);
  }

  void getHotPromo(String search, int pageParam) {
    // _orderStore?.getHotPromo({
    //   "location":
    //       _userStore!.activeAddressLat! + "," + _userStore!.activeAddresslng!,
    //   "page": pageParam.toString(),
    //   "filter": search.toString()
    // }).then((res) {
    //   if (pageParam > page) {
    //     setState(() {
    //       page += 1;
    //       listAllPromo.addAll(res);
    //     });
    //   } else {
    //     setState(() {
    //       page = 1;
    //       listAllPromo = res;
    //     });
    //   }
    // }).catchError((err) {
    //   print(err.toString());
    //   ErrorPopupWidget.showDioError(context, err, null);
    // });
  }

  Widget _search() {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.grey,
      ),
      child: Container(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
        child: TextField(
            textInputAction: TextInputAction.search,
            onSubmitted: (value) {
              getHotPromo(searchController.text, 1);
            },
            controller: searchController,
            readOnly: false,
            onTap: () {},
            style: TextStyle(
              fontSize: 14.0,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.greyInput,
              contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
              prefixIcon: Icon(Icons.search),
              hintText: "Temukan promo anda",
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.greyInput, width: 32.0),
                  borderRadius: BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.greyInput, width: 32.0),
                  borderRadius: BorderRadius.circular(10)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: Colors.white),
              ),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new IconButton(
                    icon: new Icon(Icons.arrow_back_outlined,
                        color: Colors.black, size: 28.0),
                    onPressed: () {
                      //getOutletByLocation();
                      Get.back();
                    }),
                Text("Hot Promo",
                    style: TextStyle(
                      fontFamily: "roboto",
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center),
                Container()
              ],
            ),
            Container(
              height: 10,
              decoration: BoxDecoration(
                color: AppColors.grey[50],
                borderRadius: BorderRadius.circular(0),
                border: Border.all(
                  color: Colors.black12,
                  width: 0.5,
                ),
              ),
            ),
            _search(),
            // ListAllPromoWidget(
            //   runAction: _orderStore!.setOrderParameter,
            //   loadMoreAction: loadMoreOutletByLocation,
            //   height: MediaQuery.of(context).size.height / 1.4,
            //   data: listAllPromo,
            //   scrollDirection: Axis.vertical,
            // ),
          ],
        ),
      ),
    );
  }
}
