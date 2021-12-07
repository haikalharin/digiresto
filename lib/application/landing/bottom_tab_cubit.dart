import 'package:bloc/bloc.dart';
import 'package:digiresto/application/home_new/bloc/home_bloc.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/credit/i_credit_repository.dart';
import 'package:digiresto/infrastructure/network/apis/order/order_repository.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

part 'bottom_tab_state.dart';
part 'bottom_tab_cubit.freezed.dart';

@lazySingleton
class BottomTabCubit extends Cubit<BottomTabState> {
  final OrderRepository _orderRepository;
  final ICreditRepository _creditRepository;

  BottomTabCubit(
    this._orderRepository,
    this._creditRepository,
  ) : super(BottomTabState.initial());

  void checkAllCounter() async {
    final getCartSessionID = await _orderRepository.getSessionId();

    final cartCount = getCartSessionID.fold(
      (failure) => 0,
      (sessionID) => sessionID == null || sessionID == '' ? 0 : 1,
    );

    final getCountCredit = await _creditRepository.getCountTopupPending();

    final creditCount = getCountCredit.fold(
      (failure) => 0,
      (count) => count,
    );

    emit(state.copyWith(
      cartCount: cartCount,
      creditCount: creditCount,
    ));
  }

  void changeTab(int index) async {
    if (index == 0) {
      if (state.currentIndex != 0) getIt<HomeBloc>().add(HomeEvent.refresh());
      emit(state.copyWith(currentIndex: index));
    } else if (index == 1) {
      checkCart(index);
    } else if (index == 2) {
      checkCreditTab();
      emit(state.copyWith(currentIndex: index));
    } else {
      emit(state.copyWith(currentIndex: index));
    }
  }

  void checkCreditTab() async {
    emit(state.copyWith(
      isLoading: true,
    ));
    final getCountCredit = await _creditRepository.getCountTopupPending();

    final creditCount = getCountCredit.fold(
      (failure) => 0,
      (count) => count,
    );

    emit(state.copyWith(
      isLoading: false,
      creditCount: creditCount,
    ));
  }

  void checkCart(
    int index,
  ) async {
    emit(state.copyWith(
      isLoading: true,
    ));
    int resultIndex = 0;
    final getCartSessionID = await _orderRepository.getSessionId();

    final cartCount = getCartSessionID.fold(
      (failure) => 0,
      (sessionID) => sessionID == null || sessionID == '' ? 0 : 1,
    );

    if (cartCount == 0) {
      resultIndex = 0;
      showMyDialog();
    } else {
      resultIndex = index;
    }

    emit(state.copyWith(
      isLoading: false,
      currentIndex: resultIndex,
      cartCount: cartCount,
    ));
  }

  void checkCartFromOutside() async {
    emit(state.copyWith(
      isLoading: true,
    ));
    final getCartSessionID = await _orderRepository.getSessionId();

    final cartCount = getCartSessionID.fold(
      (failure) => 0,
      (sessionID) => sessionID == null || sessionID == '' ? 0 : 1,
    );

    emit(state.copyWith(
      isLoading: false,
      cartCount: cartCount,
    ));
  }

  Future<void> showMyDialog() async {
    return showDialog<void>(
      context: Get.context!,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          //title: Text(param.detail["name"]),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      I10n.current.home_cart,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: "roboto",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  child: Text(
                    I10n.current.beranda_cart_empty,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width - 100,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.back(closeOverlays: true);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                        side: BorderSide(
                          width: 1,
                          color: AppColors.red,
                        ),
                      ),
                    ),
                    child: Text("Ok",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                )
              ],
            ),
          ),
        );
      },
    ).then((value) {
      getIt<HomeBloc>().add(HomeEvent.refresh());
    });
  }
}
