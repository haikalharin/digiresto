import 'dart:async';
import 'dart:core';
import 'package:digiresto/application/landing/bottom_tab_cubit.dart';
import 'package:digiresto/application/order/bloc/order_bloc.dart';
import 'package:digiresto/application/order/order_view_controller.dart';
import 'package:digiresto/domain/core/entity/status_api_response.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/common_util.dart';
import 'package:digiresto/domain/core/utils/random/random_images.dart';
import 'package:digiresto/domain/core/utils/utils.dart';
import 'package:digiresto/domain/entity/order/cart_session_response.dart';
import 'package:digiresto/domain/entity/order/detail_outlet_response.dart';
import 'package:digiresto/domain/entity/order/outlet_list_product_response.dart';
import 'package:digiresto/domain/entity/order/param/create_cart_session_param.dart';
import 'package:digiresto/generated/assets.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/base_dialog_error.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/order/modifier_group_widget.dart';
import 'package:digiresto/presentation/order/order_cart.dart';
import 'package:digiresto/presentation/widgets/Error_popup_widget.dart';
import 'package:digiresto/presentation/order/widgets/list_product_variant_widget.dart';
import 'package:digiresto/presentation/widgets/top_background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class DetailProductDialog extends StatefulWidget {
  final OutletListProductDataResponse dataProduct;
  final CartSessionResponse? cartSession;
  final String note;
  final String orderType;
  final qtyProduct;
  final mode;
  final bool isDifferentOutlet;
  final DetailOutletDataResponse detailOutlet;
  final List<CreateCartSessionItemModifierParam> listSelectedModifier;

  /// Catering
  final String? dayDate;
  final String? mealsTitle;
  final String? deliveryTime;
  final bool? isCatering;

  @override
  DetailProductDialog({
    Key? key,
    required this.dataProduct,
    required this.orderType,
    required this.cartSession,
    this.isDifferentOutlet = false,
    required this.detailOutlet,
    required this.note,
    this.mode = "new",
    this.qtyProduct = 1,
    this.listSelectedModifier = const [],
    this.dayDate,
    this.mealsTitle,
    this.deliveryTime,
    this.isCatering = false,
  }) : super(key: key);

  @override
  _DetailProductDialogState createState() => _DetailProductDialogState();
}

class _DetailProductDialogState extends State<DetailProductDialog> {
  int totalqty = 1;
  // OrderStore _orderStore;
  // UserStore _userStore;
  late OutletListProductDataResponse dataProductState;
  late OutletListProductDataResponse variantProductSelected;
  final notesController = TextEditingController();
  String notes = '';
  bool noteIsSubmitted = true;
  bool isLimitReached = false;
  List<CreateCartSessionItemModifierParam> listModifier = [];
  num? price;
  num? beforePrice;
  num subtotalModifiers = 0;
  Map<String, bool> isModifierValid = {};
  Map<String, int> _mapQuantity = {};

  void calculateModifiers() async {
    setState(() {
      subtotalModifiers = 0;
    });
    print('listModifier: $listModifier');

    listModifier.forEach((element) {
      setState(() {
        print(
            'element.modifierId.toString() : ${element.modifierId.toString()}');
        print('modifierGroup: ${widget.dataProduct.modifierGroups}');
        subtotalModifiers += element.qty *
            dataProductState.modifierGroups
                .firstWhere((g) {
                  print('g.id = ${g.id}');
                  print('element.modifierGroupId = ${element.modifierGroupId}');
                  return g.id == element.modifierGroupId;
                })
                .modifiers
                .firstWhere((m) {
                  print('m.id = ${m.id}');
                  print('element.modifierId = ${element.modifierId}');
                  return m.id == element.modifierId.toString();
                })
                .price;
      });
    });
  }

  void initFunc() async {
    isModifierValid =
        Map.fromEntries(dataProductState.modifierGroups.map((element) {
      return MapEntry(
          element.id.toString(), element.minQuantity == 0 ? true : false);
    }));
    print('init isModifierValid $isModifierValid');
    if (dataProductState.modifierGroups.isNotEmpty && widget.mode == "new") {
      final selected = dataProductState.modifierGroups
          .where((element) =>
              element.minQuantity > 0 && element.allowMultiple == 1)
          .map(
        (modifier) {
          isModifierValid[modifier.id.toString()] = true;
          return CreateCartSessionItemModifierParam(
            modifierGroupId: modifier.id,
            modifierId: int.parse(modifier.modifiers.first.id),
            qty: modifier.minQuantity,
          );
        },
      ).toList();

      listModifier.addAll(selected);
    }
    if (widget.listSelectedModifier.isNotEmpty && widget.mode == "edit") {
      listModifier.addAll(widget.listSelectedModifier);
      _mapQuantity = Map.fromEntries(listModifier.map((element) {
        return MapEntry(element.modifierId.toString(), element.qty);
      }));
      listModifier.forEach((element) {
        setState(() {
          isModifierValid[element.modifierGroupId.toString()] = true;
        });
      });
    }
    calculateModifiers();
    totalqty = widget.qtyProduct;
    _setTotalQtyFromExistCart();
    notesController.text = widget.note;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    dataProductState = widget.dataProduct;
    variantProductSelected = dataProductState;
    initFunc();
    Timer.run(() {
      if (dataProductState.variants.length > 0) {
        _showMaterialDialog();
      }
    });
  }

  void plus() {
    setState(() {
      totalqty++;
    });
  }

  void minus() {
    if (totalqty > 1) {
      setState(() {
        totalqty--;
      });
    }
  }

  void setProduct({bool isBuyNow = false}) async {
    if (dataProductState.modifierGroups.isNotEmpty) {
      if (isModifierValid.values.contains(false)) {
        ErrorDialog().showError(
            error: StatusMessageDisplayResponse(
                id: I10n.current.product_detail_alert_min_max_quantity,
                en: I10n.current.product_detail_alert_min_max_quantity));
        return;
      }
    }
    if (widget.isDifferentOutlet) {
      ErrorPopupWidget.confirmation("Digiresto",
          '${I10n.current.beranda_outlet_change}${I10n.current.beranda_all_product_deleted}',
          () {
        Get.context!.read<OrderBloc>().add(
              OrderEvent.addCart(
                CreateUpdateCartSessionItemParam(
                  modifiers: listModifier,
                  note: notes,
                  productId: int.parse(variantProductSelected.id),
                  qty: totalqty,
                ),
                widget.detailOutlet,
                widget.orderType,
                isBuyNow,
                widget.detailOutlet.merchantName!,
              ),
            );
        Get.back();
      });
      getIt<BottomTabCubit>().checkCartFromOutside();

      return;
    }
    if (totalqty > (variantProductSelected.stock ?? 999)) {
      ErrorPopupWidget.show("Digiresto", "out of stock", () {
        Get.back();
      });
      return;
    }

    getIt<BottomTabCubit>().checkCartFromOutside();
    Get.context!.read<OrderBloc>().add(
          OrderEvent.addCart(
            CreateUpdateCartSessionItemParam(
                modifiers: listModifier,
                note: notes,
                productId: int.parse(variantProductSelected.id),
                qty: totalqty),
            widget.detailOutlet,
            widget.orderType,
            isBuyNow,
            widget.detailOutlet.merchantName!,
          ),
        );
  }

  _chooseVariants(OutletListProductDataVariantResponse data) async {
    //print("choose variant"+data.toString());
    final varianData =
        OutletListProductDataVariantResponse.variantToDetailProductResponse(
            data);
    setState(() {
      variantProductSelected = varianData;
      dataProductState = varianData;
    });
    initFunc();
    Navigator.of(context).pop();
  }

  _setTotalQtyFromExistCart() {
    widget.cartSession?.transactionData!.items.forEach((element) {
      if (variantProductSelected.id == element.productId.toString()) {
        setState(() {
          totalqty = element.qty;
        });
      }
    });
  }

  _showMaterialDialog() {
    double height = (dataProductState.variants.length == 1)
        ? MediaQuery.of(context).size.height - 300
        : MediaQuery.of(context).size.height - 220;
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) => new AlertDialog(
              title: Center(
                  child: Text(
                I10n.current.product_choose_variant,
                style: TextStyle(
                  fontFamily: "roboto",
                  color: AppColors.mainColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )),
              content: Container(
                height: height,
                child: Column(
                  children: [
                    Expanded(
                      child: ListProductVariant(
                          runAction: _chooseVariants,
                          data: dataProductState.variants),
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width - 190,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                            side: BorderSide(
                              width: 1,
                              color: AppColors.mainColor,
                            ),
                          ),
                        ),
                        child: Text(I10n.current.alert_back,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: AppColors.red)),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    // if (dataProductState["isUseSalesType"] == true) {
    //   for (int i = 0; i < dataProductState["salesTypes"].length; i++) {
    //     if (dataProductState["salesTypes"][i]["code"] == widget.orderType) {
    //       price = dataProductState["salesTypes"][i]["price"];
    //     }
    //   }
    //   if (price == null) {
    //     price = dataProductState.crossoutPrice!= null
    //         ? dataProductState.crossoutPrice
    //         : dataProductState.price;
    //   }
    // }

    setState(() {
      if (widget.dataProduct.modifierGroups.isNotEmpty) {}
      if (variantProductSelected.crossoutPrice != null) {
        if ((variantProductSelected.crossoutPrice ?? 0) <
            variantProductSelected.price) {
          price = variantProductSelected.crossoutPrice;
          beforePrice = variantProductSelected.price;
        } else {
          price = variantProductSelected.crossoutPrice;
        }
      } else {
        price = variantProductSelected.price;
      }
    });

    String defaultImage = "";
    return BlocConsumer<OrderBloc, OrderState>(listener: (context, state) {
      var controller = Get.find<OrderViewController>();
      state.maybeMap(
        addCartSuccess: (r) {
          controller.cartSession.value = r.response;
          Get.back();
          if (r.isBuyNow) {
            Get.to(OrderCartScreen());
          }
        },
        orElse: () {
          //
        },
      );
    }, builder: (context, state) {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TopBackgound(backgroundColor: AppColors.red),
            Expanded(
              child: Stack(
                children: [
                  ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(2.0)),
                          child: Image(
                            errorBuilder: (context, obj, stacktrace) {
                              return Image(
                                image: RandomImages.getImage(),
                              );
                            },
                            image: RandomImages.getImageUrlDefault(
                                variantProductSelected.image, defaultImage),
                            fit: BoxFit.cover,
                            width: double.infinity,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimens.defaultMargin,
                          vertical: 15,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        variantProductSelected.name,
                                        softWrap: true,
                                        maxLines: 3,
                                        //overflow: TextOverflow.ellipsis,
                                        style: AppFont.textBlack16Bold,
                                        textAlign: TextAlign.left,
                                      ),
                                      Container(
                                        color: AppColors.white,
                                        child: Text(
                                          '${widget.detailOutlet.name} - ${widget.detailOutlet.city}',
                                          style: AppFont.textBlack14Regular,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      padding: const EdgeInsets.only(top: 5),
                                      //width: 10,
                                      child: Text(
                                          "Rp " +
                                              Utils.formatRupiah(
                                                  variantProductSelected.price
                                                      .toString()),
                                          softWrap: false,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: AppFont.textBlack16Bold,
                                          textAlign: TextAlign.left),
                                    ),
                                    variantProductSelected.crossoutPrice != null
                                        ? Container(
                                            alignment: Alignment.topLeft,
                                            padding:
                                                const EdgeInsets.only(top: 5),
                                            //width: 10,
                                            child: Text(
                                                "Rp " +
                                                    Utils.formatRupiah(
                                                        variantProductSelected
                                                            .crossoutPrice
                                                            .toString()),
                                                softWrap: false,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: AppFont.textBlack16Bold
                                                    .copyWith(
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  color: Colors.black38,
                                                ),
                                                textAlign: TextAlign.left),
                                          )
                                        : Container(),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            if (variantProductSelected.isPreorder)
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 2),
                                decoration: BoxDecoration(
                                  color: AppColors.mainColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  'PRE-ORDER',
                                  style: Styles.whiteFontStyle.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      if (variantProductSelected.isPreorder)
                        Column(
                          children: [
                            Divider(
                              thickness: 12,
                              color: AppColors.dividerColor,
                            ),
                            Container(
                              color: AppColors.mainMaterialColor.shade100,
                              width: double.infinity,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: Dimens.defaultMargin,
                                  vertical: 15,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                            'assets/preorder_ship.svg'),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                I10n.current.preorder_shipped(
                                                  variantProductSelected
                                                          .preorderPeriod ??
                                                      1,
                                                ),
                                                style: AppFont.textBlack12Bold
                                                    .copyWith(
                                                  color: AppColors.red,
                                                ),
                                              ),
                                              Text(
                                                '${I10n.current.preorder_tnc_desc_1(widget.detailOutlet.poCutoff ?? '')}. ${I10n.current.preorder_tnc_desc_2(widget.detailOutlet.poCutoff ?? '')}',
                                                style: AppFont
                                                    .textBlack12Regular
                                                    .copyWith(
                                                  color: AppColors.red,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                            'assets/preorder_estimate.svg'),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              //estimasi preorder
                                              Text(
                                                I10n.current
                                                    .preorder_detail_estimate(
                                                  CommonUtils.dateFormat(
                                                        'dd MMMM yyyy',
                                                        DateTime.now().add(
                                                          Duration(
                                                            days: DateTime.now()
                                                                        .hour <
                                                                    int.parse(widget.detailOutlet.poCutoff?.substring(
                                                                            0,
                                                                            widget.detailOutlet.poCutoff?.indexOf(':') ??
                                                                                1) ??
                                                                        '0')
                                                                ? variantProductSelected
                                                                        .preorderPeriod ??
                                                                    1
                                                                : (variantProductSelected
                                                                            .preorderPeriod ??
                                                                        1) +
                                                                    1,
                                                          ),
                                                        ),
                                                      ) ??
                                                      '',
                                                ),
                                                style: AppFont.textBlack12Bold
                                                    .copyWith(
                                                  color: AppColors.red,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      if (widget.isCatering == true)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Divider(
                              thickness: 12,
                              color: AppColors.dividerColor,
                            ),
                            Container(
                              color: Colors.white,
                              padding: EdgeInsets.symmetric(
                                horizontal: Dimens.defaultMargin,
                                vertical: 15,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        Assets.iconsIcCalendar,
                                        height: 12,
                                        width: 12,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        widget.dayDate ?? "",
                                        style:
                                            AppFont.textBlack12Medium.copyWith(
                                          fontSize: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 12),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        Assets.iconsFoodIcon,
                                        height: 12,
                                        width: 12,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        widget.mealsTitle ?? "",
                                        style:
                                            AppFont.textBlack12Medium.copyWith(
                                          fontSize: 11,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Container(
                                        height: 4,
                                        width: 4,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors.greyColor2,
                                        ),
                                      ),
                                      SizedBox(width: 12),
                                      Text(
                                        widget.deliveryTime ?? "",
                                        style:
                                            AppFont.textBlack12Regular.copyWith(
                                          fontSize: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      if (variantProductSelected.description != null &&
                          (variantProductSelected.description?.isNotEmpty ??
                              false))
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Divider(
                              thickness: 12,
                              color: AppColors.dividerColor,
                            ),
                            Container(
                              color: Colors.white,
                              padding: EdgeInsets.symmetric(
                                horizontal: Dimens.defaultMargin,
                                vertical: 15,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    I10n.current
                                        .product_detail_description_title,
                                    style: AppFont.textBlack16Bold,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    variantProductSelected.description ?? '',
                                    style: AppFont.textBlack14Regular,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      if (variantProductSelected.modifierGroups.isNotEmpty)
                        Divider(
                          thickness: 12,
                          color: AppColors.dividerColor,
                        ),
                      if (variantProductSelected.modifierGroups.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: Dimens.defaultMargin,
                            vertical: 15,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ...variantProductSelected.modifierGroups
                                  .map(
                                    (modifierGroup) => ModifierGroupWidget(
                                      modifierGroup: modifierGroup,
                                      mapQuantity: _mapQuantity,
                                      selectedModifier:
                                          modifierGroup.modifiers.where(
                                        (modifier) {
                                          print(
                                              'coba listModifier: $listModifier');
                                          print('coba modifier $modifier');
                                          final any = listModifier.any(
                                              (element) =>
                                                  element.modifierId ==
                                                  int.parse(modifier.id));
                                          print('any is :$any');
                                          return any;
                                        },
                                      ).toList(),
                                      onModifierSelected: (listSelected,
                                          isValid, isMultiple) async {
                                        setState(
                                          () {
                                            listModifier.removeWhere(
                                              (element) =>
                                                  element.modifierGroupId ==
                                                  modifierGroup.id,
                                            );
                                            listSelected
                                                .forEach((modifier) async {
                                              listModifier.add(modifier);
                                            });
                                            isModifierValid[modifierGroup.id
                                                .toString()] = isValid;
                                          },
                                        );
                                        calculateModifiers();
                                        print('listModifier: $listModifier');
                                      },
                                    ),
                                  )
                                  .toList(),
                            ],
                          ),
                        ),
                      Divider(
                        thickness: 12,
                        color: AppColors.dividerColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Dimens.defaultMargin,
                          vertical: 15,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(I10n.current.cart_notes,
                                    style: AppFont.textBlack14Bold),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(I10n.current.cart_optional,
                                      style: AppFont.textBlack8Light),
                                ),
                              ],
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 5, bottom: 10),
                              child: TextField(
                                  textInputAction: TextInputAction.search,
                                  onSubmitted: (value) {},
                                  onChanged: (text) {
                                    setState(() {
                                      noteIsSubmitted = false;
                                    });
                                  },
                                  controller: notesController,
                                  readOnly: false,
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                  decoration: InputDecoration(
                                    isDense: true,
                                    filled: true,
                                    fillColor: AppColors.greyFill,
                                    contentPadding: EdgeInsets.only(
                                        top: 12,
                                        bottom: 12,
                                        left: 10,
                                        right: 10),
                                    hintText:
                                        I10n.current.placeholder_hint_notes,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 32.0),
                                        borderRadius: BorderRadius.circular(5)),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.black),
                                    ),
                                  )),
                            ),
                            if (noteIsSubmitted == false)
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    alignment: Alignment.topCenter,
                                    padding: const EdgeInsets.only(top: 5),
                                    //width: MediaQuery. of(context). size. width-200,
                                    child: Container(
                                      padding: EdgeInsets.all(5),
                                      height: 55,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            notes = notesController.text;
                                            noteIsSubmitted = true;
                                          });
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: AppColors.mainColor,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(5.0),
                                            side: BorderSide(
                                              width: 1,
                                              color: AppColors.redYoung,
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                            I10n.current.cart_notes_apply,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white)),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.black54,
                      child: new IconButton(
                        icon: new Icon(Icons.close,
                            color: Colors.white, size: 30.0),
                        onPressed: () => Get.back(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: Dimens.defaultMargin,
                right: Dimens.defaultMargin,
                top: 10,
                bottom: 30,
              ),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.all(5),
                        //width: 10,
                        child: Text(
                            "Rp " +
                                Utils.formatRupiah(
                                    (((variantProductSelected.price) + subtotalModifiers) *
                                            totalqty)
                                        .toString()),
                            softWrap: false,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: AppFont.textBlack16Bold,
                            textAlign: TextAlign.left),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              minus();
                            },
                            child: CircleAvatar(
                              radius: 14,
                              backgroundColor: AppColors.greyStroke,
                              child: new Icon(Icons.remove,
                                  color: AppColors.redYoung, size: 20.0),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 8, right: 8),
                            child: Text(totalqty.toString(),
                                style: AppFont.textBlack16Bold,
                                textAlign: TextAlign.left),
                          ),
                          GestureDetector(
                            onTap: ((variantProductSelected.limit ?? 999) <=
                                    totalqty)
                                ? () => setState(() {
                                      isLimitReached = true;
                                    })
                                : () {
                                    plus();
                                  },
                            child: CircleAvatar(
                              radius: 14,
                              backgroundColor: AppColors.greyStroke,
                              child: new Icon(Icons.add,
                                  color: AppColors.redYoung, size: 20.0),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  if ((variantProductSelected.limit ?? 999) <= totalqty &&
                      isLimitReached)
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(5),
                      child: Text(
                        I10n.current.product_detail_max_item,
                        style: AppFont.textBlack12Regular.copyWith(
                          color: AppColors.mainColor,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  (widget.mode == "new")
                      ? Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: CustomButton(
                                  onPressed: () {
                                    setProduct();
                                  },
                                  borderRadius: BorderRadius.circular(25),
                                  label: I10n.current.add_to_cart,
                                  fontColor: Colors.white,
                                  color: AppColors.mainColor,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: CustomButton(
                                  onPressed: () {
                                    setProduct(isBuyNow: true);
                                  },
                                  borderRadius: BorderRadius.circular(25),
                                  borderColor: AppColors.mainColor,
                                  label: I10n.current.buy_now,
                                  fontColor: AppColors.mainColor,
                                  color: Colors.white,
                                  borderWidth: 2,
                                ),
                              ),
                            ],
                          ),
                        )
                      : Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            height: 50,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                setProduct();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: AppColors.redD12B34,
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  side: BorderSide(
                                    width: 1,
                                    color: AppColors.mainColor,
                                  ),
                                ),
                              ),
                              child: Text(I10n.current.update_to_cart,
                                  style: AppFont.textBlack14Bold
                                      .copyWith(color: AppColors.white)),
                            ),
                          ),
                        )
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
