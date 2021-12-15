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
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
      body: BlocProvider<CateringBloc>(
        create: (context) => getIt<CateringBloc>()
          ..add(
            CateringEvent.getOutletCategoryCatering(
              isHideOpen: false,
              page: 1,
              mealsTypes: "breakfast",
              preOrderDate: DateFormat('yyyy-MM-dd').format(
                DateTime.now().subtract(
                  Duration(days: -1),
                ),
              ),
              search: "",
            ),
          ),
        child: ListCateringWidget(
          menuCategory: menuCategory,
        ),
      ),
    );
  }
}

class ListCateringWidget extends HookWidget {
  final MenuCategory? menuCategory;

  ListCateringWidget({this.menuCategory});

  final date = DateTime.now();
  static DateTime getDate(DateTime d) => DateTime(d.year, d.month, d.day);

  final TextEditingController searchController = TextEditingController();

  static String? _initialMealsTypesParam;
  static int _initialDateIndexParam = -1;
  static int _initialPageIndex = 1;

  static List<OutletCategoryCateringResponse> outlets = [];

  void onRefresh(
    BuildContext context,
    String? mealsTypesParam,
    int initialDateIndex,
  ) async {
    context.read<CateringBloc>().add(
          CateringEvent.getOutletCategoryCatering(
            page: _initialPageIndex,
            isHideOpen: false,
            mealsTypes: mealsTypesParam ?? "breakfast",
            preOrderDate: _getDateCatering(initialDateIndex),
            search: searchController.text,
          ),
        );
    return;
  }

  String _getDateCatering(int indexDate) {
    final date = DateTime.now();

    String dateCatering = DateFormat('yyyy-MM-dd').format(getDate(
      date.subtract(
        Duration(days: indexDate),
      ),
    ));
    return dateCatering;
  }

  String getTitleMealsType(MenuCategory menuCategory) {
    String? mealsType;

    menuCategory.filter?.forEach(
      (element) {
        element.options?.forEach((element) {
          if (element.value == "breakfast") {
            mealsType = element.getTitle;
          }
        });
      },
    );

    return mealsType ?? "-";
  }

  @override
  Widget build(BuildContext context) {
    final _selectMealsType = useState(getTitleMealsType(menuCategory!));
    final _selectMealsParamType = useState(_initialMealsTypesParam);
    final _selectDateParam = useState(_initialDateIndexParam);
    final _scrollController = useScrollController();
    final _scorllPageIndex = useState(_initialPageIndex);

    useEffect(
      () {
        _scrollController.addListener(() {
          if (_scrollController.position.pixels ==
              _scrollController.position.maxScrollExtent) {
            print(_scorllPageIndex.value + 1);
            // context.read<CateringBloc>().add(
            //       CateringEvent.getOutletCategoryCatering(
            //         page: _scorllPageIndex.value + 1,
            //         isHideOpen: false,
            //         mealsTypes: _selectMealsParamType.value ?? "breakfast",
            //         preOrderDate: _getDateCatering(
            //           _selectDateParam.value,
            //         ),
            //         search: searchController.text,
            //       ),
            //     );
          }
        });
      },
    );

    return BlocConsumer<CateringBloc, CateringState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          getListOutletCateringSuccess: (r) {
            print('Raka ${r.outlets.length}');
            if (r.outlets.isNotEmpty) {
              outlets.addAll(r.outlets);
            }
          },
        );
      },
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
                                      onTap: (valueTitle, valueParam) {
                                        _selectMealsType.value = valueTitle;
                                        _selectMealsParamType.value =
                                            valueParam;

                                        context.read<CateringBloc>().add(
                                              CateringEvent
                                                  .getOutletCategoryCatering(
                                                page: _initialPageIndex,
                                                isHideOpen: false,
                                                mealsTypes:
                                                    _selectMealsParamType
                                                            .value ??
                                                        "breakfast",
                                                preOrderDate: _getDateCatering(
                                                    _selectDateParam.value),
                                                search: searchController.text,
                                              ),
                                            );
                                      });
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        Assets.iconsFoodIcon,
                                        height: 15,
                                        width: 15,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(width: 7),
                                      Text(
                                        _selectMealsType.value,
                                        softWrap: false,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            AppFont.textRed14SemiBold.copyWith(
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
                                            page: _initialPageIndex,
                                            isHideOpen: false,
                                            mealsTypes:
                                                _selectMealsParamType.value ??
                                                    "breakfast",
                                            preOrderDate: _getDateCatering(
                                              _selectDateParam.value,
                                            ),
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
                              children: [
                                Padding(
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
                                                Duration(
                                                  days: 0,
                                                ),
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
                                                Duration(days: 0),
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
                                ListView(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  physics: NeverScrollableScrollPhysics(),
                                  children: List.generate(
                                    6,
                                    (index) => Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: GestureDetector(
                                        onTap: () {
                                          _selectDateParam.value = (-index - 1);

                                          context.read<CateringBloc>().add(
                                                CateringEvent
                                                    .getOutletCategoryCatering(
                                                  page: _initialPageIndex,
                                                  isHideOpen: false,
                                                  mealsTypes:
                                                      _selectMealsParamType
                                                              .value ??
                                                          "breakfast",
                                                  preOrderDate:
                                                      _getDateCatering(
                                                    _selectDateParam.value,
                                                  ),
                                                  search: searchController.text,
                                                ),
                                              );
                                        },
                                        child: Container(
                                          height: 46,
                                          width: 51,
                                          decoration: BoxDecoration(
                                            color: _selectDateParam.value ==
                                                    (-index - 1)
                                                ? AppColors.redD12B34
                                                : AppColors.greyF6F6F6,
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
                                                      Duration(
                                                          days: -index - 1),
                                                    ),
                                                  ),
                                                ),
                                                softWrap: false,
                                                overflow: TextOverflow.ellipsis,
                                                style: AppFont
                                                    .textBlack10Regular
                                                    .copyWith(
                                                  color: _selectDateParam
                                                              .value ==
                                                          (-index - 1)
                                                      ? AppColors.white
                                                      : AppColors.black1F1F1F,
                                                  fontSize: 11,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                DateFormat('dd').format(
                                                  getDate(
                                                    date.subtract(
                                                      Duration(
                                                          days: -index - 1),
                                                    ),
                                                  ),
                                                ),
                                                softWrap: false,
                                                overflow: TextOverflow.ellipsis,
                                                style: AppFont
                                                    .textBlack10Regular
                                                    .copyWith(
                                                  color: _selectDateParam
                                                              .value ==
                                                          (-index - 1)
                                                      ? AppColors.white
                                                      : AppColors.black1F1F1F,
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
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),

                /// LIST CATERING
                outlets.length > 0
                    ? Expanded(
                        child: RefreshIndicator(
                          onRefresh: () async => onRefresh(
                            context,
                            _selectMealsParamType.value,
                            _selectDateParam.value,
                          ),
                          child: ListView.builder(
                            controller: _scrollController,
                            itemCount: outlets.length,
                            physics: const BouncingScrollPhysics(
                              parent: AlwaysScrollableScrollPhysics(),
                            ),
                            itemBuilder: (context, int index) {
                              var _data = outlets[index];
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                8.0,
                                              ),
                                            ),
                                            child: Image(
                                              errorBuilder:
                                                  (context, obj, stacktrace) {
                                                return Image(
                                                  height: 96,
                                                  width: 96,
                                                  image:
                                                      RandomImages.getImage(),
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
                                              overflow: TextOverflow.ellipsis,
                                              style: AppFont.textRed14SemiBold
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
                                                  "${_data.rating?.toDouble() ?? "0"}",
                                                  style: AppFont
                                                      .textBlack12Regular
                                                      .copyWith(
                                                    color: AppColors.black,
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                                Container(
                                                  width: 100,
                                                  height: 14,
                                                  padding: EdgeInsets.only(
                                                    left: 11,
                                                  ),
                                                  child: RatingBarIndicator(
                                                    direction: Axis.horizontal,
                                                    itemCount: 5,
                                                    itemSize: 14,
                                                    rating: _data.priceRange
                                                        .toDouble(),
                                                    itemPadding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: 0,
                                                    ),
                                                    itemBuilder: (context, _) =>
                                                        Text(
                                                      "\$",
                                                      style: AppFont
                                                          .textBlack12Regular
                                                          .copyWith(
                                                        color: AppColors.black,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 16,
                                                bottom: 16,
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
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
                                      horizontal: 20,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                          // child: ListView(
                          //   controller: _scrollController,
                          //   children: List.generate(
                          //     r.outlets.length,
                          //     (index) {
                          //
                          //     },
                          //   ),
                          // ),
                        ),
                      )
                    : state.maybeMap(
                        orElse: () => false,
                        loadInProgress: (_) => true,
                      )
                        ? Container()
                        : EmptyWidget(
                            onRefresh: () async => onRefresh(
                              context,
                              _selectMealsParamType.value,
                              _selectDateParam.value,
                            ),
                            imageAsset: AppAssets.emptyOutlet,
                          ),
                // state.maybeMap(
                // orElse: () => Container(),
                // getListOutletCateringSuccess: (r) => r.outlets.length > 0
                //     ? Expanded(
                //         child: RefreshIndicator(
                //           onRefresh: () async => onRefresh(
                //             context,
                //             _selectMealsParamType.value,
                //             _selectDateParam.value,
                //           ),
                //           child: ListView.builder(
                //             controller: _scrollController,
                //             itemCount: r.outlets.length,
                //             physics: const BouncingScrollPhysics(
                //               parent: AlwaysScrollableScrollPhysics(),
                //             ),
                //             itemBuilder: (context, int index) {
                //               var _data = r.outlets[index];
                //               return Column(
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Container(
                //                     color: Colors.white,
                //                     padding: EdgeInsets.symmetric(
                //                       horizontal: 20,
                //                       vertical: 15,
                //                     ),
                //                     // height: 96,
                //                     child: Row(
                //                       crossAxisAlignment:
                //                           CrossAxisAlignment.start,
                //                       children: [
                //                         Container(
                //                           child: ClipRRect(
                //                             borderRadius: BorderRadius.all(
                //                               Radius.circular(
                //                                 8.0,
                //                               ),
                //                             ),
                //                             child: Image(
                //                               errorBuilder:
                //                                   (context, obj, stacktrace) {
                //                                 return Image(
                //                                   height: 96,
                //                                   width: 96,
                //                                   image:
                //                                       RandomImages.getImage(),
                //                                 );
                //                               },
                //                               image: RandomImages
                //                                   .getImageUrlDefault(
                //                                 _data.logo,
                //                                 "",
                //                               ),
                //                               fit: BoxFit.cover,
                //                               height: 96,
                //                               width: 96,
                //                               alignment: Alignment.center,
                //                             ),
                //                           ),
                //                         ),
                //                         SizedBox(
                //                           width: 10,
                //                         ),
                //                         Column(
                //                           mainAxisAlignment:
                //                               MainAxisAlignment.start,
                //                           crossAxisAlignment:
                //                               CrossAxisAlignment.start,
                //                           children: [
                //                             Text(
                //                               _data.name,
                //                               softWrap: false,
                //                               overflow: TextOverflow.ellipsis,
                //                               style: AppFont.textRed14SemiBold
                //                                   .copyWith(
                //                                 color: AppColors.black,
                //                               ),
                //                               textAlign: TextAlign.left,
                //                             ),
                //                             Row(
                //                               mainAxisAlignment:
                //                                   MainAxisAlignment.start,
                //                               children: [
                //                                 Text(
                //                                   _data.distance.distance,
                //                                   style: AppFont
                //                                       .textBlack12Regular
                //                                       .copyWith(
                //                                     color: AppColors.black,
                //                                   ),
                //                                   textAlign: TextAlign.left,
                //                                 ),
                //                                 SizedBox(width: 11),
                //                                 Icon(
                //                                   Icons.star,
                //                                   size: 12,
                //                                   color: AppColors.yellowStar,
                //                                 ),
                //                                 SizedBox(width: 3),
                //                                 Text(
                //                                   "${_data.rating?.toDouble() ?? "0"}",
                //                                   style: AppFont
                //                                       .textBlack12Regular
                //                                       .copyWith(
                //                                     color: AppColors.black,
                //                                   ),
                //                                   textAlign: TextAlign.left,
                //                                 ),
                //                                 Container(
                //                                   width: 100,
                //                                   height: 14,
                //                                   padding: EdgeInsets.only(
                //                                     left: 11,
                //                                   ),
                //                                   child: RatingBarIndicator(
                //                                     direction:
                //                                         Axis.horizontal,
                //                                     itemCount: 5,
                //                                     itemSize: 14,
                //                                     rating: _data.priceRange
                //                                         .toDouble(),
                //                                     itemPadding:
                //                                         EdgeInsets.symmetric(
                //                                       horizontal: 0,
                //                                     ),
                //                                     itemBuilder:
                //                                         (context, _) => Text(
                //                                       "\$",
                //                                       style: AppFont
                //                                           .textBlack12Regular
                //                                           .copyWith(
                //                                         color:
                //                                             AppColors.black,
                //                                       ),
                //                                       textAlign:
                //                                           TextAlign.center,
                //                                     ),
                //                                   ),
                //                                 ),
                //                               ],
                //                             ),
                //                             Padding(
                //                               padding: const EdgeInsets.only(
                //                                 top: 16,
                //                                 bottom: 16,
                //                               ),
                //                               child: Container(
                //                                 width: MediaQuery.of(context)
                //                                         .size
                //                                         .width *
                //                                     0.32,
                //                                 child: Row(
                //                                   children: [
                //                                     ImageIcon(
                //                                         AssetImage(AppAssets
                //                                             .iconOutletOrderDelivery),
                //                                         size: 14,
                //                                         color: AppColors
                //                                             .redTabBar),
                //                                     SizedBox(
                //                                       width: 4,
                //                                     ),
                //                                     Text(
                //                                       I10n.current
                //                                           .landing_delivery,
                //                                       style: AppFont
                //                                           .textBlack11Light,
                //                                     ),
                //                                   ],
                //                                 ),
                //                               ),
                //                             ),
                //                             SizedBox(
                //                               height: 8,
                //                             )
                //                           ],
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                   Container(
                //                     height: 1,
                //                     width: double.infinity,
                //                     color: AppColors.greyE7E7E7,
                //                     margin: EdgeInsets.symmetric(
                //                       horizontal: 20,
                //                     ),
                //                   ),
                //                 ],
                //               );
                //             },
                //           ),
                //           // child: ListView(
                //           //   controller: _scrollController,
                //           //   children: List.generate(
                //           //     r.outlets.length,
                //           //     (index) {
                //           //
                //           //     },
                //           //   ),
                //           // ),
                //         ),
                //       )
                //     : state.maybeMap(
                //         orElse: () => false,
                //         loadInProgress: (_) => true,
                //       )
                //         ? Container()
                //         : EmptyWidget(
                //             onRefresh: () async => onRefresh(
                //               context,
                //               _selectMealsParamType.value,
                //               _selectDateParam.value,
                //             ),
                //             imageAsset: AppAssets.emptyOutlet,
                //           ),
                // ),
              ],
            ),
          ],
        );
      },
    );
  }

  Future<void> _showDialogEatingType({
    required BuildContext context,
    required MenuCategory category,
    required Function(String, String) onTap,
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
                    I10n.current.select_menu_type,
                    style: AppFont.textBlack17Bold,
                  ),
                ),
              ),
              enabled: false,
            ),
            Column(
              children: List.generate(
                menuCategory?.filter?.length ?? 0,
                (index) {
                  var _data = menuCategory?.filter?[index].options;
                  return Column(
                    children: List.generate(_data?.length ?? 0, (index) {
                      return Padding(
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
                              onPressed: () {
                                onTap(_data?[index].getTitle ?? "-",
                                    _data?[index].value ?? "-");
                                Navigator.pop(context);
                              },
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
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  );
                },
              ),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        );
      },
    );
  }
}
