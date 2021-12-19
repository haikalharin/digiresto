import 'package:code_id_flutter/code_widgets/progress_bar/stack_with_progress.dart';
import 'package:digiresto/application/catering/catering_bloc.dart';
import 'package:digiresto/domain/catering/outlet_category_catering_response.dart';
import 'package:digiresto/domain/core/constants/assets.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/constants/font.dart';
import 'package:digiresto/domain/core/utils/random/random_images.dart';
import 'package:digiresto/domain/home/entity/menu_category.dart';
import 'package:digiresto/generated/assets.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/custom_scafold.dart';
import 'package:digiresto/presentation/widgets/empty_widget.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:dartz/dartz.dart' hide IList;

class ListCateringPage extends StatelessWidget {
  final MenuCategory? menuCategory;

  ListCateringPage({this.menuCategory});

  @override
  Widget build(BuildContext context) {
    return CustomScafold(
      title: menuCategory?.getTitle ?? "-",
      showBackButton: true,
      resizeToAvoidBottomInset: false,
      appBarColor: Colors.white,
      iconBackColor: Colors.black,
      body: ListCateringWidget(
        menuCategory: menuCategory,
      ),
    );
  }
}

class ListCateringWidget extends StatelessWidget {
  final MenuCategory? menuCategory;

  ListCateringWidget({this.menuCategory});

  final TextEditingController searchController = TextEditingController();

  DateTime getDate(DateTime d) => DateTime(d.year, d.month, d.day);

  final date = DateTime.now();

  final IList<OutletCategoryCateringResponse> listOutlets = IList();

  void onRefresh(BuildContext context) async {
    context.read<CateringBloc>().add(
          CateringEvent.getOutletCategoryCatering(
            isHideOpen: true,
            mealsTypes: "lunch",
            preOrderDate: "2021-12-11",
            search: searchController.text,
          ),
        );

    return;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CateringBloc>(
      create: (context) => getIt<CateringBloc>()
        ..add(
          CateringEvent.getOutletCategoryCatering(
              isHideOpen: true,
              mealsTypes: "lunch",
              preOrderDate: "2021-12-11",
              search: searchController.text),
        ),
      child: BlocConsumer<CateringBloc, CateringState>(
        listener: (context, state) {},
        builder: (context, state) {
          return StackWithProgress(
            isLoading: state.maybeMap(
              orElse: () => false,
              loadInProgress: (_) => true,
            ),
            children: [
              Column(
                children: [
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
                  Container(
                    height: 162,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      border: Border.all(
                        color: Colors.black12,
                        width: 0.5,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: 37,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    _showDialogEatingType(
                                      context: context,
                                      category: menuCategory!,
                                    );
                                  },
                                  child: Container(
                                    height: 37,
                                    margin: EdgeInsets.only(top: 1, bottom: 1),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: AppColors.redD12B34,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        bottomLeft: Radius.circular(8),
                                      ),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          Assets.iconsFoodIcon,
                                          height: 15,
                                          width: 15,
                                          fit: BoxFit.fill,
                                        ),
                                        SizedBox(width: 7),
                                        Text(
                                          "Makan Siang",
                                          softWrap: false,
                                          overflow: TextOverflow.ellipsis,
                                          style: AppFont.textRed14SemiBold
                                              .copyWith(
                                            color: AppColors.mainColor,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(width: 16),
                                        SvgPicture.asset(
                                          Assets.iconsIcArrowDown,
                                          height: 7,
                                          width: 7,
                                          fit: BoxFit.fill,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 37,
                                  child: TextField(
                                    textInputAction: TextInputAction.search,
                                    onSubmitted: (value) {
                                      context.read<CateringBloc>().add(
                                            CateringEvent
                                                .getOutletCategoryCatering(
                                              isHideOpen: true,
                                              mealsTypes: "lunch",
                                              preOrderDate: "2021-12-11",
                                              search: searchController.text,
                                            ),
                                          );
                                    },
                                    autocorrect: false,
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
                                      contentPadding: EdgeInsets.fromLTRB(
                                          15.0, 10.0, 15.0, 10.0),
                                      prefixIcon: Icon(Icons.search),
                                      hintText: "Cari menu paket",
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: AppColors.greyInput,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: AppColors.greyInput,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                        ),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: AppColors.greyInput,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: AppColors.greyInput,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                        ),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: AppColors.greyInput,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                        ),
                                        borderSide: BorderSide(
                                          width: 1,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 14),

                        /// DATE RANGE
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                DateFormat('MMMM yyyy').format(date),
                                softWrap: false,
                                overflow: TextOverflow.ellipsis,
                                style: AppFont.textRed14SemiBold.copyWith(
                                  color: AppColors.black,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 46,
                              child: ListView(
                                shrinkWrap: true,
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                scrollDirection: Axis.horizontal,
                                children: List.generate(
                                  7,
                                  (index) => Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Container(
                                      height: 46,
                                      width: 51,
                                      decoration: BoxDecoration(
                                        color: AppColors.greyF6F6F6,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(4),
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            DateFormat('EE').format(
                                              getDate(
                                                date.subtract(
                                                  Duration(days: -index),
                                                ),
                                              ),
                                            ),
                                            softWrap: false,
                                            overflow: TextOverflow.ellipsis,
                                            style: AppFont.textBlack10Regular
                                                .copyWith(
                                              color: AppColors.greyC2C2C2,
                                              fontSize: 11,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          Text(
                                            DateFormat('dd').format(
                                              getDate(
                                                date.subtract(
                                                  Duration(days: -index),
                                                ),
                                              ),
                                            ),
                                            softWrap: false,
                                            overflow: TextOverflow.ellipsis,
                                            style: AppFont.textBlack10Regular
                                                .copyWith(
                                              color: AppColors.greyC2C2C2,
                                              fontSize: 11,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                  /// LIST CATERING
                  state.maybeMap(
                    orElse: () => Container(),
                    getListOutletCateringSuccess: (r) => r.outlets.length > 0
                        ? Expanded(
                            child: RefreshIndicator(
                              onRefresh: () async => onRefresh(context),
                              child: ListView(
                                children: List.generate(
                                  r.outlets.length,
                                  (index) {
                                    var _data = r.outlets[index];
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          color: Colors.white,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 20,
                                            vertical: 15,
                                          ),
                                          // height: 96,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(
                                                      8.0,
                                                    ),
                                                  ),
                                                  child: Image(
                                                    errorBuilder: (context, obj,
                                                        stacktrace) {
                                                      return Image(
                                                        height: 96,
                                                        width: 96,
                                                        image: RandomImages
                                                            .getImage(),
                                                      );
                                                    },
                                                    image: RandomImages
                                                        .getImageUrlDefault(
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
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    _data.name,
                                                    softWrap: false,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: AppFont
                                                        .textRed14SemiBold
                                                        .copyWith(
                                                      color: AppColors.black,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        _data.distance.distance,
                                                        style: AppFont
                                                            .textBlack12Regular
                                                            .copyWith(
                                                          color:
                                                              AppColors.black,
                                                        ),
                                                        textAlign:
                                                            TextAlign.left,
                                                      ),
                                                      SizedBox(width: 11),
                                                      Icon(
                                                        Icons.star,
                                                        size: 12,
                                                        color: AppColors
                                                            .yellowStar,
                                                      ),
                                                      SizedBox(width: 3),
                                                      Text(
                                                        "${_data.rating?.toDouble() ?? "0"}",
                                                        style: AppFont
                                                            .textBlack12Regular
                                                            .copyWith(
                                                          color:
                                                              AppColors.black,
                                                        ),
                                                        textAlign:
                                                            TextAlign.left,
                                                      ),
                                                      Container(
                                                        width: 100,
                                                        height: 14,
                                                        padding:
                                                            EdgeInsets.only(
                                                          left: 11,
                                                        ),
                                                        child:
                                                            RatingBarIndicator(
                                                          direction:
                                                              Axis.horizontal,
                                                          itemCount: 5,
                                                          itemSize: 14,
                                                          rating: _data
                                                              .priceRange
                                                              .toDouble(),
                                                          itemPadding:
                                                              EdgeInsets
                                                                  .symmetric(
                                                            horizontal: 0,
                                                          ),
                                                          itemBuilder:
                                                              (context, _) =>
                                                                  Text(
                                                            "\$",
                                                            style: AppFont
                                                                .textBlack12Regular
                                                                .copyWith(
                                                              color: AppColors
                                                                  .black,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: 16,
                                                      bottom: 16,
                                                    ),
                                                    child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.32,
                                                      child: Row(
                                                        children: [
                                                          ImageIcon(
                                                              AssetImage(AppAssets
                                                                  .iconOutletOrderDelivery),
                                                              size: 14,
                                                              color: AppColors
                                                                  .redTabBar),
                                                          SizedBox(
                                                            width: 4,
                                                          ),
                                                          Text(
                                                            I10n.current
                                                                .landing_delivery,
                                                            style: AppFont
                                                                .textBlack11Light,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  (_data.countOutlet ?? 0) > 1
                                                      ? SizedBox(
                                                          height: 34,
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.62,
                                                          child: ElevatedButton(
                                                            onPressed: () {},
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Expanded(
                                                                  child: Text(
                                                                    I10n.current
                                                                        .outlet_list_see_all_outlet(
                                                                            ""),
                                                                    style: AppFont
                                                                        .textBlack10SemiBold
                                                                        .copyWith(
                                                                      color: AppColors
                                                                          .red,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            style: ButtonStyle(
                                                                shadowColor:
                                                                    MaterialStateProperty.all(
                                                                        Colors
                                                                            .transparent),
                                                                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                    side: BorderSide(
                                                                        color: AppColors
                                                                            .greyDEDEDE))),
                                                                backgroundColor:
                                                                    MaterialStateProperty.all(
                                                                        AppColors
                                                                            .white)),
                                                          ),
                                                        )
                                                      : Container(),
                                                  SizedBox(
                                                    height: 8,
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 1,
                                          width: double.infinity,
                                          color: AppColors.greyE7E7E7,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 20),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ),
                          )
                        : state.maybeMap(
                            orElse: () => false,
                            loadInProgress: (_) => true,
                          )
                            ? Container()
                            : EmptyWidget(
                                onRefresh: () {},
                                imageAsset: AppAssets.emptyOutlet,
                              ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  Future<void> _showDialogEatingType({
    required BuildContext context,
    required MenuCategory category,
  }) async {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
      ),
      backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 8,
            ),
            ListTile(
              // leading: GestureDetector(
              //   onTap: () {
              //     Get.back();
              //   },
              //   child: ImageIcon(
              //     AssetImage(AppAssets.iconBackBlack),
              //     color: Colors.black,
              //   ),
              // ),
              title: Container(
                child: Center(
                  child: new Text(
                    "",
                    style: AppFont.textBlack17Bold,
                  ),
                ),
              ),
              enabled: false,
            ),
            Column(
              children:
                  List.generate(menuCategory?.filter?.length ?? 0, (index) {
                var _data = menuCategory?.filter?[index].options;
                return Column(
                  children: List.generate(
                    _data?.length ?? 0,
                    (index) => Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16, bottom: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _data?[index].getTitle ?? "-",
                                style: AppFont.textBlack17Bold
                                    .copyWith(fontSize: 15),
                              ),
                              Text(
                                _data?[index].getDescription ?? "-",
                                style: AppFont.textBlack13Light.copyWith(
                                  fontSize: 12,
                                  color: AppColors.black,
                                ),
                              ),
                            ],
                          ),
                          Expanded(child: Container()),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                I10n.current.cart_choose,
                                style: AppFont.textBlack12Bold
                                    .copyWith(color: AppColors.redD12B34),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  elevation: 0,
                                  side: BorderSide(
                                    width: 1.0,
                                    color: AppColors.redD12B34,
                                  ))),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
            // Column(
            //   children: [
            //     Padding(
            //       padding:
            //           const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
            //       child: Row(
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Text(
            //                 'Makan Siang',
            //                 style:
            //                     AppFont.textBlack17Bold.copyWith(fontSize: 15),
            //               ),
            //               Text(
            //                 'Diantar pukul 09.00 - 12.00',
            //                 style: AppFont.textBlack13Light.copyWith(
            //                   fontSize: 12,
            //                   color: AppColors.black,
            //                 ),
            //               ),
            //             ],
            //           ),
            //           Expanded(child: Container()),
            //           ElevatedButton(
            //               onPressed: () {},
            //               child: Text(
            //                 I10n.current.cart_choose,
            //                 style: AppFont.textBlack12Bold
            //                     .copyWith(color: AppColors.redD12B34),
            //               ),
            //               style: ElevatedButton.styleFrom(
            //                   primary: Colors.white,
            //                   elevation: 0,
            //                   side: BorderSide(
            //                     width: 1.0,
            //                     color: AppColors.redD12B34,
            //                   ))),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            SizedBox(
              height: 16,
            ),
          ],
        );
      },
    );
  }
}
