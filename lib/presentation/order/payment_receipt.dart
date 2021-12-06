import 'package:digiresto/application/home_new/bloc/home_bloc.dart';
import 'package:digiresto/application/landing/bottom_tab_cubit.dart';
import 'package:digiresto/application/transaction/bloc/transaction_bloc/transaction_bloc.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/formatting/rupiah.dart';
import 'package:digiresto/domain/entity/order/transaction_mobile_response.dart';
import 'package:digiresto/domain/entity/transaction/param/add_favorite_transaction_param.dart';
import 'package:digiresto/domain/transaction/payment_web_view_argument.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';

import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:digiresto/presentation/widgets/Error_popup_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class PaymentReceiptScreen extends StatelessWidget {
  final I10n i10n = I10n.current;
  final df = new DateFormat('dd MMM yyyy, hh:mm:ss');
  final isoParser = new DateFormat('yyyy-MM-ddTHH:mm:ssZ');
  final ScreenshotController screenshotController = ScreenshotController();
  Widget _lr(Widget left, Widget right) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: left,
        ),
        SizedBox(
          width: 10,
        ),
        right,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    TransactionMobileDataResponse? _transaction;
    PaymentReceiptViewArgument args =
        Get.arguments as PaymentReceiptViewArgument;

    String _receiptStatusTitle = '';
    String _receiptStatusDesc = '';
    bool isFavoriteDone = false;
    void checkStatus() {
      String receiptStatus = _transaction!.status ?? "initial";

      final mappingTitle = {
        "initial": i10n.nota_pending_payment,
        "failed": i10n.nota_failed,
        "reject": i10n.error_message_title,
        "cancelled": i10n.error_message_title,
        "orElse": i10n.nota_success
      };
      final mappingDesc = {
        "waiting": i10n.nota_waiting_desc,
        "process": i10n.nota_process_desc,
        "reject": i10n.nota_reject_desc,
        "cancelled": i10n.nota_cancel_desc,
        "ready": i10n.nota_ready_desc,
        "done": i10n.nota_done_desc,
        "auto_done": i10n.nota_auto_done_desc,
        "orElse": ""
      };

      // initial = pending payment
      // waiting = udah di bayar, tunggu response toko
      // process = pesanan di terima toko
      // reject = pesanan ditolak toko
      // ready = pesanan udah siap di antar (khusus delivery)
      // done = pesanan selesai
      // auto_done = pesanan selesai otomatis by system
      // failed = pembayaran gagal
      // cancelled = pembayaran dibatalkan

      _receiptStatusTitle =
          mappingTitle[receiptStatus] ?? mappingTitle["orElse"]!;
      _receiptStatusDesc = mappingDesc[receiptStatus] ?? mappingDesc["orElse"]!;
    }

    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: BlocConsumer<TransactionBloc, TransactionState>(
        bloc: Get.context!.read<TransactionBloc>()
          ..add(TransactionEvent.getTransaction(args.receiptCode)),
        listener: (context, state) {
          state.maybeMap(
              getTransactionSuccess: (r) {
                _transaction = r.response.data;
              },
              addFavoriteTransactionSuccess: (r) {
                if (r.isSuccess) {
                  ErrorPopupWidget.show(
                      "Digiresto", I10n.current.add_favorite_success, () {
                    Get.back();
                  });
                  isFavoriteDone = true;
                } else {
                  ErrorPopupWidget.show("Digiresto", "Tambah Favorit Error",
                      () {
                    Get.back();
                  });
                }
              },
              loadFailure: (e) {
                e.error.maybeMap(
                    addFavoriteTransactionFail: (e) {
                      ErrorPopupWidget.show("Digiresto", "Tambah Favorit Error",
                          () {
                        Get.back();
                      });
                    },
                    orElse: () {});
              },
              orElse: () {});
        },
        builder: (context, state) {
          return state.maybeMap(getTransactionSuccess: (r) {
            _transaction = r.response.data;
            checkStatus();
            return Scaffold(
              appBar: AppBar(
                iconTheme: IconThemeData(
                  color: Colors.white,
                ),
                leading: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () async {
                    // _orderStore.clearCart();
                    if (args.fromOrder) {
                      Get.offAllNamed(Routers.home);
                      getIt<HomeBloc>().add(HomeEvent.refresh());
                      getIt<BottomTabCubit>().changeTab(3);
                      Get.toNamed(Routers.orderHistory);
                    } else {
                      Get.back();
                    }
                  },
                ),
                title: Text(
                  I10n.current.nota_title,
                  style: TextStyle(
                    fontFamily: "roboto",
                    color: Colors.white,
                  ),
                ),
                actions: [
                  IconButton(
                    icon: Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                    onPressed: () async {
                      final directory =
                          (await getApplicationDocumentsDirectory()).path;
                      String fileName =
                          'struct ${_transaction?.outlet?.detail.name ?? ""} - ${args.receiptCode}';
                      var path = '$directory';
                      final screenShot = await screenshotController
                          .captureAndSave(path, fileName: fileName);
                      await Share.shareFiles([screenShot!], text: fileName);
                    },
                  )
                ],
                centerTitle: true,
                backgroundColor: AppColors.red,
              ),
              body: Column(children: [
                Expanded(
                  child: Screenshot(
                    controller: screenshotController,
                    child: Container(
                      //height: double.infinity,
                      color: Colors.grey[200],
                      child: SingleChildScrollView(
                        child: Container(
                            padding: const EdgeInsets.only(
                                left: 10.0,
                                right: 10.0,
                                top: 20.0,
                                bottom: 20.0),
                            child: Column(
                              children: [
                                Text(
                                  _receiptStatusTitle,
                                  style: TextStyle(
                                    color: AppColors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                if (_receiptStatusDesc.isNotEmpty)
                                  SizedBox(height: 5),
                                if (_receiptStatusDesc.isNotEmpty)
                                  Text(
                                    _receiptStatusDesc,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                SizedBox(height: 20),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(AppAssets
                                              .imageTransactionReceipt),
                                          fit: BoxFit.fill)),
                                  //padding: EdgeInsets.all(20),
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20,
                                          bottom: 20,
                                          left: 60,
                                          right: 60),
                                      child: Column(
                                        children: [
                                          Text(
                                            _transaction?.outlet?.detail.name ??
                                                '',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(I10n.current.nota_receipt_code),
                                          SizedBox(height: 5),
                                          Text(
                                            _transaction!.receiptCode,
                                            style: TextStyle(
                                              color: AppColors.red,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(I10n
                                              .current.nota_transaction_date),
                                          SizedBox(height: 5),
                                          Text(df.format(isoParser.parse(
                                              _transaction!.deviceTimestamp
                                                  .toString()))),
                                          SizedBox(height: 5),
                                          Divider(
                                              height: 1, color: Colors.black),
                                          SizedBox(height: 5),
                                          ListView.separated(
                                            shrinkWrap: true,
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            itemCount:
                                                _transaction!.items.length,
                                            itemBuilder: (context, index) =>
                                                _lr(
                                              Text(
                                                  '${_transaction!.items[index].title} ${_transaction!.items[index].qty}x'),
                                              Text(
                                                Rupiah.format(_transaction!
                                                    .items[index].subtotal
                                                    .toString()),
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            separatorBuilder:
                                                (context, index) =>
                                                    SizedBox(height: 5),
                                          ),
                                          SizedBox(height: 5),
                                          Divider(
                                              height: 1, color: Colors.black),
                                          SizedBox(height: 5),
                                          _lr(
                                            Text('Subtotal'),
                                            Text(
                                              Rupiah.format(_transaction!
                                                  .subtotal
                                                  .toString()),
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          ListView.separated(
                                            shrinkWrap: true,
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            itemCount: _transaction!
                                                    .taxesAndServices?.length ??
                                                0,
                                            itemBuilder: (context, index) =>
                                                _lr(
                                              Text(_transaction!
                                                  .taxesAndServices![index]
                                                  .title),
                                              Text(
                                                Rupiah.format(_transaction!
                                                    .taxesAndServices![index]
                                                    .amount
                                                    .toString()),
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            separatorBuilder:
                                                (context, index) =>
                                                    SizedBox(height: 5),
                                          ),
                                          SizedBox(height: 5),
                                          if (_transaction!.salesType ==
                                              'DELIVERY')
                                            _lr(
                                              Text('Delivery'),
                                              Text(
                                                Rupiah.format(_transaction!
                                                    .deliveryAmount
                                                    .toString()),
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          if (_transaction!.roundAmount != 0)
                                            _lr(
                                              Text('Rounding'),
                                              Text(
                                                Rupiah.format(_transaction!
                                                    .roundAmount
                                                    .toString()),
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          SizedBox(height: 5),
                                          if (_transaction!.promos.length != 0)
                                            SizedBox(height: 5),
                                          ListView.separated(
                                            shrinkWrap: true,
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            itemCount:
                                                _transaction!.promos.length,
                                            itemBuilder: (context, index) =>
                                                _lr(
                                              Text(
                                                  '${_transaction!.promos[index].title}'),
                                              Text(
                                                "-" +
                                                    Rupiah.format(_transaction!
                                                        .promos[index].amount
                                                        .toString()),
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            separatorBuilder:
                                                (context, index) =>
                                                    SizedBox(height: 5),
                                          ),
                                          SizedBox(height: 5),
                                          if (_transaction!.roundAmount != 0)
                                            Divider(
                                                height: 1, color: Colors.black),
                                          SizedBox(height: 5),
                                          _lr(
                                            Text(
                                              I10n.current.nota_total_payment,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              Rupiah.format(_transaction!
                                                  .totalPayment
                                                  .toString()),
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Divider(
                                              height: 1, color: Colors.black),
                                          SizedBox(height: 15),
                                          Text(
                                            i10n.nota_thanks_order,
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 0.0, left: 40, right: 40),
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          if ((_receiptStatusDesc == i10n.nota_process_desc ||
                                  _receiptStatusDesc ==
                                      i10n.nota_waiting_desc) &&
                              !isFavoriteDone)
                            ElevatedButton(
                              onPressed: () {
                                Get.context!.read<TransactionBloc>()
                                  ..add(
                                    TransactionEvent.addFavoriteTransaction(
                                      AddFavoriteTransactionParam(
                                        body: AddFavoriteTransactionBodyParam(
                                            receiptCode:
                                                _transaction!.receiptCode),
                                        queryString:
                                            AddFavoriteTransactionQueryParam(),
                                      ),
                                    ),
                                  )
                                  ..add(TransactionEvent.getTransaction(
                                      args.receiptCode));
                              },
                              child: Container(
                                width: double.infinity,
                                height: 44,
                                child: Center(
                                  child: Text(
                                      I10n.current.nota_add_to_favourite,
                                      style: AppFont.textBlack14Bold
                                          .copyWith(color: AppColors.white)),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: AppColors.redD12B34,
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(22.0),
                                  side: BorderSide(
                                    width: 1,
                                    color: AppColors.red,
                                  ),
                                ),
                              ),
                            ),
                          SizedBox(height: 5),
                          ElevatedButton(
                            onPressed: () async {
                              if (args.fromOrder) {
                                Get.offAllNamed(Routers.home);
                                getIt<HomeBloc>().add(HomeEvent.refresh());
                                getIt<BottomTabCubit>().changeTab(3);
                                Get.toNamed(Routers.orderHistory);
                              } else {
                                Get.back();
                              }
                            },
                            child: Container(
                              width: double.infinity,
                              height: 44,
                              child: Center(
                                child: Text(I10n.current.nota_history_payment,
                                    style: AppFont.textBlack14Bold
                                        .copyWith(color: AppColors.white)),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: AppColors.redD12B34,
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(22.0),
                                side: BorderSide(
                                  width: 1,
                                  color: AppColors.red,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          if (_receiptStatusDesc != i10n.nota_process_desc &&
                              _receiptStatusDesc != i10n.nota_waiting_desc)
                            ElevatedButton(
                              onPressed: () {
                                Get.context!.read<TransactionBloc>().add(
                                    TransactionEvent.getTransaction(
                                        args.receiptCode));
                                //
                              },
                              child: Container(
                                width: double.infinity,
                                height: 44,
                                child: Center(
                                  child: Text(
                                      I10n.current.nota_check_status_payment,
                                      style: AppFont.textBlack14Bold
                                          .copyWith(color: AppColors.white)),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: AppColors.redD12B34,
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(22.0),
                                  side: BorderSide(
                                    width: 1,
                                    color: AppColors.red,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            );
          }, orElse: () {
            return Scaffold(
              appBar: AppBar(
                iconTheme: IconThemeData(
                  color: Colors.white,
                ),
                leading: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () async {
                    if (args.fromOrder) {
                      Get.offAllNamed(Routers.home);
                      getIt<HomeBloc>().add(HomeEvent.refresh());
                      getIt<BottomTabCubit>().changeTab(0);
                      Get.toNamed(Routers.orderHistory);
                    } else {
                      Get.back();
                    }
                  },
                ),
                title: Text(
                  I10n.current.nota_title,
                  style: TextStyle(
                    fontFamily: "roboto",
                    color: Colors.white,
                  ),
                ),
                centerTitle: true,
                backgroundColor: AppColors.red,
              ),
              body: StackWithProgress(isLoading: true, children: [
                Container(
                  color: Colors.grey[200],
                ),
              ]),
            );
          });
        },
      ),
    );
  }
}
