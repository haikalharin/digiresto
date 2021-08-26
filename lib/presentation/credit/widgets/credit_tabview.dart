import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/presentation/credit/widgets/credit_menu.dart';
import 'package:flutter/material.dart';

class CreditTabView extends StatelessWidget {
  final String title;
  final String subtitle;
  final List<Widget> menus;
  const CreditTabView({
    Key? key,
    this.title = '',
    this.subtitle = '',
    this.menus = const <CreditMenu>[],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(
            Dimens.defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Styles.creditMenuTitleStyle,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                subtitle,
                style: Styles.creditMenuSubtitleStyle,
              ),
            ],
          ),
        ),
        ...menus
      ],
    );
  }
}
