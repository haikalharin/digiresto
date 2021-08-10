import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListProductVariant extends StatefulWidget {
  final List<dynamic> data;
  final Axis scrollDirection;
  final void Function(dynamic) runAction;
  const ListProductVariant(
      {Key? key,
      required this.data,
      this.scrollDirection = Axis.vertical,
      required this.runAction})
      : super(key: key);

  @override
  _ListProductVariantState createState() => _ListProductVariantState();
}

class _ListProductVariantState extends State<ListProductVariant> {
//  UserStore? _userStore;
  void didChangeDependencies() {
    super.didChangeDependencies();
//    _userStore = Provider.of<UserStore>(context);
  }

  @override
  Widget build(BuildContext context) {
    double height = (widget.data.length == 1)
        ? MediaQuery.of(context).size.height - 350
        : MediaQuery.of(context).size.height - 280;

    return Container(
        height: height,
        width: MediaQuery.of(context).size.width - 100,
        child: ListView.builder(
            scrollDirection: widget.scrollDirection,
            shrinkWrap: true, // new line
            padding: const EdgeInsets.all(5),
            itemCount: widget.data.length,
            itemBuilder: (BuildContext context, int index) {
              // _userStore?.setRandomCacheImage(widget.data[index]["img"],
              //     widget.data[index]["id"].toString());
              // String defaultImage = _userStore!
              //     .getRandomCacheImage(widget.data[index]["id"].toString());
              return GestureDetector(
                onTap: () {
                  widget.runAction(widget.data[index]);
                },
                child: Container(
                  padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // Container(
                      //   padding: EdgeInsets.only(right: 5, left: 5),
                      //   child: ClipRRect(
                      //     borderRadius: BorderRadius.all(Radius.circular(2.0)),
                      //     child: Image(
                      //       image: RandomImages.getImageUrlDefault(
                      //           widget.data[index]["img"], defaultImage),
                      //       fit: BoxFit.fill,
                      //       width: 150,
                      //       alignment: Alignment.center,
                      //     ),
                      //   ),
                      // ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 5),
                        width: MediaQuery.of(context).size.width - 100,
                        child: Text(widget.data[index]["name"],
                            softWrap: false,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontFamily: "roboto",
                              color: AppColors.red,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                            "Rp. " +
                                Utils.formatRupiah(
                                    widget.data[index]["price"].toString()),
                            softWrap: false,
                            maxLines: 3,
                            style: TextStyle(
                              fontFamily: "roboto",
                              //color: AppColors.red  ,
                              fontSize: 14,
                              //fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
