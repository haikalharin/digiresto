import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/utils/loading/loading.dart';
import 'package:digiresto/presentation/widgets/top_background_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeNearbyOutletScreen extends StatefulWidget {
  @override
  _HomeNearbyOutletScreenState createState() => _HomeNearbyOutletScreenState();
}

class _HomeNearbyOutletScreenState extends State<HomeNearbyOutletScreen> {
  final searchController = TextEditingController();
  // UserStore? _userStore;
  // OrderStore? _orderStore;
  var listOutlet = [];
  int page = 1;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // _userStore = Provider.of<UserStore>(context);
    // _orderStore = Provider.of<OrderStore>(context);
    getOutletByLocation(searchController.text, 1);
  }

  void loadMoreOutletByLocation() {
    getOutletByLocation(searchController.text, page + 1);
  }

  void getOutletByLocation(String search, int pageParam) {
    Loading.show();
    // _orderStore?.getOutletByLocation({
    //   "location":
    //       _userStore!.activeAddressLat! + "," + _userStore!.activeAddresslng!,
    //   "page": pageParam,
    //   "filter": search,
    // }).then((res) {
    //   print("sukses get outlet");
    //   if (pageParam > page) {
    //     setState(() {
    //       page += 1;
    //       listOutlet.addAll(res);
    //     });
    //   } else {
    //     setState(() {
    //       page = 1;
    //       listOutlet = res;
    //     });
    //   }
    //   Loading.dismiss();
    // }).catchError((err) {
    //   Loading.dismiss();
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
        padding: const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 5),
        child: TextField(
            textInputAction: TextInputAction.search,
            onSubmitted: (value) {
              getOutletByLocation(searchController.text, 1);
            },
            controller: searchController,
            onTap: () {
              print("open popup");
            },
            style: TextStyle(
              fontSize: 14.0,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.greyInput,
              contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
              prefixIcon: Icon(Icons.search),
              hintText: "Temukan resto favorit anda",
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TopBackgound(backgroundColor: AppColors.red),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new IconButton(
                    icon: new Icon(Icons.arrow_back_outlined,
                        color: Colors.black, size: 28.0),
                    onPressed: () {
                      Get.back();
                    }),
                Text("Search",
                    style: TextStyle(
                      fontFamily: "roboto",
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center),
                Container(
                  width: 30,
                )
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
            // (listOutlet.length > 0)
            //     ? ListNearbyOutletWidget(
            //         loadMoreAction: loadMoreOutletByLocation,
            //         runAction: _orderStore!.setOrderParameter,
            //         height: MediaQuery.of(context).size.height / 1.3,
            //         data: listOutlet,
            //         scrollDirection: Axis.vertical,
            //       )
            //     : Container(),
          ],
        ),
      ),
    );
  }
}
