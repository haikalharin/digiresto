import 'package:digiresto/application/auth/auth_bloc.dart';
import 'package:digiresto/domain/core/entity/status_api_response.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ErrorDialog {
  showErrorOutlet({
    String title = "Digiresto",
    required StatusMessageDisplayResponse error,
    Function? onClose,
    bool twoButtons = false,
    bool twoBack = false,
    bool barrierDismissible = true,
    bool isIcon = false,
  }) async {
    if (Get.isDialogOpen ?? false) {
      Get.back();
    }
    Get.dialog(
        BaseDialogError(
          title: title,
          error: error,
          onClose: onClose,
          twoButtons: twoButtons,
          twoBack: twoBack,
          isIcon: isIcon,
        ),
        barrierDismissible: barrierDismissible);
  }

  showError({
    String title = "Digiresto",
    required StatusMessageDisplayResponse error,
    Function? onClose,
    bool twoButtons = false,
  }) async {
    if (Get.isDialogOpen ?? false) {
      Get.back();
    }
    Get.dialog(
      BaseDialogError(
        title: title,
        error: error,
        onClose: onClose,
        twoButtons: twoButtons,
      ),
    );
  }

  showServerError({
    String? title,
    final Function? onClose,
  }) async {
    if (Get.isDialogOpen ?? false) {
      Get.back();
    }
    final error = StatusMessageDisplayResponse(
      en: I10n.current.error_message_failed_get_response,
      id: I10n.current.error_message_failed_get_response,
    );
    Get.dialog(
      BaseDialogError(
        title: title ?? I10n.current.oops_title,
        error: error,
        onClose: onClose,
      ),
    );
  }

  showLocationError({
    String? title,
    required void Function()? onClose,
  }) async {
    if (Get.isDialogOpen ?? false) {
      Get.back();
    }
    final error = StatusMessageDisplayResponse(
      id: I10n.current.cart_address_not_valid,
      en: I10n.current.cart_address_not_valid,
    );
    Get.dialog(
      BaseDialogError(
        title: title ?? I10n.current.oops_title,
        error: error,
        onClose: onClose,
      ),
    );
  }

  showNoInternetError() async {
    if (Get.isDialogOpen ?? false) {
      Get.back();
    }
    Get.dialog(
      BaseDialogError(
        error: StatusMessageDisplayResponse(
          id: I10n.current.error_message_failed_get_response,
          en: I10n.current.error_message_failed_get_response,
        ),
      ),
    );
  }

  showAuthError() async {
    final statusError = StatusMessageDisplayResponse(
      id: I10n.current.alert_out_of_session,
      en: I10n.current.alert_out_of_session,
    );
    if (Get.isDialogOpen ?? false) {
      Get.back();
    }
    Get.dialog(
      BaseDialogError(
        title: I10n.current.oops_title,
        error: statusError,
        onClose: () {
          final _authBloc = BlocProvider.of<AuthBloc>(Get.context!);
          _authBloc.add(AuthEvent.signedOut());
          Get.offAllNamed(Routers.login);
        },
      ),
    );
  }
}

class BaseDialogError extends StatelessWidget {
  final StatusMessageDisplayResponse error;
  final String title;
  final Function? onClose;
  final bool twoButtons;
  final bool twoBack;
  final bool isIcon;
  const BaseDialogError({
    Key? key,
    required this.error,
    this.title = 'Digiresto',
    this.onClose,
    this.twoButtons = false,
    this.twoBack = false,
    this.isIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i10n = I10n.of(context);
    final errorMessages = <String, String>{
      'en': error.en,
      'id': error.id,
    };

    return WillPopScope(
      onWillPop: () async {
        if (onClose != null) {
          onClose!();
        }
        Get.back();
        return true;
      },
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.white),
          padding: EdgeInsets.all(Dimens.dialogPadding),
          margin: EdgeInsets.all(Dimens.dialogMargin),
          child: Material(
            color: Colors.transparent,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: Styles.dialogTitleStyle,
                ),
                isIcon == true
                    ? SizedBox(
                        height: 20,
                      )
                    : Container(),
                isIcon == true
                    ? SizedBox(
                        height: 200,
                        child: SvgPicture.asset(
                          "assets/no_outlet_snack_import.svg",
                        ),
                      )
                    : Container(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  errorMessages[i10n.lang] ??
                      i10n.error_message_failed_get_response,
                  style: Styles.dialogSubtitleStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                twoButtons
                    ? Row(
                        children: [
                          Expanded(
                            child: CustomButton(
                              label: i10n.alert_cancel,
                              color: Colors.white,
                              fontColor: AppColors.mainColor,
                              borderColor: AppColors.mainColor,
                              onPressed: () async {
                                Get.back();
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: CustomButton(
                              label: i10n.alert_ok,
                              color: AppColors.mainColor,
                              fontColor: Colors.white,
                              onPressed: () async {
                                Get.back();
                                if (onClose != null) {
                                  onClose!();
                                }
                              },
                            ),
                          ),
                        ],
                      )
                    : CustomButton(
                        label: i10n.alert_ok,
                        color: AppColors.mainColor,
                        fontColor: Colors.white,
                        onPressed: () async {
                          Get.back();
                          if (twoBack == true) {
                            Get.back();
                          }
                          if (onClose != null) {
                            onClose!();
                          }
                        },
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
