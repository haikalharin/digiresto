import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/generated/assets.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/complain/text_formfield_custom.dart';
import 'package:digiresto/presentation/core/widgets/collapsed_scafold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'custome_complain_button.dart';

class ComplainPage extends StatelessWidget {
  const ComplainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> listCategory = [
      'Pesanan Tidak Sesuai',
      'Packing Rusak',
      'Driver Bermasalah',
      'Makanan Basi,'
    ];

    return CollapsedScafold(
      showBackButton: true,
      title: I10n.current.komplain_title,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _chooseCategory(listCategory),
            Divider(
              color: AppColors.dividerColor,
              thickness: 2,
            ),
            _formInputComplain(),
            customerServiceCTA(),
            buttonSend(),
          ],
        ),
      ),
    );
  }

  Widget tabItem(String name) {
    return Container(
      margin: EdgeInsets.only(right: 8, bottom: 8, top: 4),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.white,
            border: Border.all(color: AppColors.redYoung)),
        child: Text(
          name,
          style: Styles.boldRedStyle,
        ),
      ),
    );
  }

  Widget customerServiceCTA() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 8, horizontal: Dimens.defaultMargin),
      child: Row(
        children: [
          SvgPicture.asset(Assets.assetsProfileCustomerService),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Hubungi Customer Service',
              style: Styles.boldRedStyle,
            ),
          )
        ],
      ),
    );
  }

  Widget buttonSend() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      child: CustomButtonComplain(
        onPressed: () {},
        label: 'Kirim',
        fontColor: AppColors.white,
        color: AppColors.redYoung,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  Widget imageAttachmen() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 8, right: 8),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.greyCACACA),
        ),
        Flexible(
          child: Text(
            'Lampirkan bukti pendukung agar kami paham masalahmu (maks. 1 foto format .jpg, .jpeg, dan .png ukurang maks 10MB)',
            style: TextStyle(
              color: AppColors.greyRating,
              fontSize: 14,
            ),
          ),
        )
      ],
    );
  }

  Widget _formInputComplain() {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.defaultMargin,
          vertical: 8,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nomor Pesanan',
              style: Styles.ratingLabelStyle,
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 12,
            ),
            CustomTextFieldComplain(
              borderColor: AppColors.greyBorder,
              hintText: 'Cobaaa',
              fillColor: AppColors.white,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Ceritakan Masalahmu',
              style: Styles.ratingLabelStyle,
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 12,
            ),
            CustomTextFieldComplain(
              maxLength: 100,
              maxLines: 5,
              borderColor: AppColors.greyBorder,
              hintText: 'Detail Masalah',
              fillColor: AppColors.white,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'max. 100 karakter',
              style: TextStyle(
                fontSize: 12,
                color: AppColors.greyField,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Lampirkan',
              style: Styles.ratingLabelStyle,
              textAlign: TextAlign.left,
            ),
            imageAttachmen(),
            SizedBox(
              height: 12,
            ),
            Text(
              'Butuh bantuan lain? ',
              style: Styles.ratingLabelStyle,
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }

  Widget _chooseCategory(List<String> listCategory) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.defaultMargin,
          vertical: Dimens.defaultMargin,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              I10n.current.review_title,
              style: Styles.ratingLabelStyle,
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 12,
            ),
            Wrap(
                children: listCategory.map((item) {
              return tabItem(item);
            }).toList())
          ],
        ),
      ),
    );
  }
}
