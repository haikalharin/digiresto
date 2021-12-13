import 'package:bloc/bloc.dart';
import 'package:digiresto/domain/credit/i_credit_repository.dart';
import 'package:digiresto/domain/entity/order/static_banner_model.dart';
import 'package:digiresto/domain/entity/user/user_get_address_model.dart';
import 'package:digiresto/infrastructure/network/apis/order/order_repository.dart';
import 'package:digiresto/infrastructure/network/apis/user/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_user_bloc.freezed.dart';
part 'home_user_event.dart';
part 'home_user_state.dart';

@injectable
class HomeUserBloc extends Bloc<HomeUserEvent, HomeUserState> {
  final UserRepository _userRepository;
  final OrderRepository _orderRepository;
  final ICreditRepository _creditRepository;
  HomeUserBloc(
    this._userRepository,
    this._orderRepository,
    this._creditRepository,
  ) : super(_Initial()) {
    on<HomeUserEvent>((event, emit) async {
      await event.map(
        getStaticBanner: (e) async {
          final staticBanner = await _orderRepository.getStaticBanner({});
          emit(staticBanner.fold(
            (error) => HomeUserState.bannerLoadFailed(error.toString()),
            (list) => HomeUserState.bannerLoadSuccess(list),
          ));
        },
        getListAddress: (_GetListAddress value) async {
          final listAddress = await _userRepository.getAddress();
          emit(listAddress.fold(
            (error) => HomeUserState.addressListFailed(error.toString()),
            (list) => HomeUserState.addressListSuccess(list),
          ));
        },
        getActiveAddress: (value) async {
          final setActiveAddress = await _userRepository.getActiveAddress();
          emit(setActiveAddress.fold(
              (error) => HomeUserState.getActiveAddressFail(error.toString()),
              (data) => HomeUserState.getActiveAddressSuccess(data)));
        },
        getCartSessionID: (r) async {
          final setActiveAddress = await _orderRepository.getSessionId();
          emit(setActiveAddress.fold(
              (error) => HomeUserState.getCartSessionIDFail(error.toString()),
              (data) => HomeUserState.getCartSessionIDSuccess(data)));
        },
        getCountCredit: (_event) async {
          final getCountCredit = await _creditRepository.getCountTopupPending();
          emit(getCountCredit.fold(
              (error) => HomeUserState.getCreditCountFail(error.toString()),
              (data) => HomeUserState.getCreditCountSuccess(data)));
        },
      );
    });
  }
}
