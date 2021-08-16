import 'dart:async';

import 'package:digiresto/domain/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class RegisterPinWidget extends StatelessWidget {
  final String title;
  final void Function(String) onChanged;
  final StreamController<ErrorAnimationType> errorController;
  const RegisterPinWidget({
    Key? key,
    required this.title,
    required this.onChanged,
    required this.errorController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              children: [
                Text(
                  title,
                  style: Styles.pinTitleStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                PinCodeTextField(
                  errorAnimationController: errorController,
                  obscureText: true,
                  enableActiveFill: true,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    borderWidth: 0,
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(6),
                    fieldHeight: 55,
                    fieldWidth: 45,
                    inactiveColor: AppColors.greyInput,
                    activeFillColor: AppColors.greyInput,
                    inactiveFillColor: AppColors.greyInput,
                    selectedFillColor: AppColors.greyInput,
                  ),
                  hintCharacter: '●',
                  hintStyle: Styles.hintStyle.copyWith(
                    fontSize: 42,
                    color: AppColors.greyStroke,
                    height: 1,
                  ),
                  appContext: context,
                  length: 6,
                  onChanged: onChanged,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
