import 'package:bloc/bloc.dart';
import 'package:digiresto/domain/entity/order/cart_session_model.dart';
import 'package:digiresto/domain/entity/order/checkout_response.dart';
import 'package:digiresto/domain/entity/order/delivery_method_model.dart';
import 'package:digiresto/domain/entity/order/detail_outlet_model.dart';
import 'package:digiresto/domain/entity/order/hot_promo_model.dart';
import 'package:digiresto/domain/entity/order/outlet_list.dart';
import 'package:digiresto/domain/entity/order/param/checkout_cart_param.dart';
import 'package:digiresto/domain/entity/order/param/create_cart_session_param.dart';
import 'package:digiresto/domain/entity/order/param/delivery_inquiry_param.dart';
import 'package:digiresto/domain/entity/order/param/get_detail_outlet_param.dart';
import 'package:digiresto/domain/entity/order/param/get_hot_promo_param.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_by_location_param.dart';
import 'package:digiresto/domain/entity/order/param/get_payment_method_param.dart';
import 'package:digiresto/domain/entity/order/param/get_promo_outlet_param.dart';
import 'package:digiresto/domain/entity/order/param/update_cart_session_param.dart';
import 'package:digiresto/domain/entity/order/payment_method.dart';
import 'package:digiresto/domain/entity/order/promo_outlet_model.dart';
import 'package:digiresto/infrastructure/network/apis/order/order_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'order_bloc.freezed.dart';
part 'order_event.dart';
part 'order_state.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderRepository _orderRepository;
  OrderBloc(
    this._orderRepository,
  ) : super(_Initial());

  @override
  Stream<OrderState> mapEventToState(OrderEvent gEvent) async* {
    yield* gEvent.map(getOutletByLocation: (request) async* {
      final staticBanner =
          await _orderRepository.getOutletByLocation(request.request.toJson());
      yield staticBanner.fold(
        (error) => OrderState.loadFailure(error),
        (list) => OrderState.getOutletByLocationSuccess(list),
      );
    }, getPromoOutlet: (request) async* {
      final staticBanner =
          await _orderRepository.getPromoOutlet(request.request.toJson());
      yield staticBanner.fold(
        (error) => OrderState.loadFailure(error),
        (list) => OrderState.getPromoOutletSuccess(list),
      );
    }, getHotPromo: (request) async* {
      final staticBanner = await _orderRepository.getHotPromo(request.request);
      yield staticBanner.fold(
        (error) => OrderState.loadFailure(error),
        (list) => OrderState.getHotPromoSuccess(list),
      );
    }, getDetailOutlet: (request) async* {
      final staticBanner =
          await _orderRepository.getDetailOutlet(request.request.toJson());
      yield staticBanner.fold(
        (error) => OrderState.loadFailure(error),
        (list) => OrderState.getDetailOutletSuccess(list),
      );
    }, getPaymentMethod: (request) async* {
      final staticBanner =
          await _orderRepository.getPaymentMethod(request.request.toJson());
      yield staticBanner.fold(
        (error) => OrderState.loadFailure(error),
        (list) => OrderState.getPaymentMethodSuccess(list),
      );
    }, deliveryInquiry: (request) async* {
      final staticBanner =
          await _orderRepository.deliveryInquiry(request.request.toJson());
      yield staticBanner.fold(
        (error) => OrderState.loadFailure(error),
        (list) => OrderState.deliveryInquirySuccess(list),
      );
    }, createCartSession: (request) async* {
      final staticBanner =
          await _orderRepository.createCartSession(request.request.toJson());
      yield staticBanner.fold(
        (error) => OrderState.loadFailure(error),
        (list) => OrderState.createCartSessionSuccess(list),
      );
    }, updateCartSession: (request) async* {
      final staticBanner =
          await _orderRepository.updateCartSession(request.request);
      yield staticBanner.fold(
        (error) => OrderState.loadFailure(error),
        (list) => OrderState.updateCartSessionSuccess(list),
      );
    }, checkoutCart: (request) async* {
      final staticBanner =
          await _orderRepository.checkout(request.request.sessionId);
      yield staticBanner.fold(
        (error) => OrderState.loadFailure(error),
        (list) => OrderState.checkoutCartSuccess(list),
      );
    });
  }
}
