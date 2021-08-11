import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/intro/intro.dart';
import 'package:flutter/material.dart';

class IntroWidget extends StatelessWidget {
  final Intro intro;
  const IntroWidget(this.intro, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          intro.image,
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 26,
            ),
            child: Column(
              children: [
                Text(
                  intro.title,
                  style: Styles.introTitleStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 13,
                ),
                Text(
                  intro.description,
                  style: Styles.introDescStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
