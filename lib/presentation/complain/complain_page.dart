import 'dart:io';
import 'package:digiresto/application/complain/complain_bloc.dart';
import 'package:digiresto/domain/complain/complain_category.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/generated/assets.dart';
import 'package:digiresto/presentation/complain/widget/complaint_popup_widget.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/complain/text_formfield_custom.dart';
import 'package:digiresto/presentation/core/widgets/collapsed_scafold.dart';
import 'package:digiresto/presentation/widgets/Error_popup_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../../injection.dart';
import 'custome_complain_button.dart';

class ComplainPage extends StatelessWidget {
  final String receiptCode;
  const ComplainPage(this.receiptCode, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Complain>? listData = [];
    String? idCategory = '0';
    TextEditingController problemEditText = TextEditingController();
    TextEditingController timeEditText = TextEditingController();
    bool imageRequired = false;
    String? image = '';
    File fileImage = File('');
    GlobalKey<FormState> formState = GlobalKey<FormState>();

    return CollapsedScafold(
      showBackButton: true,
      title: I10n.current.komplain_title,
      body: BlocProvider<ComplainBloc>(
        create: (context) => getIt<ComplainBloc>()
          ..add(
            ComplainEvent.getComplainCategory(),
          ),
        child: BlocConsumer<ComplainBloc, ComplainState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () => [],
              getComplaintCategorySuccess: (list) => listData = list,
              sendingSuccesss: () => ComplaintPopupWidget.show("Pesan Terkirim",
                  'Kami segera memproses keluhan Anda. Selanjutnya, tim CS kami akan segera menghubungi Anda.',
                  () {
                Get.back();
                Get.back();
              }),
              complaintSelect: (
                complain,
                complainCategory,
                file,
                imageUrl,
                detail,
                eatTime,
                eatTimeIsActive,
                sendButtonIsActive,
              ) {
                problemEditText.text = detail.toString();
                timeEditText.text = eatTime.toString();
                imageRequired = complain!.imageRequired;
                idCategory = complain.id;
                image = imageUrl;
                fileImage = file ?? File('');
                listData = complainCategory;
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => SingleChildScrollView(
                child: Column(
                  children: [
                    // _chooseCategory(list, idCategory),

                    Container(
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
                              'Pilih Category Complain',
                              style: Styles.ratingLabelStyle,
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Wrap(
                              children: listData!.map((item) {
                                return GestureDetector(
                                    onTap: () {
                                      BlocProvider.of<ComplainBloc>(context)
                                        ..add(
                                          ComplainEvent
                                              .complainCategoriSelected(
                                            complain: item,
                                            list: listData,
                                          ),
                                        );
                                    },
                                    child: tabItem(item, idCategory));
                              }).toList(),
                            )
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      color: AppColors.dividerColor,
                      thickness: 2,
                    ),
                    _formInputComplain(
                        problemEditText, timeEditText, context, formState),
                    customerServiceCTA(),
                    buttonSend(
                      formState,
                      imageRequired,
                      image,
                      fileImage,
                      idCategory,
                      problemEditText.value.text,
                      timeEditText.value.text,
                    ),
                  ],
                ),
              ),
              laodInProgress: () => Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget tabItem(Complain complaint, String? idCategory) {
    return BlocBuilder<ComplainBloc, ComplainState>(
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.only(right: 8, bottom: 8, top: 4),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color:
                  complaint.id == idCategory ? AppColors.red : AppColors.white,
              border: Border.all(color: AppColors.redYoung),
            ),
            child: Text(
              complaint.description,
              style: complaint.id == idCategory
                  ? Styles.whiteFontStyle
                  : Styles.boldRedStyle,
            ),
          ),
        );
      },
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

  Widget buttonSend(
    GlobalKey<FormState> formState,
    bool imageRequired,
    String? image,
    File? file,
    String? complainId,
    String? details,
    String? consumeDate,
  ) {
    return BlocBuilder<ComplainBloc, ComplainState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: CustomButtonComplain(
            onPressed: () {
              if (formState.currentState!.validate()) {
                if (imageRequired && image!.isEmpty) {
                  ErrorPopupWidget.show(
                      "Image Required", I10n.current.add_favorite_success, () {
                    Get.back();
                  });
                } else {
                  BlocProvider.of<ComplainBloc>(context)
                    ..add(
                      ComplainEvent.postComplain(
                        complainId: complainId!,
                        details: details!,
                        receiptCode: receiptCode,
                        image: file ?? File(''),
                        consumeDate: consumeDate ?? '',
                      ),
                    );
                }

                //send
              } else {
                ErrorPopupWidget.show(
                    "Digiresto", 'Detail Masalah minimal 30 Karakter', () {
                  Get.back();
                });
              }
            },
            label: 'Kirim',
            fontColor: AppColors.white,
            color: state.maybeMap(
                orElse: () => AppColors.greyDEDEDE,
                complaintSelect: (e) => e.sendButtonIsActive
                    ? AppColors.redYoung
                    : AppColors.greyDEDEDE),
            borderRadius: BorderRadius.circular(20),
          ),
        );
      },
    );
  }

  Widget imageAttachmen(BuildContext maincontext) {
    return BlocBuilder<ComplainBloc, ComplainState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () async {
            bottomSheet(context);
          },
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 8, right: 8),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.greyCACACA),
                child: state.maybeWhen(
                  orElse: () => SizedBox(),
                  complaintSelect: (complain, complainCategory, file, imageUrl,
                      detail, eatTime, eatTimeIsActive, sendButtonIsActive) {
                    if (file?.isBlank ?? false) {
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.file(
                          file!,
                        ),
                      );
                    } else {
                      SizedBox();
                    }
                  },
                ),
              ),
              Flexible(
                child: Text(
                  'Lampirkan bukti pendukung agar kami paham masalahmu (maks. 1 foto format .jpg, .jpeg, dan .png ukurang maks 10MB)',
                  style: TextStyle(
                    color: AppColors.greyRating,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _formInputComplain(
    TextEditingController problemController,
    TextEditingController timeController,
    BuildContext context,
    GlobalKey formState,
  ) {
    return BlocBuilder<ComplainBloc, ComplainState>(
      builder: (context, state) {
        return Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Dimens.defaultMargin,
              vertical: 8,
            ),
            child: Form(
              key: formState,
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
                    hintText: '$receiptCode',
                    fillColor: AppColors.white,
                    enabled: false,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  state.maybeWhen(
                    orElse: () => SizedBox(),
                    complaintSelect: (complain,
                            complainCategory,
                            file,
                            imageUrl,
                            detail,
                            eatTime,
                            eatTimeIsActive,
                            sendButtonIsActive) =>
                        eatTimeIsActive
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dimakan jam berapa ?',
                                    style: Styles.ratingLabelStyle,
                                    textAlign: TextAlign.left,
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  CustomTextFieldComplain(
                                    controller: timeController,
                                    maxLength: 100,
                                    maxLines: 1,
                                    onTap: () async {
                                      print('Time Click');
                                      TimeOfDay? newTime = await showTimePicker(
                                          context: context,
                                          initialTime: TimeOfDay.now());

                                      if (newTime != null) {
                                        DateTime parseTime = DateFormat.jm()
                                            .parse(newTime
                                                .format(context)
                                                .toString());
                                        String formattedTime =
                                            DateFormat('HH:mm')
                                                .format(parseTime);
                                        timeController.text = formattedTime;
                                      }
                                    },
                                    borderColor: AppColors.greyBorder,
                                    hintText: 'Waktu Makan',
                                    fillColor: AppColors.white,
                                    onChange: (value) {
                                      BlocProvider.of<ComplainBloc>(context)
                                        ..add(
                                          ComplainEvent.eatTimeSubmit(
                                              eatTime: value),
                                        );
                                    },
                                    focusBorderColor: AppColors.redYoung,
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
                                ],
                              )
                            : SizedBox(),
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
                    onChange: (value) {
                      BlocProvider.of<ComplainBloc>(context)
                        ..add(
                          ComplainEvent.detailSubmit(detail: value),
                        );
                    },
                    validator: (value) {
                      if (value!.length < 30) {
                        return 'min. 30 karakter';
                      }
                    },
                    focusBorderColor: AppColors.redYoung,
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
                  imageAttachmen(context),
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
          ),
        );
      },
    );
  }

  Future<void> bottomSheet(BuildContext maincontext) async {
    final _picker = ImagePicker();
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
        ),
        backgroundColor: Colors.white,
        context: Get.context!,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 8,
              ),
              ListTile(
                title: Container(
                  child: Center(
                    child: new Text(
                      'Silahkan pilih lokasi gambar',
                      style: AppFont.textBlack17Bold,
                    ),
                  ),
                ),
                enabled: false,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16, bottom: 16),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.photo_camera,
                            color: AppColors.white,
                          ),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: AppColors.redD12B34,
                              shape: BoxShape.circle),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text('Camera', style: AppFont.textBlack14Bold),
                        Expanded(child: Container()),
                        ElevatedButton(
                            onPressed: () async {
                              XFile? file = await _picker.pickImage(
                                source: ImageSource.camera,
                              );
                              Get.back();
                              BlocProvider.of<ComplainBloc>(maincontext)
                                ..add(
                                  ComplainEvent.attachmentSubmit(
                                    file: File(file!.path),
                                  ),
                                );
                            },
                            child: Text(
                              I10n.current.cart_choose,
                              style: AppFont.textBlack12Bold
                                  .copyWith(color: AppColors.redD12B34),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                elevation: 0,
                                side: BorderSide(
                                  width: 1.0,
                                  color: AppColors.redD12B34,
                                ))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16, bottom: 16),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.photo_library,
                            color: AppColors.white,
                          ),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: AppColors.redD12B34,
                              shape: BoxShape.circle),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text('Photo Library', style: AppFont.textBlack14Bold),
                        Expanded(child: Container()),
                        ElevatedButton(
                            onPressed: () async {
                              XFile? file = await _picker.pickImage(
                                source: ImageSource.gallery,
                              );
                              Get.back();
                              BlocProvider.of<ComplainBloc>(maincontext)
                                ..add(
                                  ComplainEvent.attachmentSubmit(
                                    file: File(file!.path),
                                  ),
                                );
                            },
                            child: Text(
                              I10n.current.cart_choose,
                              style: AppFont.textBlack12Bold
                                  .copyWith(color: AppColors.redD12B34),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                elevation: 0,
                                side: BorderSide(
                                  width: 1.0,
                                  color: AppColors.redD12B34,
                                ))),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              )
            ],
          );
        });
  }
}
