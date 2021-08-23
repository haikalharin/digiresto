import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/credit/top_up_method.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/core/widgets/custom_scafold.dart';
import 'package:digiresto/presentation/core/widgets/custom_textfield.dart';
import 'package:digiresto/presentation/credit/widgets/nominal_widget.dart';
import 'package:flutter/material.dart';

class TopUpCreditPage extends StatefulWidget {
  final TopUpSubCategory bankItem;
  const TopUpCreditPage(
    this.bankItem, {
    Key? key,
  }) : super(key: key);

  @override
  _TopUpCreditPageState createState() => _TopUpCreditPageState();
}

class _TopUpCreditPageState extends State<TopUpCreditPage> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomScafold(
      showBackButton: true,
      title: 'Isi saldo',
      body: Stack(
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
                      prefix: Text(
                        'Rp ',
                        style: Styles.creditNominalSmallStyle.copyWith(
                          color: controller.text == ''
                              ? AppColors.greyColor
                              : AppColors.mainColor,
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
              onPressed: () {},
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
    );
  }
}
