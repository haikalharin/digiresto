import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/presentation/core/widgets/custom_scafold.dart';
import 'package:flutter/material.dart';

class AboutDigiresto extends StatelessWidget {
  const AboutDigiresto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScafold(
      showBackButton: true,
      title: 'Tentang Digiresto',
      body: ListView(
        padding: EdgeInsets.all(Dimens.defaultMargin),
        children: [
          Text(
            'Self Order Resto',
            style: Styles.dialogTitleStyle,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Digiresto adalah platform teknologi Food & Beverages yang membantu pelaku usaha untuk mengembangkan bisnis serta memfasilitasi merchant untuk terhubung ke jutaan pelanggan potensial melalui platform messaging no.1 di dunia (WhatsApp)',
            style: Styles.dialogSubtitleStyle,
          )
        ],
      ),
    );
  }
}
