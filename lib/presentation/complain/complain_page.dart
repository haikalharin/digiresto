import 'dart:developer';
import 'dart:io';

import 'package:digiresto/application/complain/complain_bloc.dart';
import 'package:digiresto/domain/complain/complain_category.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/generated/assets.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/complain/text_formfield_custom.dart';
import 'package:digiresto/presentation/core/widgets/collapsed_scafold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../injection.dart';
import 'custome_complain_button.dart';

class ComplainPage extends StatelessWidget {
  final String receiptCode;
  const ComplainPage(this.receiptCode, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Complain>? list = [];
    int? idCategory = 0;
    TextEditingController problemEditText = TextEditingController();
    String imagePath = '';

    return CollapsedScafold(
      showBackButton: true,
      title: I10n.current.komplain_title,
      body: BlocProvider<ComplainBloc>(
        create: (context) => getIt<ComplainBloc>()
          ..add(
            ComplainEvent.getComplainCategory(),
          ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _chooseCategory(list, idCategory),
              Divider(
                color: AppColors.dividerColor,
                thickness: 2,
              ),
              _formInputComplain(problemEditText, imagePath, context),
              customerServiceCTA(),
              buttonSend(),
            ],
          ),
        ),
      ),
    );
  }

  Widget tabItem(Complain complaint, int? idCategory) {
    return Container(
      margin: EdgeInsets.only(right: 8, bottom: 8, top: 4),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: complaint.id == idCategory ? AppColors.red : AppColors.white,
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

  Widget buttonSend() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      child: CustomButtonComplain(
        onPressed: () {},
        label: 'Kirim',
        fontColor: AppColors.white,
        color: AppColors.redYoung,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  Widget imageAttachmen(String imagePath, BuildContext context) {
    final ImagePicker _picker = ImagePicker();
    File file = File('');
    return BlocConsumer<ComplainBloc, ComplainState>(
      listener: (context, state) {},
      builder: (context, state) {
        return GestureDetector(
          onTap: () async {
            print('image_log : d');
            XFile? image = await _picker.pickImage(source: ImageSource.gallery);
            file = File(image!.path);
            print('image_log : ${file.path}');
            BlocProvider.of<ComplainBloc>(context)
              ..add(
                ComplainEvent.complainCategoriSelected(file: file),
              );
            // bottomSheet();
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
                child: state.maybeMap(
                    orElse: () => SizedBox(),
                    complaintSelect: (e) {
                      if (e.file == null) {
                        print('image_log : a');
                        SizedBox();
                      } else {
                        print('image_log : b');
                        Image.file(file);
                      }
                    }),
              ),
              BlocBuilder<ComplainBloc, ComplainState>(
                builder: (context, state) {
                  return Flexible(
                    child: Text(
                      'Lampirkan bukti pendukung agar kami paham masalahmu (maks. 1 foto format .jpg, .jpeg, dan .png ukurang maks 10MB)',
                      style: TextStyle(
                        color: AppColors.greyRating,
                        fontSize: 14,
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        );
      },
    );
  }

  Future<void> bottomSheet() async {
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
                          child: ImageIcon(
                            AssetImage(AppAssets.iconOutletOrderDelivery),
                            color: AppColors.white,
                            size: 24,
                          ),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: AppColors.redD12B34,
                              shape: BoxShape.circle),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(I10n.current.landing_delivery,
                            style: AppFont.textBlack14Bold),
                        Expanded(child: Container()),
                        ElevatedButton(
                            onPressed: () {
                              Get.back();
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
                          child: ImageIcon(
                            AssetImage(AppAssets.iconOutletOrderDelivery),
                            color: AppColors.white,
                            size: 24,
                          ),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: AppColors.redD12B34,
                              shape: BoxShape.circle),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(I10n.current.landing_delivery,
                            style: AppFont.textBlack14Bold),
                        Expanded(child: Container()),
                        ElevatedButton(
                            onPressed: () {
                              Get.back();
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

  Widget _formInputComplain(TextEditingController problemController,
      String imagePath, BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.defaultMargin,
          vertical: 8,
        ),
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
                problemController.text = value;
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
            imageAttachmen(imagePath, context),
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
    );
  }

  Widget _chooseCategory(List<Complain>? list, int? idCategory) {
    return BlocConsumer<ComplainBloc, ComplainState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () => [],
            getComplaintCategorySuccess: (dataList) {
              list = dataList.complainCategory;
            },
            complaintSelect: (data) {
              idCategory = data.id;
              list = data.complainCategory;
            });
      },
      builder: (context, state) {
        return Container(
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
                  I10n.current.review_title,
                  style: Styles.ratingLabelStyle,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 12,
                ),
                Wrap(
                  children: list!.map((item) {
                    return GestureDetector(
                        onTap: () {
                          BlocProvider.of<ComplainBloc>(context)
                            ..add(
                              ComplainEvent.complainCategoriSelected(
                                id: item.id,
                                list: list,
                              ),
                            );
                        },
                        child: tabItem(item, idCategory));
                  }).toList(),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
