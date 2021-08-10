import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:flutter/material.dart';

class DigirestoTextFieldWidget extends StatelessWidget {
  final ValueChanged? onFieldSubmitted;
  final ValueChanged? onChanged;
  final TextEditingController textController;
  final String hintText;
  final Icon? prefixIcon;
  final String title;
  final bool enabled;
  const DigirestoTextFieldWidget(
      {Key? key,
      this.onFieldSubmitted,
      required this.textController,
      this.onChanged,
      required this.hintText,
      this.prefixIcon,
      required this.title,
      this.enabled = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.grey,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title != null
              ? Container(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontFamily: "roboto",
                      color: Colors.black54,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                )
              : Container(),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: TextField(
                textInputAction: TextInputAction.search,
                onSubmitted: onFieldSubmitted,
                controller: textController,
                readOnly: false,
                onTap: () {},
                style: TextStyle(
                  fontSize: 14.0,
                ),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: enabled ? Colors.white : AppColors.greyStroke,
                    contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    prefixIcon: prefixIcon,
                    hintText: hintText,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.greyStroke, width: 32.0),
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                enabled ? Colors.white : AppColors.greyStroke,
                            width: 32.0),
                        borderRadius: BorderRadius.circular(15)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide:
                          BorderSide(width: 1, color: AppColors.greyStroke),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide:
                          BorderSide(width: 1, color: AppColors.greyStroke),
                    ),
                    enabled: enabled)),
          ),
        ],
      ),
    );
  }
}
