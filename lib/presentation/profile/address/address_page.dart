import 'package:digiresto/application/address/list/address_list_bloc.dart';
import 'package:digiresto/application/home/home_content_view_controller.dart';
import 'package:digiresto/application/home/home_user_bloc/home_user_bloc.dart';
import 'package:digiresto/domain/core/interfaces/i_location_service.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/loading/loading.dart';
import 'package:digiresto/domain/entity/map/param/get_geocode_param.dart';
import 'package:digiresto/domain/entity/user/param/user_remove_address_param.dart';
import 'package:digiresto/domain/entity/user/param/user_set_default_address_param.dart';
import 'package:digiresto/domain/entity/user/user_get_address_model.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/widgets/custom_scafold.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:digiresto/presentation/widgets/app_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

class ProfileAddressPage extends StatelessWidget {
  const ProfileAddressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeUserBloc>(
      create: (context) => getIt<HomeUserBloc>(),
      child: getIt<ProfileAddressWidget>(),
    );
  }
}

@injectable
class ProfileAddressWidget extends StatelessWidget {
  final ILocationService _locationService;
  const ProfileAddressWidget(this._locationService) : super();

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeContentViewController(), permanent: false);
    getAddress();
    return CustomScafold(
      showBackButton: true,
      title: 'Semua Alamat',
      body: BlocConsumer<HomeUserBloc, HomeUserState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () => null,
            addressListSuccess: (_state) {
              controller.setListAddress(_state.list);
            },
          );
        },
        builder: (context, state) {
          return BlocConsumer<AddressListBloc, AddressListState>(
            listener: (context, state) {
              state.maybeMap(
                  getGeoCodeSuccess: (value) {
                    var response = value.response;
                    controller.setCurrentLocation(UserAddress(
                        address: response.formattedAddress,
                        latitude: response.latitude,
                        longitude: response.longitute));
                  },
                  setActiveAddressSuccess: (content) {
                    controller.setActiveAddress(content.response.address!);
                    Get.back();
                  },
                  setDefaultFail: (content) {
                    print(content);
                  },
                  setDefaultSuccess: (value) {
                    controller.setListAddress(value.response);
                    Get.back(closeOverlays: true);
                  },
                  removeAddressSuccess: (value) {
                    context
                        .read<HomeUserBloc>()
                        .add(HomeUserEvent.getListAddress());
                    Get.back(closeOverlays: true);
                  },
                  addAddressSuccess: (value) {
                    context
                        .read<HomeUserBloc>()
                        .add(HomeUserEvent.getListAddress());
                    Get.back(closeOverlays: true);
                    Get.back();
                  },
                  orElse: () {});
            },
            builder: (context, state) {
              return Obx(() {
                return Expanded(
                  child: Column(
                    children: [
                      Container(
                        color: AppColors.greyFill,
                        width: double.infinity,
                        height: 12,
                      ),
                      // _userStore?.skipAndContinue ?? false
                      Expanded(
                        child: Container(
                          color: AppColors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 16, right: 20),
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text("Alamat Tersimpan",
                                            style: AppFont.textBlack15Bold,
                                            textAlign: TextAlign.center),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                      scrollDirection: Axis.vertical,
                                      shrinkWrap: true, // new line
                                      padding: const EdgeInsets.all(8),
                                      itemCount:
                                          controller.listAddress.length + 1,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        if (index ==
                                            controller.listAddress.length) {
                                          return _btnNewAddress();
                                        } else {
                                          return _listAddress(
                                              controller.listAddress[index]);
                                        }
                                      }),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              });
            },
          );
        },
      ),
    );
  }

  Widget _btnNewAddress() {
    return Column(
      children: [
        SizedBox(
          height: 16,
        ),
        Container(
          height: 49,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.redYoung, width: 2.0),
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)),
          child: GestureDetector(
            onTap: () {
              Get.toNamed(Routers.setAddressAdd);
            },
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("+ Tambah Alamat Tersimpan",
                      style: AppFont.textRed14Bold,
                      textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget _listAddress(UserAddress data) {
    if (data.isDelete == false) {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 5,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              blurRadius: 3,
              //offset: Offset(3,3), // changes position of shadow
            ),
          ],
        ),
        child: GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                  ),
                  child: new IconButton(
                    onPressed: () {},
                    icon: ImageIcon(AssetImage(AppAssets.iconMarkerMove),
                        size: 20, color: AppColors.red),
                  ),
                ),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      width: MediaQuery.of(Get.context!).size.width * (2 / 3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              data.name!,
                              style: AppFont.textBlack13SemiBold,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          data.isDefault!
                              ? Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color:
                                          AppColors.redYoung.withOpacity(0.14)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16.0, right: 16.0),
                                    child: Text(
                                      "Utama",
                                      style: AppFont.textRed10Regular,
                                    ),
                                  ),
                                )
                              : Container(),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: GestureDetector(
                                onTap: () {
                                  _showDialogAddress(data);
                                },
                                child: Icon(Icons.more_horiz)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Container(
                      width: MediaQuery.of(Get.context!).size.width * (2 / 3),
                      child: Text(
                        data.address!,
                        overflow: TextOverflow.ellipsis,
                        style: AppFont.textBlack12Medium,
                        softWrap: true,
                        maxLines: 3,
                      ),
                    ),
                  )
                ]),
              ],
            ),
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  void getAddress() async {
    Loading.show();
    final position = await _locationService.determinePosition();
    Get.context!.read<AddressListBloc>().add(AddressListEvent.getGeoCode(
        GetGeoCodeParam(
            latitude: position.latitude.toString(),
            longitude: position.longitude.toString())));
  }

  Future<void> _showDialogAddress(UserAddress userAddress) async {
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
                leading: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: ImageIcon(
                    AssetImage(AppAssets.iconBackBlack),
                    color: Colors.black,
                  ),
                ),
                title: Container(
                  //make title to center
                  transform: Matrix4.translationValues(-24, 0, 0),
                  child: Center(
                    child: new Text(
                      'Pilihan Alamat',
                      style: AppFont.textBlack17Bold,
                    ),
                  ),
                ),
                enabled: false,
              ),
              AppDivider.normal,
              ListTile(
                title: new Text('Jadikan alamat utama',
                    style: AppFont.textBlack14Regular),
                onTap: () {
                  Get.context!.read<AddressListBloc>().add(
                      AddressListEvent.setDefault(UserSetDefaultAddressParam(
                          wa_id: userAddress.wabaNo!,
                          waba_no: userAddress.wabaNo!,
                          id: userAddress.id!)));
                },
              ),
              AppDivider.normal,
              ListTile(
                title:
                    new Text('Ubah Alamat', style: AppFont.textBlack14Regular),
                onTap: () {},
              ),
              AppDivider.normal,
              ListTile(
                title:
                    new Text('Hapus Alamat', style: AppFont.textBlack14Regular),
                onTap: () {
                  Get.context!.read<AddressListBloc>().add(
                      AddressListEvent.removeAddress(UserRemoveAddressParam(
                          id: userAddress.id!,
                          wa_id: userAddress.wabaNo!,
                          waba_no: userAddress.wabaNo!)));
                },
              ),
              SizedBox(
                height: 16,
              )
            ],
          );
        });
  }
}
