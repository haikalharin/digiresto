import 'package:digiresto/domain/core/constants/font.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyWidget extends StatelessWidget {
  final void Function() onRefresh;
  final String? imageAsset;
  final bool? isSvg;
  const EmptyWidget({
    Key? key,
    required this.onRefresh,
    required this.imageAsset,
    this.isSvg = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        fit: StackFit.expand,
        children: [
          RefreshIndicator(child: ListView(), onRefresh: () async => onRefresh),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isSvg == true
                  ? SvgPicture.asset(
                      imageAsset ?? "-",
                    )
                  : Image.asset(
                      imageAsset ?? "-",
                      height: 80,
                      width: 80,
                    ),
              SizedBox(height: 13),
              isSvg == true
                  ? Container()
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        "We can't find nearby restaurant you're looking for",
                        style: AppFont.textBlack13Regular.copyWith(
                          color: AppColors.black,
                          height: 1.2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
            ],
          ),
        ],
      ),
    );
  }
}
