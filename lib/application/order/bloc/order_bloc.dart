import 'package:bloc/bloc.dart';
import 'package:digiresto/domain/entity/order/cart_session_response.dart';
import 'package:digiresto/domain/entity/order/checkout_response.dart';
import 'package:digiresto/domain/entity/order/delivery_method_response.dart';
import 'package:digiresto/domain/entity/order/detail_outlet_response.dart';
import 'package:digiresto/domain/entity/order/digi_discount_outlet_response.dart';
import 'package:digiresto/domain/entity/order/get_list_voucher_outlet_response.dart';
import 'package:digiresto/domain/entity/order/hot_promo_model.dart';
import 'package:digiresto/domain/entity/order/outlet_category_response.dart';
import 'package:digiresto/domain/entity/order/outlet_list_product_response.dart';
import 'package:digiresto/domain/entity/order/outlet_product_category_response.dart';
import 'package:digiresto/domain/entity/order/param/create_cart_session_param.dart';
import 'package:digiresto/domain/entity/order/param/delivery_inquiry_param.dart';
import 'package:digiresto/domain/entity/order/param/get_cart_session_param.dart';
import 'package:digiresto/domain/entity/order/param/get_detail_outlet_param.dart';
import 'package:digiresto/domain/entity/order/param/get_digi_discount_outlet_param.dart';
import 'package:digiresto/domain/entity/order/param/get_hot_promo_param.dart';
import 'package:digiresto/domain/entity/order/param/get_list_promo_outlet_param.dart';
import 'package:digiresto/domain/entity/order/param/get_list_voucher_outlet_param.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_by_category_param.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_by_location_param.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_by_merchant_param.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_product_category.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_product_param.dart';
import 'package:digiresto/domain/entity/order/param/get_payment_method_param.dart';
import 'package:digiresto/domain/entity/order/param/update_cart_session_param.dart';
import 'package:digiresto/domain/entity/order/payment_method_response.dart';
import 'package:digiresto/domain/entity/order/promo_outlet_response.dart';
import 'package:digiresto/domain/entity/user/user_get_address_model.dart';
import 'package:digiresto/domain/order/order_cart_dine_in_model.dart';
import 'package:digiresto/domain/order/order_failure.dart';
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
        yield OrderState.loadInProgress();
        final address = await _userRepository.getActiveAddress();
        final activeAddr = address.getOrElse(() => UserAddress());
        final queryString = request.request.queryString.copyWith(
            location: "${activeAddr.latitude}, ${activeAddr.longitude}");

        final getOutletByLocation = await _orderRepository.getOutletByLocation(
            request.request.copyWith(queryString: queryString).toJson());
        yield getOutletByLocation.fold(
          (error) => OrderState.loadFailure(
              OrderFailure.getOutletByLocationFail(error)),
          (list) => OrderState.getOutletByLocationSuccess(list.data),
        );
      },
      getOutletByCategory: (request) async* {
        yield OrderState.loadInProgress();
        final address = await _userRepository.getActiveAddress();
        final activeAddr = address.getOrElse(() => UserAddress());
        final queryString = request.request.queryString.copyWith(
            location: "${activeAddr.latitude}, ${activeAddr.longitude}");

        final getOutletByCategory = await _orderRepository.getOutletByCategory(
            request.request.copyWith(queryString: queryString).toJson());
        yield getOutletByCategory.fold(
          (error) => OrderState.loadFailure(
              OrderFailure.getOutletByCategoryFail(error)),
          (list) => OrderState.getOutletByCategorySuccess(list.data),
        );
      },
      getOutletByMerchant: (r) async* {
        yield OrderState.loadInProgress();
        final address = await _userRepository.getActiveAddress();
        final activeAddr = address.getOrElse(() => UserAddress());
        final queryString = r.request.queryString.copyWith(
            location: "${activeAddr.latitude}, ${activeAddr.longitude}");

        final getOutletByMerchant = await _orderRepository
            .getOutletByMerchant(r.request.copyWith(queryString: queryString));
        yield getOutletByMerchant.fold(
          (error) => OrderState.loadFailure(
              OrderFailure.getOutletByMerchantFail(error)),
          (list) => OrderState.getOutletByMerchantSuccess(list.data),
        );
      },
      getListPromoOutlet: (request) async* {
        yield OrderState.loadInProgress();
        final getListPromoOutlet =
            await _orderRepository.getListPromoOutlet(request.request);
        yield getListPromoOutlet.fold(
          (error) => OrderState.loadFailure(
              OrderFailure.getListPromoOutletFail(error)),
          (list) => OrderState.getListPromoOutletSuccess(list.data),
        );
      },
      getListVoucherOutlet: (request) async* {
        yield OrderState.loadInProgress();
        final getListVoucherOutlet =
            await _orderRepository.getListVoucherOutlet(request.request);
        yield getListVoucherOutlet.fold(
          (error) => OrderState.loadFailure(
              OrderFailure.getListVoucherOutletFail(error)),
          (list) => OrderState.getListVoucherOutletSuccess(list.data),
        );
      },
      getOutletListProduct: (request) async* {
        yield OrderState.loadInProgress();
        final getOutletListProduct =
            await _orderRepository.getOutletListProduct(request.request);
        yield getOutletListProduct.fold(
          (error) => OrderState.loadFailure(
              OrderFailure.getOutletListProductFail(error)),
          (list) => OrderState.getOutletListProductSuccess(list.data),
        );
      },
      getOutletProductCategory: (request) async* {
        yield OrderState.loadInProgress();
        final getOutletProductCategory =
            await _orderRepository.getOutletProductCategory(request.request);
        yield getOutletProductCategory.fold(
          (error) => OrderState.loadFailure(
              OrderFailure.getOutletProductCategoryFail(error)),
          (list) => OrderState.getOutletProductCategorySuccess(list.data),
        );
      },
      getDigiDiscountOutlet: (request) async* {
        yield OrderState.loadInProgress();
        final address = await _userRepository.getActiveAddress();
        final activeAddr = address.getOrElse(() => UserAddress());
        final queryString = request.request.queryString.copyWith(
            location: "${activeAddr.latitude}, ${activeAddr.longitude}");

        final getPromoOutlet = await _orderRepository.getPromoOutlet(
            request.request.copyWith(queryString: queryString).toJson());
        yield getPromoOutlet.fold(
          (error) =>
              OrderState.loadFailure(OrderFailure.getPromoOutletFail(error)),
          (list) => OrderState.getDigiDiscountOutletSuccess(list),
        );
      },
      getHotPromo: (request) async* {
        yield OrderState.loadInProgress();
        final getHotPromo = await _orderRepository.getHotPromo(request.request);
        yield getHotPromo.fold(
          (error) =>
              OrderState.loadFailure(OrderFailure.getHotPromoFail(error)),
          (list) => OrderState.getHotPromoSuccess(list),
        );
      },
      getDetailOutlet: (request) async* {
        yield OrderState.loadInProgress();
        final getDetailOutlet =
            await _orderRepository.getDetailOutlet(request.request);
        yield getDetailOutlet.fold(
          (error) =>
              OrderState.loadFailure(OrderFailure.getDetailOutletFail(error)),
          (list) => OrderState.getDetailOutletSuccess(list.data),
        );
      },
      getPaymentMethod: (request) async* {
        yield OrderState.loadInProgress();
        final getPaymentMethod =
            await _orderRepository.getPaymentMethod(request.request.toJson());
        yield getPaymentMethod.fold(
          (error) =>
              OrderState.loadFailure(OrderFailure.getPaymentMethodFail(error)),
          (list) => OrderState.getPaymentMethodSuccess(list),
        );
      },
      deliveryInquiry: (r) async* {
        yield OrderState.loadInProgress();
        final address = await _userRepository.getActiveAddress();
        final activeAddr = address.getOrElse(() => UserAddress());
        final customerParam = r.request.body.copyWith(
            customer: DeliveryInquiryBodyCustomerParam(
                location: [activeAddr.latitude!, activeAddr.longitude!]));
        final deliveryInquiry = await _orderRepository
            .deliveryInquiry(r.request.copyWith(body: customerParam).toJson());
        yield deliveryInquiry.fold(
          (error) =>
              OrderState.loadFailure(OrderFailure.deliveryInquiryFail(error)),
          (list) => OrderState.deliveryInquirySuccess(list),
        );
      },
      checkVoucherOutlet: (request) async* {
        yield OrderState.loadInProgress();
        final sessionId =
            (await _orderRepository.getSessionId()).getOrElse(() => null);
        final getProduct = await _orderRepository.getProduct();
        final paymentType = await _orderRepository.getPaymentMethodID();
        final address = await _userRepository.getActiveAddress();
        final activeAddr = address.getOrElse(() => UserAddress());
        final deliveryInq = await _orderRepository.getDeliveryMethodID();
        final getSalesTypeCart = await _orderRepository.getSalesTypeCartID();
        final getDineInID = await _orderRepository.getDineInIDMethod();

        String etaOrder = "now";

        if (getDineInID?.useSchedule ?? false) {
          etaOrder = OrderCartDineInModel.getEtaOrder(
              selectedDate: getDineInID?.selectedDate,
              selectedKeyClock: getDineInID?.selectedKeyClock);
        }

        UpdateCartSessionBodyDeliveryParam? deliveryParam;
        if (deliveryInq != null) {
          deliveryParam = UpdateCartSessionBodyDeliveryParam(
              address: activeAddr.address!,
              location: [activeAddr.latitude!, activeAddr.longitude!],
              price: deliveryInq.shipmentMethods.first.price,
              provider: deliveryInq.provider,
              shipmentMethod: deliveryInq.shipmentMethods.first.name);
        }
        final createCartSession = await _orderRepository.checkVoucherOutlet(
            UpdateCartSessionParam(
                body: UpdateCartSessionBodyParam(
                    items: getProduct?.items ?? [],
                    customerNote: "",
                    paymentType: paymentType?.id ?? "",
                    customerPax: (getDineInID?.pax ?? 1).toString(),
                    customerSmoking: false,
                    delivery: deliveryParam,
                    eta: etaOrder,
                    promos: [request.code],
                    salesType: getSalesTypeCart ?? ""),
                queryString:
                    UpdateCartSessionQueryParam(sessionId: sessionId!)));

        yield createCartSession.fold(
          (error) => OrderState.loadFailure(
              OrderFailure.checkVoucherOutletFail(error)),
          (list) => OrderState.checkVoucherOutletSuccess(),
        );
      },
      createCartSession: (request) async* {
        yield OrderState.loadInProgress();
        final createCartSession =
            await _orderRepository.createCartSession(request.request);
        var dataCart = createCartSession.getOrElse(() => null);
        if (dataCart != null) {
          await _orderRepository.setSessionId(dataCart.data.sessionId!);
        }

        yield createCartSession.fold(
          (error) =>
              OrderState.loadFailure(OrderFailure.createCartSessionFail(error)),
          (list) => OrderState.createCartSessionSuccess(list!.data),
        );
      },
      updateCart: (request) async* {
        yield OrderState.loadInProgress();
        final sessionId =
            (await _orderRepository.getSessionId()).getOrElse(() => null);
        final getProduct = await _orderRepository.getProduct();
        final paymentType = await _orderRepository.getPaymentMethodID();
        final address = await _userRepository.getActiveAddress();
        final activeAddr = address.getOrElse(() => UserAddress());
        final deliveryInq = await _orderRepository.getDeliveryMethodID();
        final getVoucherMethodID = await _orderRepository.getVoucherMethodID();
        final getSalesTypeCart = await _orderRepository.getSalesTypeCartID();
        final getDineInID = await _orderRepository.getDineInIDMethod();

        String etaOrder = "now";

        if (getDineInID?.useSchedule ?? false) {
          etaOrder = OrderCartDineInModel.getEtaOrder(
              selectedDate: getDineInID?.selectedDate,
              selectedKeyClock: getDineInID?.selectedKeyClock);
        }

        UpdateCartSessionBodyDeliveryParam? deliveryParam;
        if (deliveryInq != null) {
          deliveryParam = UpdateCartSessionBodyDeliveryParam(
              address: activeAddr.address!,
              location: [activeAddr.latitude!, activeAddr.longitude!],
              price: deliveryInq.shipmentMethods.first.price,
              provider: deliveryInq.provider,
              shipmentMethod: deliveryInq.shipmentMethods.first.name);
        }
        final createCartSession = await _orderRepository.updateCartSession(
            UpdateCartSessionParam(
                body: UpdateCartSessionBodyParam(
                    items: getProduct?.items ?? [],
                    customerNote: request.note,
                    paymentType: paymentType?.id ?? "",
                    customerPax: (getDineInID?.pax ?? 1).toString(),
                    customerSmoking: false,
                    delivery: deliveryParam,
                    eta: etaOrder,
                    promos: getVoucherMethodID == null
                        ? []
                        : [getVoucherMethodID.code],
                    salesType: getSalesTypeCart ?? ""),
                queryString:
                    UpdateCartSessionQueryParam(sessionId: sessionId!)));

        yield createCartSession.fold(
          (error) => OrderState.loadFailure(OrderFailure.addCartFail(error)),
          (list) => OrderState.addCartSuccess(list!.data, false),
        );
      },
      addCart: (request) async* {
        yield OrderState.loadInProgress();
        final sessionId =
            (await _orderRepository.getSessionId()).getOrElse(() => null);
        final userProfile = (await _orderRepository.getLocalUserProfile())!;
        final setProduct =
            await _orderRepository.setProduct(request.request, request.outlet);
        final getOutletDetailID =
            await _orderRepository.getCartOutletDetailID();
        final outletID = getOutletDetailID?.id ?? "";
        final paymentType = await _orderRepository.getPaymentMethodID();
        final address = await _userRepository.getActiveAddress();
        final activeAddr = address.getOrElse(() => UserAddress());
        final deliveryInq = await _orderRepository.getDeliveryMethodID();
        final getVoucherMethodID = await _orderRepository.getVoucherMethodID();
        final getSalesTypeCart = await _orderRepository.getSalesTypeCartID();
        final getDineInID = await _orderRepository.getDineInIDMethod();

        String etaOrder = "now";

        if (getDineInID?.useSchedule ?? false) {
          etaOrder = OrderCartDineInModel.getEtaOrder(
              selectedDate: getDineInID?.selectedDate,
              selectedKeyClock: getDineInID?.selectedKeyClock);
        }
        UpdateCartSessionBodyDeliveryParam? deliveryParam;
        if (deliveryInq != null) {
          deliveryParam = UpdateCartSessionBodyDeliveryParam(
              address: activeAddr.address!,
              location: [activeAddr.latitude!, activeAddr.longitude!],
              price: deliveryInq.shipmentMethods.first.price,
              provider: deliveryInq.provider,
              shipmentMethod: deliveryInq.shipmentMethods.first.name);
        }

        //create new cart session, if add cart in the different outlet
        if (sessionId == null || outletID != request.outlet.id) {
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
                      eta: etaOrder,
                      salesType: getSalesTypeCart != null
                          ? getSalesTypeCart
                          : request.salesType,
                      receiptCode: "",
                      items: setProduct?.items ?? []),
                  queryString: CreateCartSessionQueryParam()));

          var dataCart = createCartSession.getOrElse(() => null);
          if (dataCart != null) {
            await _orderRepository.setSalesTypeCartID(request.salesType);
            await _orderRepository.setCartOutletDetailID(request.outlet);
            await _orderRepository.setSessionId(dataCart.data.sessionId!);
          }
          yield createCartSession.fold(
            (error) => OrderState.loadFailure(OrderFailure.addCartFail(error)),
            (list) => OrderState.addCartSuccess(list!.data, request.isBuyNow),
          );
        } else {
          final createCartSession = await _orderRepository.updateCartSession(
              UpdateCartSessionParam(
                  body: UpdateCartSessionBodyParam(
                      items: setProduct?.items ?? [],
                      customerNote: null,
                      paymentType: paymentType?.id ?? "",
                      customerPax: (getDineInID?.pax ?? 1).toString(),
                      customerSmoking: OrderCartDineInModel.isSmoking(
                          getDineInID?.selectedKeySmoking ?? "2"),
                      delivery: deliveryParam,
                      eta: etaOrder,
                      promos: getVoucherMethodID == null
                          ? []
                          : [getVoucherMethodID.code],
                      salesType: getSalesTypeCart ?? ""),
                  queryString:
                      UpdateCartSessionQueryParam(sessionId: sessionId)));

          yield createCartSession.fold(
            (error) => OrderState.loadFailure(OrderFailure.addCartFail(error)),
            (list) => OrderState.addCartSuccess(list!.data, request.isBuyNow),
          );
        }
      },
      reorderCart: (r) async* {
        yield OrderState.loadInProgress();
        final userProfile = (await _orderRepository.getLocalUserProfile())!;
        final setProduct =
            await _orderRepository.reorderCart(r.request, r.outletId);
        final paymentType = await _orderRepository.getPaymentMethodID();
        final address = await _userRepository.getActiveAddress();
        final activeAddr = address.getOrElse(() => UserAddress());
        final deliveryInq = await _orderRepository.getDeliveryMethodID();
        final getVoucherMethodID = await _orderRepository.getVoucherMethodID();
        final getSalesTypeCart = await _orderRepository.getSalesTypeCartID();

        String etaOrder = "now";

        //create new cart session, if add cart in the different outlet
        final createCartSession = await _orderRepository.createCartSession(
            CreateCartSessionParam(
                body: CreateCartSessionBodyParam(
                    outletName: r.request.body.outletName,
                    customerName: userProfile.name!,
                    customerPhone: userProfile.mobilePhone!,
                    customerTableNumber: "",
                    customerSmoking: false,
                    customerPax: "1",
                    customerNote: "",
                    customerCarType: "",
                    customerCarColor: "",
                    customerCarNumber: "",
                    eta: etaOrder,
                    salesType: r.request.body.salesType,
                    receiptCode: "",
                    items: setProduct?.items ?? []),
                queryString: CreateCartSessionQueryParam()));

        var dataCart = createCartSession.getOrElse(() => null);
        if (dataCart != null) {
          await _orderRepository.setSalesTypeCartID(r.request.body.salesType);
          await _orderRepository.setCartOutletDetailID(
              DetailOutletDataResponse.emptyWithID(r.outletId.toString()));
          await _orderRepository.setSessionId(dataCart.data.sessionId!);
        }
        yield createCartSession.fold(
          (error) =>
              OrderState.loadFailure(OrderFailure.reorderCartFail(error)),
          (list) => OrderState.reorderCartSuccess(list!.data),
        );
      },
      removeCart: (r) async* {
        yield OrderState.loadInProgress();
        final removeCart = await _orderRepository.removeProduct(r.request);
        final paymentType = await _orderRepository.getPaymentMethodID();
        final address = await _userRepository.getActiveAddress();
        final activeAddr = address.getOrElse(() => UserAddress());
        final deliveryInq = await _orderRepository.getDeliveryMethodID();
        final getVoucherMethodID = await _orderRepository.getVoucherMethodID();
        final getSalesTypeCart = await _orderRepository.getSalesTypeCartID();

        UpdateCartSessionBodyDeliveryParam? deliveryParam;
        if (deliveryInq != null) {
          deliveryParam = UpdateCartSessionBodyDeliveryParam(
              address: activeAddr.address!,
              location: [activeAddr.latitude!, activeAddr.longitude!],
              price: deliveryInq.shipmentMethods.first.price,
              provider: deliveryInq.provider,
              shipmentMethod: deliveryInq.shipmentMethods.first.name);
        }
        final sessionId =
            (await _orderRepository.getSessionId()).getOrElse(() => null);
        if (removeCart == null || sessionId == null) {
          yield OrderState.loadFailure(OrderFailure.removeCartFail(null));
        } else {
          final createCartSession = await _orderRepository.updateCartSession(
              UpdateCartSessionParam(
                  body: UpdateCartSessionBodyParam(
                      items: removeCart.items ?? [],
                      customerNote: null,
                      paymentType: paymentType?.id ?? "",
                      customerPax: '1',
                      customerSmoking: false,
                      delivery: deliveryParam,
                      eta: 'now',
                      promos: getVoucherMethodID == null
                          ? []
                          : [getVoucherMethodID.code],
                      salesType: getSalesTypeCart ?? ""),
                  queryString:
                      UpdateCartSessionQueryParam(sessionId: sessionId)));

          yield createCartSession.fold(
            (error) =>
                OrderState.loadFailure(OrderFailure.removeCartFail(error)),
            (list) => OrderState.removeCartSuccess(list!.data),
          );
        }
      },
      getCartSession: (_) async* {
        yield OrderState.loadInProgress();
        final sessionId =
            (await _orderRepository.getSessionId()).getOrElse(() => null);
        final getCartSession = await _orderRepository
            .getCartSession(GetCartSessionParam(sessionId: sessionId ?? ""));

        yield getCartSession.fold(
          (error) =>
              OrderState.loadFailure(OrderFailure.getCartSessionFail(error)),
          (list) => OrderState.getCartSessionSuccess(list!.data),
        );
      },
      removeCartSession: (value) async* {
        yield OrderState.loadInProgress();
        final cartSession = (await _orderRepository.removeCartSesion());
        if (cartSession != null) {
          yield OrderState.removeCartSessionSuccess();
        } else {
          yield OrderState.loadFailure(
              OrderFailure.removeCartSessionFail(null));
        }
      },
      getSalesTypeCart: (_) async* {
        yield OrderState.loadInProgress();
        final getSalesTypeCart = await _orderRepository.getSalesTypeCartID();
        if (getSalesTypeCart != null) {
          yield OrderState.getSalesTypeCartSuccess(getSalesTypeCart);
        } else {
          yield OrderState.loadFailure(OrderFailure.salesTypeNull());
        }
      },
      setSalesTypeCart: (r) async* {
        yield OrderState.loadInProgress();
        final setSalesTypeCart =
            await _orderRepository.setSalesTypeCartID(r.value);
        if (setSalesTypeCart != null) {
          yield OrderState.setSalesTypeCartSuccess(setSalesTypeCart);
        } else {
          yield OrderState.loadFailure(OrderFailure.salesTypeNull());
        }
      },
      updateCartSession: (request) async* {
        yield OrderState.loadInProgress();
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
          (error) =>
              OrderState.loadFailure(OrderFailure.updateCartSessionFail(error)),
          (list) => OrderState.updateCartSessionSuccess(list!.data),
        );
      },
      checkoutCart: (request) async* {
        yield OrderState.loadInProgress();
        final sessionId =
            (await _orderRepository.getSessionId()).getOrElse(() => null);
        if (sessionId != null) {
          final checkoutCart = await _orderRepository.checkout(sessionId);
          yield checkoutCart.fold(
            (error) =>
                OrderState.loadFailure(OrderFailure.checkoutCartFail(error)),
            (list) => OrderState.checkoutCartSuccess(list),
          );
        } else {
          yield OrderState.loadFailure(OrderFailure.checkoutCartFail(null));
        }
      },
      getDeliveryMethodID: (r) async* {
        yield OrderState.loadInProgress();
        final getDeliveryMethodID =
            await _orderRepository.getDeliveryMethodID();
        if (getDeliveryMethodID != null) {
          yield OrderState.getDeliveryMethodIDSuccess(getDeliveryMethodID);
        } else {
          yield OrderState.loadFailure(
              OrderFailure.getDeliveryMethodIDFail(null));
        }
      },
      setDeliveryMethodID: (r) async* {
        yield OrderState.loadInProgress();
        final setDeliveryMethodID =
            await _orderRepository.setDeliveryMethodID(r.data);
        if (setDeliveryMethodID != null) {
          yield OrderState.setDeliveryMethodIDSuccess(setDeliveryMethodID);
        } else {
          yield OrderState.loadFailure(
              OrderFailure.setDeliveryMethodIDFail(null));
        }
      },
      getPaymentMethodID: (r) async* {
        yield OrderState.loadInProgress();
        final getPaymentMethodID = await _orderRepository.getPaymentMethodID();
        if (getPaymentMethodID != null) {
          yield OrderState.getPaymentMethodIDSuccess(getPaymentMethodID);
        } else {
          yield OrderState.loadFailure(
              OrderFailure.getPaymentMethodIDFail(null));
        }
      },
      setPaymentMethodID: (r) async* {
        yield OrderState.loadInProgress();
        final setPaymentMethodID =
            await _orderRepository.setPaymentMethodID(r.data);
        if (setPaymentMethodID != null) {
          yield OrderState.setPaymentMethodIDSuccess(setPaymentMethodID);
        } else {
          yield OrderState.loadFailure(
              OrderFailure.setPaymentMethodIDFail(null));
        }
      },
      getVoucherMethodID: (r) async* {
        yield OrderState.loadInProgress();
        final getVoucherMethodID = await _orderRepository.getVoucherMethodID();
        if (getVoucherMethodID != null) {
          yield OrderState.getVoucherMethodIDSuccess(getVoucherMethodID);
        } else {
          yield OrderState.loadFailure(
              OrderFailure.getVoucherMethodIDFail(null));
        }
      },
      setVoucherMethodID: (r) async* {
        yield OrderState.loadInProgress();
        final setVoucherMethodID =
            await _orderRepository.setVoucherMethodID(r.data);
        if (setVoucherMethodID != null) {
          yield OrderState.setVoucherMethodIDSuccess(setVoucherMethodID);
        } else {
          yield OrderState.loadFailure(
              OrderFailure.setVoucherMethodIDFail(null));
        }
      },
      getDineInIDMethod: (r) async* {
        yield OrderState.loadInProgress();
        final getDineInIDMethod = await _orderRepository.getDineInIDMethod();
        if (getDineInIDMethod != null) {
          yield OrderState.getDineInIDMethodSuccess(getDineInIDMethod);
        } else {
          yield OrderState.loadFailure(
              OrderFailure.getDineInIDMethodFail(null));
        }
      },
      setDineInIDMethod: (r) async* {
        yield OrderState.loadInProgress();
        final setDineInIDMethod =
            await _orderRepository.setDineInIDMethod(r.data);
        if (setDineInIDMethod != null) {
          yield OrderState.setDineInIDMethodSuccess(setDineInIDMethod);
        } else {
          yield OrderState.loadFailure(
              OrderFailure.setDineInIDMethodFail(null));
        }
      },
    );
  }
}
