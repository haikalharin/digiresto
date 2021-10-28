import 'package:digiresto/application/profile/order_details/cancel_page_controller.dart';
import 'package:digiresto/application/profile/order_details/order_details_bloc.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/widgets/base_dialog_error.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/core/widgets/custom_dialog.dart';
import 'package:digiresto/presentation/core/widgets/custom_scafold.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:digiresto/presentation/core/widgets/checklist_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class CancelOrderPage extends StatelessWidget {
  final String receiptCode;

  const CancelOrderPage(this.receiptCode, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<OrderDetailsBloc>(),
      child: CancelOrderWidget(receiptCode),
    );
  }
}

class CancelOrderWidget extends StatelessWidget {
  final String receiptCode;
  const CancelOrderWidget(this.receiptCode, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late final _orderDetailsBloc = BlocProvider.of<OrderDetailsBloc>(context);
    return CustomScafold(
      showBackButton: true,
      centerTitle: false,
      iconBackColor: Colors.white,
      appBarColor: AppColors.mainColor,
      titleWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Batalkan Transaksi',
            style: Styles.appBarTitleStyle.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
          Text(
            'Saya membatalkan pesanan saya karena...',
            style: Styles.appBarTitleStyle.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: BlocConsumer<OrderDetailsBloc, OrderDetailsState>(
        bloc: _orderDetailsBloc
          ..add(OrderDetailsEvent.cancelPageOpen(receiptCode)),
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            loadFailure: (_state) {
              _state.failure.maybeMap(
                orElse: () {},
                generalError: (error) {
                  ErrorDialog().showError(
                      error: error.message!,
                      onClose: () {
                        Get.back();
                      });
                },
              );
            },
            loadCancelPage: (_state) => _state.submitOption.fold(
              () {},
              (a) => Get.dialog(
                CustomDialog(
                  backgroundColor: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Transaksi dibatalkan',
                        style: Styles.dialogTitleStyle,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CustomButton(
                        onPressed: () => Get.back(),
                        color: Colors.white,
                        borderColor: AppColors.mainColor,
                        label: 'Ok',
                      ),
                    ],
                  ),
                ),
              ).then(
                (value) => Get.back(),
              ),
            ),
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => Center(
              child: CircularProgressIndicator(),
            ),
            loadFailure: (_state) => Center(
              child: Text(
                _state.failure.maybeMap(
                  orElse: () => 'Unknown Error',
                  noData: (_) => 'No Data',
                  noInternet: (_) => 'No Internet',
                  serverError: (_) => 'Server Error',
                ),
              ),
            ),
            loadCancelPage: (_state) {
              final CancelPageController _controller = Get.put(
                CancelPageController(),
                permanent: false,
              );
              return StackWithProgress(
                children: [
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: _state.cancelReasons.length,
                    itemBuilder: (context, index) {
                      final item = _state.cancelReasons[index];
                      final itemIndex = _state.cancelReasons.indexOf(item);
                      return Obx(
                        () => InkWell(
                          onTap: () {
                            debugPrint('check');
                            _controller.changeValue(itemIndex);
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CheckList(
                                value: itemIndex,
                                groupValue: _controller.selectedId.value,
                                label: item,
                              ),
                              Divider(
                                height: 1,
                                thickness: 1,
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  Positioned(
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: CustomButton(
                      onPressed: () => _orderDetailsBloc.add(
                        OrderDetailsEvent.cancelSubmitted(
                          reasonList: _state.cancelReasons,
                          receiptCode: receiptCode,
                          reason: _state
                              .cancelReasons[_controller.selectedId.value],
                        ),
                      ),
                      margin: EdgeInsets.all(30),
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.mainColor,
                      fontColor: Colors.white,
                      label: 'Kirim',
                    ),
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }
}
