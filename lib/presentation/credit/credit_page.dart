import 'package:badges/badges.dart';
import 'package:digiresto/application/credit/credit_bloc.dart';
import 'package:digiresto/application/credit/credit_tab_controller.dart';
import 'package:digiresto/application/landing/bottom_tab_cubit.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/constants/styles.dart';
import 'package:digiresto/domain/core/utils/common_util.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
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

class CreditPage extends StatelessWidget {
  const CreditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreditBloc>(
      create: (context) => getIt<CreditBloc>()..add(CreditEvent.started()),
      child: CreditWidget(),
    );
  }
}

class CreditWidget extends StatelessWidget {
  const CreditWidget({Key? key}) : super(key: key);

  Widget _widgetLoading() {
    return Center(
      child: CircularProgressIndicator(
        color: AppColors.mainColor,
      ),
    );
  }

  Widget _widgetError() {
    return Center(
      child: Text(I10n.current.error_message_failed_get_response),
    );
  }

  @override
  Widget build(BuildContext context) {
    I10n i10n = I10n.of(context);
    final myTabs = <Widget>[
      Container(
        padding: EdgeInsets.all(15),
        child: Text(i10n.credit_title_1),
      ),
      BlocBuilder<CreditBloc, CreditState>(builder: (context, state) {
        final int count = state.countTopupPending.fold(
          () => 0,
          (failureOrSuccess) => failureOrSuccess.fold(
            (l) => 0,
            (count) => count,
          ),
        );
        return Container(
          padding: EdgeInsets.all(15),
          child: Badge(
            badgeColor: AppColors.red,
            showBadge: count > 0,
            position: BadgePosition.topEnd(top: -8, end: -20),
            badgeContent: Text(
              count.toString(),
              style: Styles.badgeContentStyle.copyWith(fontSize: 12),
            ),
            padding: EdgeInsets.all(6),
            child: Text(
              i10n.credit_title_2,
            ),
          ),
        );
      }),
    ];
    final CreditTabController _tabx =
        Get.put(CreditTabController(myTabs), permanent: false);

    return BlocConsumer<CreditBloc, CreditState>(
      listener: (context, state) {
        final count = state.countTopupPending.fold(
          () => 0,
          (failureOrSuccess) => failureOrSuccess.fold(
            (l) => 0,
            (count) => count,
          ),
        );
        getIt<BottomTabCubit>().checkCreditTab();
      },
      builder: (context, state) {
        late final _bloc = BlocProvider.of<CreditBloc>(context);
        final int count = state.countTopupPending.fold(
          () => 0,
          (failureOrSuccess) => failureOrSuccess.fold(
            (l) => 0,
            (count) => count,
          ),
        );
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
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.only(
                        top: 200,
                        left: 25,
                        right: 25,
                      ),
                      child: Stack(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                i10n.credit_me,
                                style: Styles.creditLabelStyle,
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              state.userBalance.fold(
                                () => _widgetLoading(),
                                (data) => data.fold(
                                  (l) => _widgetError(),
                                  (userBalance) => Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                            ],
                          ),
                          Positioned.fill(
                            child: Container(
                              alignment: Alignment.bottomRight,
                              child: GestureDetector(
                                onTap: state.userBalance.fold(
                                    () => null,
                                    (_) => () => _bloc
                                        .add(CreditEvent.refreshBalance())),
                                child: SvgPicture.asset(
                                  'assets/refresh.svg',
                                  color: AppColors.mainColor,
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                            ),
                          ),
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
                  tabs: myTabs,
                ),
                Obx(
                  () => SizedBox(
                    width: double.infinity,
                    child: [
                      state.listTopUpMethod.fold(
                        () => _widgetLoading(),
                        (data) => data.fold(
                          (failure) => _widgetError(),
                          (list) => CreditTabView(
                            title: i10n.credit_title_1,
                            subtitle: i10n.credit_desc_1,
                            menus: list.unlock
                                .map(
                                  (topupMethod) => topupMethod.isEnable
                                      ? CreditMenu(
                                          assetSvgIcon: CreditByDestination(
                                                  topupMethod.destination)
                                              .asset,
                                          label: CreditByDestination(
                                                  topupMethod.destination)
                                              .title,
                                          onTap: () => Get.to(
                                                  CreditSubCategoryPage(
                                                      topupMethod))
                                              ?.then(
                                            (value) => _bloc.add(
                                              CreditEvent
                                                  .getCountTopupPending(),
                                            ),
                                          ),
                                        )
                                      : SizedBox(),
                                )
                                .toList(),
                          ),
                        ),
                      ),
                      CreditTabView(
                        title: i10n.credit_title_2,
                        subtitle: i10n.credit_desc_2,
                        menus: [
                          CreditMenu(
                            assetSvgIcon: 'assets/credit_waiting_payment.svg',
                            label: i10n.credit_pending_topup,
                            badgeCount: count,
                            onTap: () => Get.to(WaitingPaymentPage())?.then(
                              (value) => _bloc.add(
                                CreditEvent.getCountTopupPending(),
                              ),
                            ),
                          ),
                          CreditMenu(
                            assetSvgIcon: 'assets/credit_history.svg',
                            label: i10n.credit_recent_history,
                            onTap: () => Get.to(RecentHistoryPage())?.then(
                              (value) => _bloc.add(
                                CreditEvent.getCountTopupPending(),
                              ),
                            ),
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
    );
  }
}
