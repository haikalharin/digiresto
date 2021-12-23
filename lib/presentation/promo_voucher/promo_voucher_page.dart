import 'package:digiresto/application/promo_voucher/promo_voucher_bloc.dart';
import 'package:digiresto/domain/core/constants/assets.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/constants/font.dart';
import 'package:digiresto/domain/core/utils/random/random_images.dart';
import 'package:digiresto/domain/core/utils/utils.dart';
import 'package:digiresto/domain/order/order_detail_view_argument.dart';
import 'package:digiresto/domain/promo_voucher/entity/promo_outlet_response.dart';
import 'package:digiresto/domain/promo_voucher/entity/voucher_outlet_response.dart';
import 'package:digiresto/domain/promo_voucher/voucher_detail_arguments.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/custom_scafold.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class PromoVoucherPage extends HookWidget {
  final OrderDetailViewArgument args;

  const PromoVoucherPage({required this.args});

  @override
  Widget build(BuildContext context) {
    final controller = useTabController(initialLength: 2);
    final instance = getIt<PromoVoucherBloc>();

    useEffect(() {
      controller.addListener(() {
        if (controller.indexIsChanging) {
          switch (controller.index) {
            case 0:
              instance.add(PromoVoucherEvent.getPromoOutlet(
                  outletId: args.outletId, merchantId: args.merchantId));
              break;
            case 1:
              instance.add(PromoVoucherEvent.getVoucherOutlet(
                  outletId: args.outletId, merchantId: args.merchantId));
              break;
          }
        }
      });
    }, [controller]);

    final promoState = useState<List<PromoOutlet>>([]);
    final voucherState = useState<List<Datum>>([]);

    return BlocProvider<PromoVoucherBloc>(
      create: (_) => instance
        ..add(
          PromoVoucherEvent.getPromoOutlet(
              outletId: args.outletId, merchantId: args.merchantId),
        ),
      child: BlocConsumer<PromoVoucherBloc, PromoVoucherState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {
              promoState.value = [];
              voucherState.value = [];
            },
            loadFailure: (s) => print('print => loadFailure $s'),
            getPromoOutletSuccess: (s) => promoState.value = s.promos.toList(),
            getVoucherOutletSuccess: (s) =>
                voucherState.value = s.vouchers.toList(),
          );
        },
        builder: (context, state) => StackWithProgress(
          isLoading: state.maybeMap(orElse: () => false, loading: (_) => true),
          children: [
            DefaultTabController(
              length: controller.length,
              child: CustomScafold(
                title: I10n.current.promo_for_you,
                showBackButton: true,
                resizeToAvoidBottomInset: false,
                appBarColor: AppColors.white,
                iconBackColor: AppColors.black,
                body: Column(
                  children: [
                    Container(
                      height: 10,
                      color: AppColors.greyColor.withOpacity(0.2),
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              color: AppColors.greyColor, width: 0.8),
                        ),
                      ),
                      child: TabBar(
                        controller: controller,
                        tabs: [
                          Tab(text: I10n.current.promo_merchant),
                          Tab(text: I10n.current.my_voucher),
                        ],
                        labelStyle: AppFont.textRed14Bold,
                        labelColor: AppColors.red,
                        unselectedLabelColor: AppColors.greyColor,
                        indicatorColor: AppColors.redTabBar,
                      ),
                    ),
                    Flexible(
                      child: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          state.maybeMap(
                              orElse: () => Container(),
                              getPromoOutletSuccess: (data) =>
                                  _promoBodyTab(context, promoState.value),
                              getVoucherOutletSuccess: (data) =>
                                  _voucherBodyTab(context, voucherState.value)),
                          state.maybeMap(
                              orElse: () => Container(),
                              getPromoOutletSuccess: (data) =>
                                  _promoBodyTab(context, promoState.value),
                              getVoucherOutletSuccess: (data) =>
                                  _voucherBodyTab(context, voucherState.value)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _voucherBodyTab(BuildContext context, List<Datum> items) {
    return RefreshIndicator(
      child: items.isEmpty
          ? ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: Get.height * 0.2,
                        ),
                        SvgPicture.asset(AppAssets.emptyStateVoucher),
                        Text(
                          I10n.current.voucher_not_available,
                          style: AppFont.textBlack19Bold,
                        ),
                        Text(
                          I10n.current.voucher_not_available_info,
                          style: AppFont.textBlack14Regular,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          : ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              itemBuilder: (context, index) => _itemVoucher(items[index]),
              itemCount: items.length,
              separatorBuilder: (BuildContext context, int index) => Container(
                height: 10,
              ),
            ),
      onRefresh: () async => context.read<PromoVoucherBloc>().add(
            PromoVoucherEvent.refreshVoucherOutlet(
                outletId: args.outletId, merchantId: args.merchantId),
          ),
    );
  }

  Widget _promoBodyTab(BuildContext context, List<PromoOutlet> items) {
    return RefreshIndicator(
      child: items.isEmpty
          ? ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: Get.height * 0.2,
                        ),
                        SvgPicture.asset(AppAssets.emptyStatePromo),
                        Text(
                          I10n.current.promo_not_available,
                          style: AppFont.textBlack19Bold,
                        ),
                        Text(
                          I10n.current.promo_not_available_info,
                          style: AppFont.textBlack14Regular,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          : ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              itemBuilder: (context, index) => index == 0
                  ? _infoPromo(items[index])
                  : _itemPromo(items[index]),
              itemCount: items.length,
              separatorBuilder: (BuildContext context, int index) => Container(
                height: 10,
              ),
            ),
      onRefresh: () async => context.read<PromoVoucherBloc>().add(
            PromoVoucherEvent.refreshPromoOutlet(
                outletId: args.outletId, merchantId: args.merchantId),
          ),
    );
  }

  Widget _itemVoucher(Datum item) {
    const double radius = 8;
    return GestureDetector(
      onTap: () {
        Get.toNamed(
          Routers.voucherDetailPage,
          arguments: VoucherDetailArguments(
              voucher: item, argument: args, isUseVoucher: false),
        )?.then(
          (value) => Get.back(result: value),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.white,
            border: Border.all(color: AppColors.greyColor),
            borderRadius: BorderRadius.circular(radius),
            boxShadow: [
              BoxShadow(
                color: AppColors.greyColor,
                blurRadius: 2,
                spreadRadius: 2,
              )
            ]),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radius),
                topRight: Radius.circular(radius),
              ),
              child: FadeInImage.assetNetwork(
                placeholder: RandomImages.getImage().assetName,
                image: item.url,
                imageErrorBuilder: (context, obj, stacktrace) => Image(
                  image: RandomImages.getImage(),
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(AppAssets.iconVouchers),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(item.code, style: AppFont.textBlack14Bold),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: SvgPicture.asset(AppAssets.iconTimeLimited),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                              '${I10n.current.voucher_valid_until} ${Utils.validUntil(item.endDate, time: item.endTime)}',
                              style: AppFont.textBlack14Regular),
                        ),
                      ),
                      Text(
                        I10n.current.use_voucher,
                        style: AppFont.textRed14Bold,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _infoPromo(PromoOutlet item) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: AppColors.green54C30F.withOpacity(0.3),
              borderRadius: BorderRadius.circular(16)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(AppAssets.iconInformation),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    I10n.current.promo_info,
                    style: AppFont.textBlack12Regular
                        .copyWith(color: AppColors.green),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16),
        _itemPromo(item),
      ],
    );
  }

  Widget _itemPromo(PromoOutlet item) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.imageBackgroundPromo),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16).copyWith(bottom: 12),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 32),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppAssets.imagePromoVoucher,
                    height: 50,
                    width: 50,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.name, style: AppFont.textBlack14Bold),
                          Text(
                            Utils.createBulletPoint(item.description),
                            style: AppFont.textBlack12Regular,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    SvgPicture.asset(AppAssets.iconTimeLimited),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        '${I10n.current.voucher_valid_until} ${Utils.validUntil(item.endDate, time: item.endTime)}',
                        style: AppFont.textBlack13Regular,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
