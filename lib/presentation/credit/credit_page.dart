import 'package:digiresto/application/credit/credit_bloc.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/constants/styles.dart';
import 'package:digiresto/domain/core/utils/common_util.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/widgets/custom_card.dart';
import 'package:digiresto/presentation/credit/recent_history_page.dart';
import 'package:digiresto/presentation/credit/waiting_payment_page.dart';
import 'package:digiresto/presentation/credit/widgets/credit_menu.dart';
import 'package:digiresto/presentation/credit/credit_subcategory_page.dart';
import 'package:digiresto/presentation/credit/widgets/credit_tabview.dart';
import 'package:digiresto/presentation/widgets/top_background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CreditTabController extends GetxController
    with SingleGetTickerProviderMixin {
  RxInt tabIndex = 0.obs;
  final List<Widget> myTabs = [
    Container(
      padding: EdgeInsets.all(15),
      child: Text('Isi Saldo'),
    ),
    Container(
      padding: EdgeInsets.all(15),
      child: Text('Riwayat'),
    ),
  ];

  late TabController controller;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
    controller.addListener(() {
      tabIndex.value = controller.index;
    });
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}

class CreditPage extends StatelessWidget {
  const CreditPage({Key? key}) : super(key: key);

  Widget _widgetLoading() {
    return Center(
      child: CircularProgressIndicator(
        color: AppColors.mainColor,
      ),
    );
  }

  Widget _widgetError() {
    return Center(
      child: Text('Error, please try again'),
    );
  }

  @override
  Widget build(BuildContext context) {
    final CreditTabController _tabx = Get.put(CreditTabController());

    return BlocProvider<CreditBloc>(
      create: (context) => getIt<CreditBloc>()..add(CreditEvent.started()),
      child: BlocBuilder<CreditBloc, CreditState>(
        builder: (context, state) {
          return ListView(
            padding: EdgeInsets.zero,
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      TopBackgound(backgroundColor: AppColors.red),
                      Container(
                        width: double.infinity,
                        child: SvgPicture.asset(
                          'assets/header_credit.svg',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CustomCard(
                        shadowColor: AppColors.red,
                        margin: EdgeInsets.only(
                          top: 200,
                          left: 25,
                          right: 25,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Credit Saya',
                              style: Styles.creditLabelStyle,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            state.maybeMap(
                              orElse: () => _widgetLoading(),
                              loaded: (data) => data.userBalance.fold(
                                (l) => _widgetError(),
                                (userBalance) => Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Rp',
                                      style: Styles.creditCurrencyStyle,
                                    ),
                                    Text(
                                      CommonUtils.currencyFormatOnlyNominal(
                                          double.parse(userBalance.balance)),
                                      style: Styles.creditNominalStyle
                                          .copyWith(height: 1.2),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              child: Icon(
                                Icons.refresh,
                                color: AppColors.mainColor,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  TabBar(
                    indicatorPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    labelPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    controller: _tabx.controller,
                    labelColor: AppColors.mainColor,
                    unselectedLabelColor: AppColors.greyColor,
                    labelStyle: Styles.creditTabStyle,
                    tabs: _tabx.myTabs,
                  ),
                  Obx(
                    () => SizedBox(
                      width: double.infinity,
                      child: [
                        state.maybeMap(
                          orElse: () => _widgetLoading(),
                          loaded: (data) => data.listTopUpMethod.fold(
                            (failure) => _widgetError(),
                            (list) => CreditTabView(
                              title: 'Isi Saldo',
                              subtitle: 'Pilih metode yang diinginkan',
                              menus: list.unlock
                                  .map(
                                    (topupMethod) => topupMethod.isEnable
                                        ? CreditMenu(
                                            assetSvgIcon: CreditAssetIcon(
                                                    topupMethod.destination)
                                                .asset,
                                            label: topupMethod.title,
                                            onTap: () => Get.to(
                                                CreditSubCategoryPage(
                                                    topupMethod)),
                                          )
                                        : SizedBox(),
                                  )
                                  .toList(),
                            ),
                          ),
                        ),
                        CreditTabView(
                          title: 'Riwayat Transaksi',
                          subtitle: 'Lihat riwayat transaksi yang diinginkan',
                          menus: [
                            CreditMenu(
                              assetSvgIcon: 'assets/credit_waiting_payment.svg',
                              label: 'Menunggu Pembayaran',
                              onTap: () => Get.to(WaitingPaymentPage()),
                            ),
                            CreditMenu(
                              assetSvgIcon: 'assets/credit_history.svg',
                              label: 'Riwayat Terakhir',
                              onTap: () => Get.to(RecentHistoryPage()),
                            ),
                          ],
                        ),
                      ][_tabx.tabIndex.value],
                    ),
                  )
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
