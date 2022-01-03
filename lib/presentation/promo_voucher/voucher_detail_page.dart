import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/constants/font.dart';
import 'package:digiresto/domain/core/utils/random/random_images.dart';
import 'package:digiresto/domain/core/utils/utils.dart';
import 'package:digiresto/domain/promo_voucher/voucher_detail_arguments.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/custom_scafold.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class VoucherDetailPage extends HookWidget {
  final VoucherDetailArguments args;

  VoucherDetailPage({required this.args});

  @override
  Widget build(BuildContext context) {
    return CustomScafold(
      title: I10n.current.promo_for_you,
      showBackButton: true,
      resizeToAvoidBottomInset: false,
      appBarColor: AppColors.white,
      iconBackColor: AppColors.black,
      body: StackWithProgress(
        children: [
          Column(
            children: [
              Container(
                height: 10,
                color: AppColors.greyColor.withOpacity(0.2),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: FadeInImage.assetNetwork(
                            placeholder: RandomImages.getImage().assetName,
                            image: args.voucher.url ?? '',
                            imageErrorBuilder: (context, obj, stacktrace) =>
                                Image(
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
                        SizedBox(height: 8),
                        _titleAndSubtitle(
                            title: I10n.current.voucher_period,
                            subtitle:
                                '${Utils.validUntil(args.voucher.startDate, time: args.voucher.startTime, useFullFormat: true)} - ${Utils.validUntil(args.voucher.endDate, time: args.voucher.endTime, useFullFormat: true)}'),
                        _titleAndSubtitle(title: args.voucher.description?? ''),
                        _titleAndSubtitle(
                            title:
                                '${I10n.current.promo_code}: ${args.voucher.code}'),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  border: Border(
                    top: BorderSide(color: AppColors.greyColor, width: 0.8),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    VoucherDetailArguments result =
                        args.copyWith(isUseVoucher: !args.isUseVoucher);
                    Get.back(result: result);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: !args.isUseVoucher
                        ? AppColors.red
                        : AppColors.yellowButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(!args.isUseVoucher
                      ? I10n.current.use_voucher
                      : I10n.current.use_voucher_later),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _titleAndSubtitle({required String title, String? subtitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(title, style: AppFont.textBlack14Bold),
        ),
        if (subtitle != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(subtitle, style: AppFont.textBlack14Regular),
          ),
      ],
    );
  }
}
