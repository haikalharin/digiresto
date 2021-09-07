import 'package:digiresto/application/auth/auth_bloc.dart';
import 'package:digiresto/application/profile/profile_bloc.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/widgets/collapsed_scafold.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/core/widgets/custom_dialog.dart';
import 'package:digiresto/presentation/profile/about_digiresto.dart';
import 'package:digiresto/presentation/profile/address/address_page.dart';
import 'package:digiresto/presentation/profile/privacy_policy.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets/profile_menu_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => getIt<ProfileBloc>()..add(ProfileEvent.started()),
      child: ProfileWidget(),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late final _authBloc = BlocProvider.of<AuthBloc>(context);
    late final _profileBloc = BlocProvider.of<ProfileBloc>(context);
    return CollapsedScafold(
      title: 'Profile',
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return ListView(
            padding: EdgeInsets.zero,
            children: [
              state.map(
                initial: (_state) => SizedBox(
                  height: 120,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
                loading: (_state) => SizedBox(
                  height: 120,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
                loadFailure: (_state) => SizedBox(
                  height: 120,
                  child: Center(
                    child: Text(
                      _state.failure.maybeMap(
                        orElse: () => 'Unknown Error',
                        noInternet: (_) => 'No Internet',
                        invalidToken: (_) => 'Invalid Token',
                      ),
                    ),
                  ),
                ),
                loadSuccess: (_state) => Padding(
                  padding: EdgeInsets.all(Dimens.defaultMargin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              _state.userProfile.name,
                              style: Styles.profileNameStyle,
                            ),
                          ),
                          CustomButton(
                            onPressed: () => Get.toNamed(
                              Routers.editProfile,
                              arguments: _state.userProfile,
                            )?.then((value) =>
                                _profileBloc.add(ProfileEvent.started())),
                            color: AppColors.mainColor,
                            fontColor: Colors.white,
                            label: 'ubah',
                            padding: EdgeInsets.zero,
                            borderRadius: BorderRadius.circular(17),
                            height: 35,
                            width: 80,
                          )
                        ],
                      ),
                      Text(_state.userProfile.email),
                      SizedBox(
                        height: 5,
                      ),
                      Text(_state.userProfile.mobilePhone),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 12,
                color: AppColors.dividerColor,
              ),
              ProfileMenuWidget(
                label: 'Pilih Bahasa',
                assetFile: 'assets/profile_language.svg',
              ),
              ProfileMenuWidget(
                onTap: () => Get.toNamed(Routers.orderHistory),
                label: 'Riwayat Pembelian',
                assetFile: 'assets/profile_history.svg',
              ),
              ProfileMenuWidget(
                onTap: () => Get.to(ProfileAddressPage()),
                label: 'Alamat',
                assetFile: 'assets/profile_address.svg',
              ),
              ProfileMenuWidget(
                onTap: () => Get.dialog(
                  CustomDialog(
                    backgroundColor: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Customer Service',
                          style: Styles.dialogTitleStyle,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Untuk Informasi, keluhan, kritik & saran dalam menggunakan aplikasi silahkan hubungi kami melalui :',
                          style: Styles.dialogSubtitleStyle,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        CustomButton(
                          onPressed: () =>
                              launch('https://wa.me/6281110652777'),
                          color: AppColors.mainColor,
                          fontColor: Colors.white,
                          label: 'Whatsapp',
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        CustomButton(
                          onPressed: () => Get.back(),
                          color: Colors.white,
                          borderColor: AppColors.mainColor,
                          label: 'Kembali',
                        ),
                      ],
                    ),
                  ),
                ),
                label: 'Customer Service',
                assetFile: 'assets/profile_customer_service.svg',
              ),
              ProfileMenuWidget(
                onTap: () => Get.to(AboutDigiresto()),
                label: 'Tentang Digiresto',
                assetFile: 'assets/profile_about_digiresto.svg',
              ),
              ProfileMenuWidget(
                onTap: () => Get.to(PrivacyPolicy()),
                label: 'Kebijakan Privasi',
                assetFile: 'assets/profile_privacy_policy.svg',
              ),
              ProfileMenuWidget(
                label: 'Bergabung dengan Digiresto',
                assetFile: 'assets/profile_join_us.svg',
              ),
              ProfileMenuWidget(
                label: 'Versi App',
                suffixWidget: Text('1.01.01'),
              ),
              SizedBox(
                height: Dimens.dialogMargin,
              ),
              CustomButton(
                // onPressed: () => _authBloc.add(AuthEvent.signedOut()),
                onPressed: () => Get.dialog(
                  CustomDialog(
                    backgroundColor: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Apakah anda yakin ingin keluar ?',
                          style: Styles.dialogSubtitleStyle,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CustomButton(
                                onPressed: () => Get.back(),
                                color: Colors.white,
                                borderColor: AppColors.mainColor,
                                label: 'Batal',
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: CustomButton(
                                onPressed: () {
                                  _authBloc.add(AuthEvent.signedOut());
                                  Get.offAllNamed(Routers.auth);
                                },
                                color: AppColors.mainColor,
                                fontColor: Colors.white,
                                label: 'Ok',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: Dimens.defaultMargin),
                borderRadius: BorderRadius.circular(22),
                color: AppColors.mainColor,
                fontColor: Colors.white,
                label: 'Keluar',
              ),
            ],
          );
        },
      ),
    );
  }
}
