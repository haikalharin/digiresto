import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/random/random_images.dart';
import 'package:digiresto/domain/core/utils/utils.dart';
import 'package:digiresto/domain/entity/order/outlet_list_product_response.dart';
import 'package:flutter/material.dart';

class ListProductVariant extends StatefulWidget {
  final List<OutletListProductDataVariantResponse> data;
  final Axis scrollDirection;
  final void Function(OutletListProductDataVariantResponse) runAction;
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
            padding: EdgeInsets.zero,
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
                  margin: EdgeInsets.all(8),
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
                      Container(
                        height: 150,
                        width: 150,
                        child: Image(
                          errorBuilder: (context, obj, stacktrace) {
                            return Image(
                              image: RandomImages.getImage(),
                            );
                          },
                          image: RandomImages.getImageUrlDefault(
                              widget.data[index].image, ''),
                          fit: BoxFit.cover,
                          width: double.infinity,
                          alignment: Alignment.center,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 5),
                        width: MediaQuery.of(context).size.width - 100,
                        child: Text(widget.data[index].name,
                            softWrap: false,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: AppFont.textBlack15Bold.copyWith(
                              color: AppColors.mainColor,
                            ),
                            textAlign: TextAlign.left),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                            "Rp. " +
                                Utils.formatRupiah(
                                    widget.data[index].price.toString()),
                            softWrap: false,
                            maxLines: 3,
                            style:
                                TextStyle(fontFamily: "roboto", fontSize: 14),
                            textAlign: TextAlign.left),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
