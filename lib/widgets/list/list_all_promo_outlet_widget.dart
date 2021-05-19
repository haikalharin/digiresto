import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/utils/random/random_images.dart';
import 'package:boilerplate/widgets/order_method_widget.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class ListAllPromoWidget extends StatefulWidget {
  final List<dynamic> data; // = <String>['A', 'B', 'C','D', 'E', 'F'];
  final Axis scrollDirection;
  final height;
  final void Function() loadMoreAction;
  final void Function(Map<String, dynamic>) runAction;
  const ListAllPromoWidget({Key key, this.data,this.scrollDirection= Axis.vertical,this.height,this.loadMoreAction,this.runAction})
      : super(key: key);

  @override
  _ListAllPromoWidgetState createState() => _ListAllPromoWidgetState();
}

class _ListAllPromoWidgetState extends State<ListAllPromoWidget> {
  final ScrollController _scrollController = new ScrollController();
  UserStore _userStore;

  void didChangeDependencies() {
    super.didChangeDependencies();
    _userStore = Provider.of<UserStore>(context);
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        widget.loadMoreAction();
        /*getDetailOutlet(
            _orderStore.orderOutletName, searchName, filterCategory, page + 1);*/
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    OrderMethodPopup _orderMethodPopup = new OrderMethodPopup();
    return Container(
        height: widget.height,
        child: ListView.builder(
            controller: _scrollController,
            scrollDirection: widget.scrollDirection,
            shrinkWrap: true, // new line
            //padding: const EdgeInsets.all(8),
            itemCount: widget.data.length,
            itemBuilder: (BuildContext context, int index) {
              _userStore.setRandomCacheImage(widget.data[index].promoIcon,widget.data[index].outletId.toString());
              String defaultImage = _userStore.getRandomCacheImage(widget.data[index].outletId.toString());
              return GestureDetector(
                onTap: (){
                  if (widget.data[index].outlet["isOwnerLoggedIn"]){
                    _orderMethodPopup.showMyDialog(context,{
                      "name": widget.data[index].outlet["name"],
                      "merchantName": widget.data[index].merchant["name"].toString(),
                      "orderMethod": widget.data[index].outlet["orderMethod"]["defaultList"],
                      "detailName": widget.data[index].outlet["detail"]["name"],
                    },widget.runAction);
                  }
                },
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      padding: const EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                        //color: Colors.amber[100],
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      height: 96,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.only(right: 5),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                  child: Image(
                                    image: RandomImages.getImageUrlDefault(widget.data[index].promoIcon,defaultImage),
                                    fit: BoxFit.fill,
                                    width: 96,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              !widget.data[index].outlet["isOwnerLoggedIn"] ? ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                child: Container(
                                  width: 96,
                                  color: Colors.black54,
                                  child: Center(
                                      child: Text("Tutup",
                                          style: TextStyle(
                                            fontFamily: "roboto",
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          textAlign: TextAlign.left)
                                  ),
                                ),
                              ) : Container(),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.only(top:5),
                                width: MediaQuery. of(context). size. width-160,
                                child: Text(widget.data[index].outlet["detail"]["name"].toString(),
                                    softWrap: false,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontFamily: "roboto",
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.left),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:5),
                                child: Text(widget.data[index].merchant["name"].toString(),
                                    style: TextStyle(
                                      fontFamily: "roboto",
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    textAlign: TextAlign.left),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:5),
                                child: Text(widget.data[index].distance["text"],
                                    style: TextStyle(
                                      fontFamily: "roboto",
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    textAlign: TextAlign.left),
                              ),
                              widget.data[index].promoCode != null ? Row(children: [
                                ImageIcon(
                                  AssetImage(Assets.iconVoucher),
                                  color: AppColors.red, size: 20,),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    widget.data[index].promoCode,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontFamily: "roboto",
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],) : Container(),

                            ],
                          ),
                        ],
                      ),
                      //child: Center(child: Text('Entry ${data[index].id.toString()}')),
                    ),
                    Container(
                        height: 1,
                        width: double.infinity,
                        color: AppColors.greyStroke
                    )
                  ],
                ),
              );
            }
        )
    );
  }
}
