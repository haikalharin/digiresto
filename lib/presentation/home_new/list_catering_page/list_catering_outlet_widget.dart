import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/random/random_images.dart';
import 'package:digiresto/domain/entity/order/outlet_category_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';

class ListCateringOutletWidget extends StatefulWidget {
  final List<OutletCategoryDataResponse> data;
  final Axis scrollDirection;
  final height;
  final void Function(OutletCategoryDataResponse data) runAction;
  final void Function() loadMoreAction;
  final void Function() onRefresh;

  const ListCateringOutletWidget({
    Key? key,
    required this.data,
    this.scrollDirection = Axis.vertical,
    this.height,
    required this.runAction,
    required this.loadMoreAction,
    required this.onRefresh,
  }) : super(key: key);
  @override
  _ListCateringOutletWidgetState createState() =>
      _ListCateringOutletWidgetState();
}

class _ListCateringOutletWidgetState extends State<ListCateringOutletWidget> {
  final ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        widget.loadMoreAction();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: () async => widget.onRefresh(),
        child: Stack(
          children: [
            ListView(),
            ListView.builder(
              controller: _scrollController,
              scrollDirection: widget.scrollDirection,
              shrinkWrap: true,
              itemCount: widget.data.length,
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              itemBuilder: (context, int index) {
                var _data = widget.data[index];
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () => {
                        if (widget.data[index].isOpen)
                          {widget.runAction(widget.data[index])}
                      },
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    8.0,
                                  ),
                                ),
                                child: Image(
                                  errorBuilder: (context, obj, stacktrace) {
                                    return Image(
                                      height: 96,
                                      width: 96,
                                      image: RandomImages.getImage(),
                                    );
                                  },
                                  image: RandomImages.getImageUrlDefault(
                                    _data.logo,
                                    "",
                                  ),
                                  fit: BoxFit.cover,
                                  height: 96,
                                  width: 96,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _data.name,
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppFont.textRed14SemiBold.copyWith(
                                    color: AppColors.black,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      _data.distance.distance,
                                      style:
                                          AppFont.textBlack12Regular.copyWith(
                                        color: AppColors.black,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(width: 11),
                                    Icon(
                                      Icons.star,
                                      size: 12,
                                      color: AppColors.yellowStar,
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      "${_data.rating ?? "-"}",
                                      style:
                                          AppFont.textBlack12Regular.copyWith(
                                        color: AppColors.black,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                                Text(
                                  "${_data.priceRangeDesc ?? "-"}",
                                  style: AppFont.textBlack12Regular.copyWith(
                                    color: AppColors.black,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 16,
                                  ),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.32,
                                    child: Row(
                                      children: [
                                        ImageIcon(
                                            AssetImage(AppAssets
                                                .iconOutletOrderDelivery),
                                            size: 14,
                                            color: AppColors.redTabBar),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          I10n.current.landing_delivery,
                                          style: AppFont.textBlack11Light,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: AppColors.greyE7E7E7,
                      margin: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
