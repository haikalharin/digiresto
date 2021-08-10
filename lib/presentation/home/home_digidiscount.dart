import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/utils/loading/loading.dart';
import 'package:digiresto/presentation/widgets/top_background_widget.dart';
import 'package:flutter/material.dart';

class HomeDigidiscountScreen extends StatefulWidget {
  @override
  _HomeDigidiscountScreenState createState() => _HomeDigidiscountScreenState();
}

class _HomeDigidiscountScreenState extends State<HomeDigidiscountScreen> {
  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  final searchController = TextEditingController();
  // UserStore? _userStore;
  // OrderStore? _orderStore;
  var listPromoOutlet = [];
  int page = 1;

  @override
  void setState(fn) {
    super.setState(fn);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // _userStore = Provider.of<UserStore>(context);
    // _orderStore = Provider.of<OrderStore>(context);

    // if (_orderStore?.listPromoOutlet == null) {
    //   getPromoOutlet("", 1);
    // } else {
    //   listPromoOutlet = _orderStore!.listPromoOutlet!;
    // }
  }

  void getPromoOutlet(String search, int pageParam) {
    Loading.show();
    // _orderStore?.getPromoOutlet({
    //   "location":
    //       _userStore!.activeAddressLat! + "," + _userStore!.activeAddresslng!,
    //   "page": pageParam.toString(),
    //   "filter": search
    // }).then((res) {
    //   Loading.dismiss();
    //   setState(() {
    //     listPromoOutlet = res;
    //   });
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
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
        child: TextField(
            textInputAction: TextInputAction.search,
            onSubmitted: (value) {
              getPromoOutlet(searchController.text, 1);
            },
            controller: searchController,
            readOnly: false,
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
        //padding: EdgeInsets.only(top:25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TopBackgound(backgroundColor: Colors.red),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new IconButton(
                    icon: new Icon(Icons.arrow_back_outlined,
                        color: Colors.black, size: 28.0),
                    onPressed: () {
                      //getOutletByLocation();
                      Navigator.pop(context);
                    }),
                Text("DigiDiskon",
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
            //_search(),
            // ListDigidiscountWidget(
            //   runAction: _orderStore!.setOrderParameter,
            //   height: MediaQuery.of(context).size.height / 1.2,
            //   data: listPromoOutlet,
            //   scrollDirection: Axis.vertical,
            // ),
          ],
        ),
      ),
    );
  }
}
