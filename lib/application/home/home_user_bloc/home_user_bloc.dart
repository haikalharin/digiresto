import 'package:bloc/bloc.dart';
import 'package:digiresto/domain/core/interfaces/i_storage.dart';
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
  HomeUserBloc(
    this._userRepository,
    this._orderRepository,
  ) : super(_Initial());

  @override
  Stream<HomeUserState> mapEventToState(HomeUserEvent gEvent) async* {
    yield const HomeUserState.loadInProgress();

    yield* gEvent.map(
        getStaticBanner: (e) async* {
          final staticBanner = await _orderRepository.getStaticBanner({});
          yield staticBanner.fold(
            (error) => HomeUserState.bannerLoadFailed(error.toString()),
            (list) => HomeUserState.bannerLoadSuccess(list),
          );
        },
        getListAddress: (_GetListAddress value) async* {
          final listAddress = await _userRepository.getAddress();
          yield listAddress.fold(
            (error) => HomeUserState.addressListFailed(error.toString()),
            (list) => HomeUserState.addressListSuccess(list),
          );
        },
        getActiveAddress: (value) async* {
          final setActiveAddress = await _userRepository.getActiveAddress();
          yield setActiveAddress.fold(
              (error) => HomeUserState.getActiveAddressFail(error.toString()),
              (data) => HomeUserState.getActiveAddressSuccess(data));
        },
        getCartSessionID: (r) async* {
          final setActiveAddress = await _orderRepository.getSessionId();
          yield setActiveAddress.fold(
              (error) => HomeUserState.getCartSessionIDFail(error.toString()),
              (data) => HomeUserState.getCartSessionIDSuccess(data));
        },
        setActiveAddressFromCurrentLocation: (_event) async* {});
  }
}
