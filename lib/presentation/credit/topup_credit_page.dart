import 'package:digiresto/application/credit/topup_credit/top_up_credit_bloc.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/input_formatter.dart';
import 'package:digiresto/domain/credit/top_up_method.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/core/widgets/custom_scafold.dart';
import 'package:digiresto/presentation/core/widgets/custom_textfield.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:digiresto/presentation/credit/topup_details_page.dart';
import 'package:digiresto/presentation/credit/widgets/nominal_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class TopUpCreditPage extends StatelessWidget {
  final TopUpSubCategory bankItem;
  final String destination;
  const TopUpCreditPage(this.bankItem, this.destination, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TopUpCreditBloc>(
      create: (context) => getIt<TopUpCreditBloc>()
        ..add(TopUpCreditEvent.changeDestination(destination)),
      child: TopUpCreditWidget(bankItem),
    );
  }
}

class TopUpCreditWidget extends StatefulWidget {
  final TopUpSubCategory bankItem;
  const TopUpCreditWidget(
    this.bankItem, {
    Key? key,
  }) : super(key: key);

  @override
  _TopUpCreditWidgetState createState() => _TopUpCreditWidgetState();
}

class _TopUpCreditWidgetState extends State<TopUpCreditWidget> {
  final TextEditingController controller = TextEditingController();
  late final _topUpBloc = BlocProvider.of<TopUpCreditBloc>(context);

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      _topUpBloc.add(TopUpCreditEvent.nominalChanged(controller.text));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TopUpCreditBloc, TopUpCreditState>(
      listener: (context, state) {
        widget.bankItem.destination;
        state.topUpVAfailureOrSuccess.fold(
          () => null,
          (data) => data.fold(
            (failure) => Get.defaultDialog(
              title: 'Error',
              middleText: failure.map(
                noInternet: (_) => 'No Internet',
                serverException: (e) => e.message ?? 'Server Error',
                noData: (_) => 'Failed',
                unexpected: (_) => 'Error unexpected',
              ),
            ),
            (va) => Get.off(
              TopUpDetailsPage(
                TopUpDetailsType.TOP_UP_VA,
                topUpVADetails: va,
              ),
            ),
          ),
        );
        state.topUpBankfailureOrSuccess.fold(
          () => null,
          (data) => data.fold(
            (failure) => Get.defaultDialog(
              title: 'Error',
              middleText: failure.map(
                noInternet: (_) => 'No Internet',
                serverException: (e) => e.message ?? 'Server Error',
                noData: (_) => 'Failed',
                unexpected: (_) => 'Error unexpected',
              ),
            ),
            (bank) => Get.off(
              TopUpDetailsPage(
                TopUpDetailsType.TOP_UP_BANK,
                topUpBankDetails: bank,
              ),
            ),
          ),
        );
      },
      builder: (context, state) => CustomScafold(
        showBackButton: true,
        title: 'Isi saldo',
        body: StackWithProgress(
          isLoading: state.isSubmitting,
          children: [
            ListView(
              padding: EdgeInsets.zero,
              children: [
                Divider(
                  thickness: 12,
                  color: AppColors.dividerColor,
                ),
                Padding(
                  padding: EdgeInsets.all(Dimens.defaultMargin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Top Up Digiresto Credit via ${widget.bankItem.title}',
                        style: Styles.creditTopupTitleStyle,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Pilih jumlah yang diinginkan ',
                        style: Styles.creditMenuSubtitleStyle,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: NominalWidget(
                              nominal: '25.000',
                              onTap: () => controller.text = '25.000',
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: NominalWidget(
                              nominal: '50.000',
                              onTap: () => controller.text = '50.000',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: NominalWidget(
                              nominal: '100.000',
                              onTap: () => controller.text = '100.000',
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: NominalWidget(
                              nominal: '150.000',
                              onTap: () => controller.text = '150.000',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 12,
                  color: AppColors.dividerColor,
                ),
                Padding(
                  padding: EdgeInsets.all(Dimens.defaultMargin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Atau masukkan jumlah secara manual minimal ',
                        style: Styles.creditMenuSubtitleStyle,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomTextField(
                        controller: controller,
                        autovalidateMode: state.showError
                            ? AutovalidateMode.always
                            : AutovalidateMode.disabled,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          CurrencyTextFormatter(),
                        ],
                        keyboardType: TextInputType.number,
                        prefix: Padding(
                          padding: EdgeInsets.only(left: 15, right: 5),
                          child: Text(
                            'Rp ',
                            style: Styles.creditNominalSmallStyle.copyWith(
                              color: controller.text == ''
                                  ? AppColors.greyColor
                                  : AppColors.mainColor,
                            ),
                          ),
                        ),
                        hintText: '0',
                        hintStyle: Styles.creditNominalSmallStyle
                            .copyWith(color: AppColors.greyColor),
                        inputStyle: Styles.creditNominalSmallStyle,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: CustomButton(
                label: 'Isi Saldo',
                onPressed: () => _topUpBloc.add(
                  TopUpCreditEvent.topUpSubmitted(
                    widget.bankItem.param.bankCode,
                  ),
                ),
                color: AppColors.mainColor,
                fontColor: Colors.white,
                borderRadius: BorderRadius.circular(22),
                margin: EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: Dimens.defaultMargin,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
