import 'package:digiresto/application/auth/auth_bloc.dart';
import 'package:digiresto/application/profile/profile_bloc.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/widgets/collapsed_scafold.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';

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
    return CollapsedScafold(
      title: 'Profile',
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.map(
            initial: (_state) => Center(
              child: CircularProgressIndicator(),
            ),
            loading: (_state) => Center(
              child: CircularProgressIndicator(),
            ),
            loadFailure: (_state) => Center(
              child: Text(
                _state.failure.maybeMap(
                  orElse: () => 'Unknown Error',
                  noInternet: (_) => 'No Internet',
                  invalidToken: (_) => 'Invalid Token',
                ),
              ),
            ),
            loadSuccess: (_state) => ListView(
              padding: EdgeInsets.zero,
              children: [
                Padding(
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
                            ),
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
                  label: 'Alamat',
                  assetFile: 'assets/profile_address.svg',
                ),
                ProfileMenuWidget(
                  label: 'Customer Service',
                  assetFile: 'assets/profile_customer_service.svg',
                ),
                ProfileMenuWidget(
                  label: 'Tentang Digiresto',
                  assetFile: 'assets/profile_about_digiresto.svg',
                ),
                ProfileMenuWidget(
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
                  onPressed: () => _authBloc.add(AuthEvent.signedOut()),
                  margin:
                      EdgeInsets.symmetric(horizontal: Dimens.defaultMargin),
                  borderRadius: BorderRadius.circular(22),
                  label: 'Keluar',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
