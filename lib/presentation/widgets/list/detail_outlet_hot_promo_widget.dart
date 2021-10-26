import 'package:digiresto/domain/core/constants/assets.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/utils/random/random_images.dart';
import 'package:digiresto/domain/entity/order/promo_outlet_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DetailOutletHotPromoWidget extends StatefulWidget {
  final List<PromoOutletDataResponse>
      data; // = <String>['A', 'B', 'C','D', 'E', 'F'];
  final Axis scrollDirection;
  final height;
  const DetailOutletHotPromoWidget(
      {Key? key,
      required this.data,
      this.scrollDirection = Axis.vertical,
      this.height})
      : super(key: key);

  @override
  _DetailOutletHotPromoWidgetState createState() =>
      _DetailOutletHotPromoWidgetState();
}

class _DetailOutletHotPromoWidgetState
    extends State<DetailOutletHotPromoWidget> {
  // UserStore? _userStore;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //  _userStore = Provider.of<UserStore>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topLeft,
        height: widget.height,
        child: ListView.builder(
            scrollDirection: widget.scrollDirection,
            shrinkWrap: true, // new line
            padding: const EdgeInsets.all(8),
            itemCount: widget.data.length,
            itemBuilder: (BuildContext context, int index) {
              // _userStore?.setRandomCacheImage(widget.data[index]["img"],
              //     widget.data[index]["id"].toString());
              // String defaultImage = _userStore!
              //     .getRandomCacheImage(widget.data[index]["id"].toString());
              return Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7.0),
                    border: Border.all(
                      color: AppColors
                          .greyStroke, //                   <--- border color
                      width: 1.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1,
                          color: AppColors.greyStroke,
                          offset: Offset(1, 3))
                    ] // make rounded corner of b
                    ),
                width: 150,
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0)),
                      child: Image(
                        errorBuilder: (context, obj, stacktrace) {
                          return Image(
                            height: 150,
                            width: 96,
                            image: RandomImages.getImage(),
                          );
                        },
                        image: RandomImages.getImageUrlDefault(
                            widget.data[index].icon, ""),
                        fit: BoxFit.fill,
                        width: 150,
                        height: 96,
                        alignment: Alignment.center,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 5, top: 5),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.data[index].name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: "roboto",
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    widget.data[index].voucher != null
                        ? Container(
                            padding: const EdgeInsets.only(left: 5, top: 5),
                            child: Row(
                              children: [
                                ImageIcon(
                                  AssetImage(AppAssets.iconVoucher),
                                  color: AppColors.red,
                                  size: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  width: 110,
                                  child: Text(
                                    widget.data[index].voucher!.code,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontFamily: "roboto",
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        : Container(),
                  ],
                ),
              );
            }));
  }
}
