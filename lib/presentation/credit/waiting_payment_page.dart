import 'package:digiresto/application/credit/waiting_payment/waiting_payment_bloc.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/core/widgets/custom_dialog.dart';
import 'package:digiresto/presentation/core/widgets/custom_scafold.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:digiresto/presentation/credit/widgets/topup_pending_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class WaitingPaymentPage extends StatelessWidget {
  const WaitingPaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WaitingPaymentBloc>(
      create: (context) => getIt<WaitingPaymentBloc>()
        ..add(
          WaitingPaymentEvent.started(),
        ),
      child: WaitingPaymentWidget(),
    );
  }
}

class WaitingPaymentWidget extends StatefulWidget {
  const WaitingPaymentWidget({Key? key}) : super(key: key);

  @override
  _WaitingPaymentWidgetState createState() => _WaitingPaymentWidgetState();
}

class _WaitingPaymentWidgetState extends State<WaitingPaymentWidget> {
  late final _bloc = BlocProvider.of<WaitingPaymentBloc>(context);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WaitingPaymentBloc, WaitingPaymentState>(
      listener: (context, state) {},
      builder: (context, state) {
        return CustomScafold(
          showBackButton: true,
          title: 'Menunggu Pembayaran',
          body: StackWithProgress(
            isLoading: state.maybeMap(
              orElse: () => false,
              loading: (_) => true,
            ),
            children: [
              state.map(
                initial: (_) => Container(),
                loading: (_) => Center(
                  child: CircularProgressIndicator(),
                ),
                loadFailure: (data) => Center(
                  child: Text(
                    data.failure.map(
                      noInternet: (_) => 'No Internet',
                      serverException: (e) => e.message ?? 'Server Error',
                      noData: (_) => 'Belum ada transaksi',
                      unexpected: (_) => 'Unknown Error',
                    ),
                  ),
                ),
                loadSuccess: (data) => data.listTopUpPending.isEmpty
                    ? Center(
                        child: Text('Belum ada transaksi'),
                      )
                    : ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          Divider(
                            thickness: 12,
                            color: AppColors.dividerColor,
                          ),
                          ...data.listTopUpPending
                              .map(
                                (pending) => TopUpPendingItem(
                                  pending,
                                  onTapDelete: (billingId) => Get.dialog(
                                    CustomDialog(
                                      backgroundColor: Colors.white,
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            'Digiresto',
                                            style: Styles.dialogTitleStyle,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Apakah anda yakin untuk membatalkan Top Up ini?',
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: CustomButton(
                                                  onPressed: () => Get.back(),
                                                  label: 'Cancel',
                                                  borderColor:
                                                      AppColors.mainColor,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Expanded(
                                                child: CustomButton(
                                                  width: 100,
                                                  onPressed: () {
                                                    _bloc.add(
                                                        WaitingPaymentEvent
                                                            .cancelTopup(
                                                                billingId));
                                                    Get.back();
                                                  },
                                                  label: 'Ok',
                                                  fontColor: Colors.white,
                                                  borderColor:
                                                      AppColors.mainColor,
                                                  color: AppColors.mainColor,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                              .toList()
                        ],
                      ),
              ),
            ],
          ),
        );
      },
    );
  }
}
