import 'package:digiresto/application/address/list/address_list_bloc.dart';
import 'package:digiresto/application/home_new/bloc/home_bloc.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class AddressTopBar extends StatelessWidget {
  AddressTopBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocListener<AddressListBloc, AddressListState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          setActiveAddressSuccess: (_state) {
            context.read<HomeBloc>().add(HomeEvent.getUserAddress());
          },
          setActiveAddressFail: (_state) {
            // ErrorDialog().showLocationError(onClose: askPermission);
          },
          getGeoCodeSuccess: (_state) {
            context.read<HomeBloc>().add(HomeEvent.getUserAddress());
          },
          getGeoCodeFail: (_state) {
            // ErrorDialog().showLocationError(onClose: askPermission);
          },
        );
      },
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          final userAddress = state.optionUserAddress.fold(
            () => '',
            (a) => a.fold((l) => '', (r) => r.address ?? ''),
          );
          return GestureDetector(
            onTap: () {
              Get.toNamed(Routers.homeAllAddress)!.then((value) {});
            },
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  ImageIcon(AssetImage(AppAssets.iconMarkerMove),
                      size: 28, color: AppColors.red),
                  Container(
                    width: MediaQuery.of(Get.context!).size.width - 50,
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text(I10n.current.home_address,
                                  style: AppFont.textBlack13Regular),
                              new Icon(Icons.keyboard_arrow_down,
                                  color: AppColors.red, size: 28.0),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            userAddress,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppFont.textBlack14Bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
