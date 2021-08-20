import 'package:bloc/bloc.dart';
import 'package:digiresto/domain/entity/order/cart_session_model.dart';
import 'package:digiresto/domain/entity/order/checkout_response.dart';
import 'package:digiresto/domain/entity/order/delivery_method_model.dart';
import 'package:digiresto/domain/entity/order/detail_outlet_model.dart';
import 'package:digiresto/domain/entity/order/hot_promo_model.dart';
import 'package:digiresto/domain/entity/order/outlet_category_response.dart';
import 'package:digiresto/domain/entity/order/outlet_list.dart';
import 'package:digiresto/domain/entity/order/param/checkout_cart_param.dart';
import 'package:digiresto/domain/entity/order/param/create_cart_session_param.dart';
import 'package:digiresto/domain/entity/order/param/delivery_inquiry_param.dart';
import 'package:digiresto/domain/entity/order/param/get_detail_outlet_param.dart';
import 'package:digiresto/domain/entity/order/param/get_hot_promo_param.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_by_category_param.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_by_location_param.dart';
import 'package:digiresto/domain/entity/order/param/get_payment_method_param.dart';
import 'package:digiresto/domain/entity/order/param/get_promo_outlet_param.dart';
import 'package:digiresto/domain/entity/order/param/update_cart_session_param.dart';
import 'package:digiresto/domain/entity/order/payment_method.dart';
import 'package:digiresto/domain/entity/order/promo_outlet_model.dart';
import 'package:digiresto/domain/entity/user/user_get_address_model.dart';
import 'package:digiresto/infrastructure/network/apis/order/order_repository.dart';
import 'package:digiresto/infrastructure/network/apis/user/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'order_bloc.freezed.dart';
part 'order_event.dart';
part 'order_state.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderRepository _orderRepository;
  final UserRepository _userRepository;
  OrderBloc(
    this._orderRepository,
    this._userRepository,
  ) : super(_Initial());

  @override
  Stream<OrderState> mapEventToState(OrderEvent gEvent) async* {
    yield* gEvent.map(getOutletByLocation: (request) async* {
      final address = await _userRepository.getActiveAddress();
      final activeAddr = address.getOrElse(() => UserAddress());
      final queryString = request.request.queryString.copyWith(
          location: "${activeAddr.latitude}, ${activeAddr.longitude}");

      final getOutletByLocation = await _orderRepository.getOutletByLocation(
          request.request.copyWith(queryString: queryString).toJson());
      yield getOutletByLocation.fold(
        (error) => OrderState.loadFailure(error),
        (list) => OrderState.getOutletByLocationSuccess(list),
      );
    }, getOutletByCategory: (request) async* {
      final address = await _userRepository.getActiveAddress();
      final activeAddr = address.getOrElse(() => UserAddress());
      final queryString = request.request.queryString.copyWith(
          location: "${activeAddr.latitude}, ${activeAddr.longitude}");

      final getOutletByCategory = await _orderRepository.getOutletByCategory(
          request.request.copyWith(queryString: queryString).toJson());
      yield getOutletByCategory.fold(
        (error) => OrderState.loadFailure(error),
        (list) => OrderState.getOutletByCategorySuccess(list),
      );
    }, getPromoOutlet: (request) async* {
      final address = await _userRepository.getActiveAddress();
      final activeAddr = address.getOrElse(() => UserAddress());
      final queryString = request.request.queryString.copyWith(
          location: "${activeAddr.latitude}, ${activeAddr.longitude}");

      final getPromoOutlet = await _orderRepository.getPromoOutlet(
          request.request.copyWith(queryString: queryString).toJson());
      yield getPromoOutlet.fold(
        (error) => OrderState.loadFailure(error),
        (list) => OrderState.getPromoOutletSuccess(list),
      );
    }, getHotPromo: (request) async* {
      final getHotPromo = await _orderRepository.getHotPromo(request.request);
      yield getHotPromo.fold(
        (error) => OrderState.loadFailure(error),
        (list) => OrderState.getHotPromoSuccess(list),
      );
    }, getDetailOutlet: (request) async* {
      final getDetailOutlet =
          await _orderRepository.getDetailOutlet(request.request.toJson());
      yield getDetailOutlet.fold(
        (error) => OrderState.loadFailure(error),
        (list) => OrderState.getDetailOutletSuccess(list),
      );
    }, getPaymentMethod: (request) async* {
      final getPaymentMethod =
          await _orderRepository.getPaymentMethod(request.request.toJson());
      yield getPaymentMethod.fold(
        (error) => OrderState.loadFailure(error),
        (list) => OrderState.getPaymentMethodSuccess(list),
      );
    }, deliveryInquiry: (request) async* {
      final deliveryInquiry =
          await _orderRepository.deliveryInquiry(request.request.toJson());
      yield deliveryInquiry.fold(
        (error) => OrderState.loadFailure(error),
        (list) => OrderState.deliveryInquirySuccess(list),
      );
    }, createCartSession: (request) async* {
      final createCartSession =
          await _orderRepository.createCartSession(request.request.toJson());
      yield createCartSession.fold(
        (error) => OrderState.loadFailure(error),
        (list) => OrderState.createCartSessionSuccess(list),
      );
    }, updateCartSession: (request) async* {
      final updateCartSession =
          await _orderRepository.updateCartSession(request.request);
      yield updateCartSession.fold(
        (error) => OrderState.loadFailure(error),
        (list) => OrderState.updateCartSessionSuccess(list),
      );
    }, checkoutCart: (request) async* {
      final checkoutCart =
          await _orderRepository.checkout(request.request.sessionId);
      yield checkoutCart.fold(
        (error) => OrderState.loadFailure(error),
        (list) => OrderState.checkoutCartSuccess(list),
      );
    });
  }
}
