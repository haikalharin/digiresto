import 'package:digiresto/domain/core/constants/font.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:flutter/material.dart';

class EmptyOutletWidget extends StatelessWidget {
  const EmptyOutletWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppAssets.emptyOutlet,
            height: 128,
            width: 128,
          ),
          SizedBox(height: 13),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24
            ),
            child: Text(
              "We can't find nearby restaurant you're looking for",
              style: AppFont.textBlack15Regular.copyWith(
                color: AppColors.black,
                height: 1.2,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
