import 'package:digiresto/domain/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileMenuWidget extends StatelessWidget {
  final String label;
  final String? assetFile;
  final void Function()? onTap;
  final Widget? suffixWidget;
  const ProfileMenuWidget({
    Key? key,
    required this.label,
    this.assetFile,
    this.onTap,
    this.suffixWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Ink(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.defaultMargin,
                vertical: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: assetFile == null
                            ? SizedBox(
                                width: 20,
                              )
                            : SvgPicture.asset(assetFile!),
                      ),
                      Text(
                        label,
                        style: Styles.profileMenuLabelStyle,
                      ),
                    ],
                  ),
                  suffixWidget ??
                      Icon(
                        Icons.arrow_forward_rounded,
                        size: 27,
                      ),
                ],
              ),
            ),
          ),
        ),
        Divider(
          thickness: 12,
          color: AppColors.dividerColor,
        ),
      ],
    );
  }
}
