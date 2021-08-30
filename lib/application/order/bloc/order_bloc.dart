import 'package:bloc/bloc.dart';
import 'package:digiresto/domain/entity/order/cart_session_response.dart';
import 'package:digiresto/domain/entity/order/checkout_response.dart';
import 'package:digiresto/domain/entity/order/delivery_method_model.dart';
import 'package:digiresto/domain/entity/order/detail_outlet_model.dart';
import 'package:digiresto/domain/entity/order/get_list_voucher_outlet_response.dart';
import 'package:digiresto/domain/entity/order/hot_promo_model.dart';
import 'package:digiresto/domain/entity/order/outlet_category_response.dart';
import 'package:digiresto/domain/entity/order/outlet_list_product_response.dart';
import 'package:digiresto/domain/entity/order/outlet_product_category_response.dart';
import 'package:digiresto/domain/entity/order/param/checkout_cart_param.dart';
import 'package:digiresto/domain/entity/order/param/create_cart_session_param.dart';
import 'package:digiresto/domain/entity/order/param/delivery_inquiry_param.dart';
import 'package:digiresto/domain/entity/order/param/get_cart_session_param.dart';
import 'package:digiresto/domain/entity/order/param/get_detail_outlet_param.dart';
import 'package:digiresto/domain/entity/order/param/get_hot_promo_param.dart';
import 'package:digiresto/domain/entity/order/param/get_list_promo_outlet_param.dart';
import 'package:digiresto/domain/entity/order/param/get_list_voucher_outlet_param.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_by_category_param.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_by_location_param.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_product_category.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_product_param.dart';
import 'package:digiresto/domain/entity/order/param/get_payment_method_param.dart';
import 'package:digiresto/domain/entity/order/param/get_promo_outlet_param.dart';
import 'package:digiresto/domain/entity/order/param/update_cart_session_param.dart';
import 'package:digiresto/domain/entity/order/payment_method.dart';
import 'package:digiresto/domain/entity/order/promo_outlet_model.dart';
import 'package:digiresto/domain/entity/order/promo_outlet_response.dart';
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
    yield* gEvent.map(
      getOutletByLocation: (request) async* {
        final address = await _userRepository.getActiveAddress();
        final activeAddr = address.getOrElse(() => UserAddress());
        final queryString = request.request.queryString.copyWith(
            location: "${activeAddr.latitude}, ${activeAddr.longitude}");

        final getOutletByLocation = await _orderRepository.getOutletByLocation(
            request.request.copyWith(queryString: queryString).toJson());
        yield getOutletByLocation.fold(
          (error) => OrderState.loadFailure(error),
          (list) => OrderState.getOutletByLocationSuccess(list.data),
        );
      },
      getOutletByCategory: (request) async* {
        final address = await _userRepository.getActiveAddress();
        final activeAddr = address.getOrElse(() => UserAddress());
        final queryString = request.request.queryString.copyWith(
            location: "${activeAddr.latitude}, ${activeAddr.longitude}");

        final getOutletByCategory = await _orderRepository.getOutletByCategory(
            request.request.copyWith(queryString: queryString).toJson());
        yield getOutletByCategory.fold(
          (error) => OrderState.loadFailure(error),
          (list) => OrderState.getOutletByCategorySuccess(list.data),
        );
      },
      getListPromoOutlet: (request) async* {
        final getListPromoOutlet =
            await _orderRepository.getListPromoOutlet(request.request);
        yield getListPromoOutlet.fold(
          (error) => OrderState.loadFailure(error),
          (list) => OrderState.getListPromoOutletSuccess(list.data),
        );
      },
      getListVoucherOutlet: (request) async* {
        final getListVoucherOutlet =
            await _orderRepository.getListVoucherOutlet(request.request);
        yield getListVoucherOutlet.fold(
          (error) => OrderState.loadFailure(error),
          (list) => OrderState.getListVoucherOutletSuccess(list.data),
        );
      },
      getOutletListProduct: (request) async* {
        final getOutletListProduct =
            await _orderRepository.getOutletListProduct(request.request);
        yield getOutletListProduct.fold(
          (error) => OrderState.loadFailure(error),
          (list) => OrderState.getOutletListProductSuccess(list.data),
        );
      },
      getOutletProductCategory: (request) async* {
        final getOutletProductCategory =
            await _orderRepository.getOutletProductCategory(request.request);
        yield getOutletProductCategory.fold(
          (error) => OrderState.loadFailure(error),
          (list) => OrderState.getOutletProductCategorySuccess(list.data),
        );
      },
      getPromoOutlet: (request) async* {
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
      },
      getHotPromo: (request) async* {
        final getHotPromo = await _orderRepository.getHotPromo(request.request);
        yield getHotPromo.fold(
          (error) => OrderState.loadFailure(error),
          (list) => OrderState.getHotPromoSuccess(list),
        );
      },
      getDetailOutlet: (request) async* {
        final getDetailOutlet =
            await _orderRepository.getDetailOutlet(request.request);
        yield getDetailOutlet.fold(
          (error) => OrderState.loadFailure(error),
          (list) => OrderState.getDetailOutletSuccess(list.data),
        );
      },
      getPaymentMethod: (request) async* {
        final getPaymentMethod =
            await _orderRepository.getPaymentMethod(request.request.toJson());
        yield getPaymentMethod.fold(
          (error) => OrderState.loadFailure(error),
          (list) => OrderState.getPaymentMethodSuccess(list),
        );
      },
      deliveryInquiry: (request) async* {
        final deliveryInquiry =
            await _orderRepository.deliveryInquiry(request.request.toJson());
        yield deliveryInquiry.fold(
          (error) => OrderState.loadFailure(error),
          (list) => OrderState.deliveryInquirySuccess(list),
        );
      },
      createCartSession: (request) async* {
        final createCartSession =
            await _orderRepository.createCartSession(request.request);
        var dataCart = createCartSession.getOrElse(() => null);
        if (dataCart != null) {
          await _orderRepository.setSessionId(dataCart.data.sessionId!);
        }

        yield createCartSession.fold(
          (error) => OrderState.loadFailure(error),
          (list) => OrderState.createCartSessionSuccess(list!.data),
        );
      },
      addCart: (request) async* {
        final sessionId =
            (await _orderRepository.getSessionId()).getOrElse(() => null);
        final userProfile = (await _orderRepository.getLocalUserProfile())!;
        await _orderRepository.setOutletDetailID(request.outlet);
        final setProduct =
            await _orderRepository.setProduct(request.request, request.outlet);

        if (sessionId == null) {
          final createCartSession = await _orderRepository.createCartSession(
              CreateCartSessionParam(
                  body: CreateCartSessionBodyParam(
                      outletName: request.outlet.endpointName,
                      customerName: userProfile.name!,
                      customerPhone: userProfile.mobilePhone!,
                      customerTableNumber: "",
                      customerSmoking: false,
                      customerPax: "1",
                      customerNote: "",
                      customerCarType: "",
                      customerCarColor: "",
                      customerCarNumber: "",
                      eta: "now",
                      salesType: request.salesType,
                      receiptCode: "",
                      items: setProduct?.items ?? []),
                  queryString: CreateCartSessionQueryParam()));

          var dataCart = createCartSession.getOrElse(() => null);
          if (dataCart != null) {
            await _orderRepository.setSessionId(dataCart.data.sessionId!);
          }
          yield createCartSession.fold(
            (error) => OrderState.loadFailure(error),
            (list) => OrderState.addCartSuccess(list!.data),
          );
        } else {
          final createCartSession = await _orderRepository.updateCartSession(
              UpdateCartSessionParam(
                  body: UpdateCartSessionBodyParam(
                      items: setProduct?.items ?? [],
                      customerNote: '',
                      paymentType: ''),
                  queryString:
                      UpdateCartSessionQueryParam(sessionId: sessionId)));

          yield createCartSession.fold(
            (error) => OrderState.loadFailure(error),
            (list) => OrderState.addCartSuccess(list!.data),
          );
        }
      },
      removeCart: (r) async* {
        final removeCart = await _orderRepository.removeProduct(r.request);
        final sessionId =
            (await _orderRepository.getSessionId()).getOrElse(() => null);
        if (removeCart == null || sessionId == null) {
          yield OrderState.loadFailure(Exception());
        } else {
          final createCartSession = await _orderRepository.updateCartSession(
              UpdateCartSessionParam(
                  body: UpdateCartSessionBodyParam(
                      items: removeCart.items ?? [],
                      customerNote: '',
                      paymentType: ''),
                  queryString:
                      UpdateCartSessionQueryParam(sessionId: sessionId)));

          yield createCartSession.fold(
            (error) => OrderState.loadFailure(error),
            (list) => OrderState.removeCartSuccess(list!.data),
          );
        }
      },
      getCartSession: (_) async* {
        final sessionId =
            (await _orderRepository.getSessionId()).getOrElse(() => null);
        final getCartSession = await _orderRepository
            .getCartSession(GetCartSessionParam(sessionId: sessionId ?? ""));

        yield getCartSession.fold(
          (error) => OrderState.loadFailure(error),
          (list) => OrderState.getCartSessionSuccess(list!.data),
        );
      },
      getSalesTypeCart: (_) async* {
        final getSalesTypeCart = await _orderRepository.getSalesTypeCart();
        if (getSalesTypeCart != null) {
          yield OrderState.getSalesTypeCartSuccess(getSalesTypeCart);
        } else {
          yield OrderState.loadFailure(Exception(getSalesTypeCart));
        }
      },
      setSalesTypeCart: (r) async* {
        final setSalesTypeCart =
            await _orderRepository.setSalesTypeCart(r.value);
        if (setSalesTypeCart != null) {
          yield OrderState.setSalesTypeCartSuccess(setSalesTypeCart);
        } else {
          yield OrderState.loadFailure(Exception(setSalesTypeCart));
        }
      },
      updateCartSession: (request) async* {
        final sessionId =
            (await _orderRepository.getSessionId()).getOrElse(() => null);
        final param = request.request.copyWith(
            queryString: UpdateCartSessionQueryParam(sessionId: sessionId!));
        final updateCartSession =
            await _orderRepository.updateCartSession(param);
        var dataCart = updateCartSession.getOrElse(() => null);
        if (dataCart != null) {
          await _orderRepository.setSessionId(dataCart.data.sessionId!);
        }
        yield updateCartSession.fold(
          (error) => OrderState.loadFailure(error),
          (list) => OrderState.updateCartSessionSuccess(list!.data),
        );
      },
      checkoutCart: (request) async* {
        final checkoutCart =
            await _orderRepository.checkout(request.request.sessionId);
        yield checkoutCart.fold(
          (error) => OrderState.loadFailure(error),
          (list) => OrderState.checkoutCartSuccess(list),
        );
      },
    );
  }
}
