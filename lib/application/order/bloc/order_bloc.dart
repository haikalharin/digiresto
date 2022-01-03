import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
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
import 'package:digiresto/domain/home/i_home_repository.dart';
import 'package:digiresto/domain/order/i_order_repository.dart';
import 'package:digiresto/domain/order/order_cart_dine_in_model.dart';
import 'package:digiresto/domain/order/order_cart_drive_thru_model.dart';
import 'package:digiresto/domain/order/order_failure.dart';
import 'package:digiresto/domain/profile/i_profile_repository.dart';
import 'package:digiresto/domain/profile/order_pending.dart';
import 'package:digiresto/infrastructure/network/apis/user/user_repository.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'order_bloc.freezed.dart';

part 'order_event.dart';

part 'order_state.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final IOrderRepository _orderRepository;
  final UserRepository _userRepository;
  final IProfileRepository _profileRepository;
  final IHomeRepository _homeRepository;

  OrderBloc(
    this._orderRepository,
    this._userRepository,
    this._profileRepository,
    this._homeRepository,
  ) : super(_Initial()) {
    on<OrderEvent>(
      (event, emit) async {
        await event.map(getOutletByLocation: (request) async {
          emit(OrderState.loadInProgress());
          final address = await _userRepository.getActiveAddress();
          final activeAddr = address.getOrElse(() => UserAddress());
          final queryString = request.request.queryString.copyWith(
              location: "${activeAddr.latitude}, ${activeAddr.longitude}");

          final getOutletByLocation =
              await _orderRepository.getOutletByLocation(
                  request.request.copyWith(queryString: queryString).toJson());
          emit(getOutletByLocation.fold(
            (error) => OrderState.loadFailure(
              OrderFailure.getOutletByLocationFail(
                error,
              ),
            ),
            (list) => OrderState.getOutletByLocationSuccess(
              list.data,
            ),
          ));
        }, getOutletByCategory: (request) async {
          emit(OrderState.loadInProgress());
          final address = await _userRepository.getActiveAddress();
          final activeAddr = address.getOrElse(() => UserAddress());
          final queryString = request.request.queryString.copyWith(
              location: "${activeAddr.latitude}, ${activeAddr.longitude}");

          final getOutletByCategory =
              await _orderRepository.getOutletByCategory(
                  request.request.copyWith(queryString: queryString).toJson());
          emit(getOutletByCategory.fold(
            (error) => OrderState.loadFailure(
                OrderFailure.getOutletByCategoryFail(error)),
            (list) => OrderState.getOutletByCategorySuccess(list.data),
          ));
        }, getOutletByMerchant: (r) async {
          emit(OrderState.loadInProgress());
          final address = await _userRepository.getActiveAddress();
          final activeAddr = address.getOrElse(() => UserAddress());
          final queryString = r.request.queryString.copyWith(
              location: "${activeAddr.latitude}, ${activeAddr.longitude}");

          final getOutletByMerchant =
              await _orderRepository.getOutletByMerchant(
                  r.request.copyWith(queryString: queryString));
          emit(getOutletByMerchant.fold(
            (error) => OrderState.loadFailure(
                OrderFailure.getOutletByMerchantFail(error)),
            (list) => OrderState.getOutletByMerchantSuccess(list.data),
          ));
        }, getOutletProductCategory: (request) async {
          emit(OrderState.loadInProgress());
          final getOutletProductCategory =
              await _orderRepository.getOutletProductCategory(request.request);
          emit(getOutletProductCategory.fold(
            (error) => OrderState.loadFailure(
                OrderFailure.getOutletProductCategoryFail(error)),
            (list) => OrderState.getOutletProductCategorySuccess(list.data),
          ));
        }, getListPromoOutlet: (request) async {
          emit(OrderState.loadInProgress());
          final getListPromoOutlet =
              await _orderRepository.getListPromoOutlet(request.request);
          emit(getListPromoOutlet.fold(
            (error) => OrderState.loadFailure(
                OrderFailure.getListPromoOutletFail(error)),
            (list) => OrderState.getListPromoOutletSuccess(list.data),
          ));
        }, getListVoucherOutlet: (request) async {
          emit(OrderState.loadInProgress());
          final getListVoucherOutlet =
          await _orderRepository.getListVoucherOutlet(request.request);
          emit(getListVoucherOutlet.fold(
                (error) => OrderState.loadFailure(
                OrderFailure.getListVoucherOutletFail(error)),
                (list) => OrderState.getListVoucherOutletSuccess(list.data),
          ));
        }, checkVoucherOutlet: (request) async {
          emit(OrderState.loadInProgress());
          final sessionId = (await _orderRepository.getSessionId())
              .fold((l) => null, (r) => r);
          final getProduct = await _orderRepository.getProduct();
          final paymentType = await _orderRepository.getPaymentMethodID();
          final address = await _userRepository.getActiveAddress();
          final activeAddr = address.getOrElse(() => UserAddress());
          final deliveryInq = await _orderRepository.getDeliveryMethodID();
          final getSalesTypeCart = await _orderRepository.getSalesTypeCartID();
          final getDineInID = await _orderRepository.getDineInIDMethod();
          final getDriveThruID = await _orderRepository.getDriveThruIDMethod();

          String etaOrder = "now";

          if (getDineInID?.useSchedule ?? false) {
            etaOrder = OrderCartDineInModel.getEtaOrder(
                selectedDate: getDineInID?.selectedDate,
                selectedKeyClock: getDineInID?.selectedKeyClock);
          } else if (getDriveThruID?.useSchedule ?? false) {
            etaOrder = OrderCartDineInModel.getEtaOrder(
                selectedDate: getDriveThruID?.selectedDate,
                selectedKeyClock: getDriveThruID?.selectedKeyClock);
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
                      customerCarType: "",
                      customerCarColor: "",
                      customerCarNumber: "",
                      customerSmoking: false,
                      delivery: deliveryParam,
                      eta: etaOrder,
                      promos: [request.code],
                      salesType: getSalesTypeCart ?? ""),
                  queryString:
                      UpdateCartSessionQueryParam(sessionId: sessionId!)));

          emit(createCartSession.fold(
            (error) => OrderState.loadFailure(
                OrderFailure.checkVoucherOutletFail(error)),
            (list) => OrderState.checkVoucherOutletSuccess(request.code),
          ));
        }, getOutletListProduct: (request) async {
          emit(OrderState.loadInProgress());
          final getOutletListProduct =
              await _orderRepository.getOutletListProduct(request.request);
          emit(getOutletListProduct.fold(
            (error) => OrderState.loadFailure(
                OrderFailure.getOutletListProductFail(error)),
            (list) => OrderState.getOutletListProductSuccess(list.data),
          ));
        }, getDigiDiscountOutlet: (request) async {
          emit(OrderState.loadInProgress());
          final address = await _userRepository.getActiveAddress();
          final activeAddr = address.getOrElse(() => UserAddress());
          final queryString = request.request.queryString.copyWith(
              location: "${activeAddr.latitude}, ${activeAddr.longitude}");

          final getPromoOutlet = await _orderRepository.getPromoOutlet(
              request.request.copyWith(queryString: queryString).toJson());
          emit(getPromoOutlet.fold(
            (error) =>
                OrderState.loadFailure(OrderFailure.getPromoOutletFail(error)),
            (list) => OrderState.getDigiDiscountOutletSuccess(list),
          ));
        }, getHotPromo: (request) async {
          emit(OrderState.loadInProgress());
          final getHotPromo =
              await _orderRepository.getHotPromo(request.request);
          emit(getHotPromo.fold(
            (error) =>
                OrderState.loadFailure(OrderFailure.getHotPromoFail(error)),
            (list) => OrderState.getHotPromoSuccess(list),
          ));
        }, getDetailOutlet: (request) async {
          emit(OrderState.loadInProgress());
          final getDetailOutlet =
              await _orderRepository.getDetailOutlet(request.request);
          emit(getDetailOutlet.fold(
            (error) =>
                OrderState.loadFailure(OrderFailure.getDetailOutletFail(error)),
            (list) => OrderState.getDetailOutletSuccess(list.data),
          ));
        }, getDetailOutletByMerchant: (request) async {
          emit(OrderState.loadInProgress());
          final address = await _homeRepository.getUserAddress();
          final activeAddr = address.getOrElse(() => UserAddress());
          final location = "${activeAddr.latitude}, ${activeAddr.longitude}";
          final getDetailOutletByMerchant =
              await _orderRepository.getDetailOutletByMerchant(
            location,
            request.merchantId,
          );

          emit(
            getDetailOutletByMerchant.fold(
              (error) => OrderState.loadFailure(
                OrderFailure.getDetailOutletByMerchantFail(error),
              ),
              (list) => OrderState.getDetailOutletByMerchantSuccess(list.data),
            ),
          );
        }, getPaymentMethod: (request) async {
          emit(OrderState.loadInProgress());
          final getPaymentMethod =
              await _orderRepository.getPaymentMethod(request.request.toJson());
          emit(getPaymentMethod.fold(
            (error) => OrderState.loadFailure(
                OrderFailure.getPaymentMethodFail(error)),
            (list) => OrderState.getPaymentMethodSuccess(list),
          ));
        }, deliveryInquiry: (r) async {
          emit(OrderState.loadInProgress());
          final address = await _userRepository.getActiveAddress();
          final activeAddr = address.getOrElse(() => UserAddress());
          final customerParam = r.request.body.copyWith(
              customer: DeliveryInquiryBodyCustomerParam(
                  location: [activeAddr.latitude!, activeAddr.longitude!]));
          final deliveryInquiry = await _orderRepository.deliveryInquiry(
              r.request.copyWith(body: customerParam).toJson());
          emit(deliveryInquiry.fold(
            (error) =>
                OrderState.loadFailure(OrderFailure.deliveryInquiryFail(error)),
            (list) => OrderState.deliveryInquirySuccess(list),
          ));
        }, createCartSession: (request) async {
          emit(OrderState.loadInProgress());
          final createCartSession =
              await _orderRepository.createCartSession(request.request);
          var dataCart = createCartSession.getOrElse(() => null);
          if (dataCart != null) {
            await _orderRepository.setSessionId(dataCart.data.sessionId!);
          }

          emit(createCartSession.fold(
            (error) => OrderState.loadFailure(
                OrderFailure.createCartSessionFail(error)),
            (list) => OrderState.createCartSessionSuccess(list!.data),
          ));
        }, reorderCart: (r) async {
          emit(OrderState.loadInProgress());
          final userProfile = (await _orderRepository.getLocalUserProfile())!;
          final setProduct =
              await _orderRepository.reorderCart(r.request, r.outletId);

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
              queryString: CreateCartSessionQueryParam(),
            ),
          );

          var dataCart = createCartSession.getOrElse(() => null);
          if (dataCart != null) {
            await _orderRepository.setSalesTypeCartID(r.request.body.salesType);
            await _orderRepository.setCartOutletDetailID(
                DetailOutletDataResponse.emptyWithID(r.outletId.toString()));
            await _orderRepository.setSessionId(dataCart.data.sessionId!);
          }
          emit(createCartSession.fold(
            (error) =>
                OrderState.loadFailure(OrderFailure.reorderCartFail(error)),
            (list) => OrderState.reorderCartSuccess(list!.data),
          ));
        }, removeCart: (r) async {
          emit(OrderState.loadInProgress());
          final removeCart = await _orderRepository.removeProduct(r.request);
          final paymentType = await _orderRepository.getPaymentMethodID();
          final address = await _userRepository.getActiveAddress();
          final activeAddr = address.getOrElse(() => UserAddress());
          final deliveryInq = await _orderRepository.getDeliveryMethodID();
          final getVoucherMethodID =
              await _orderRepository.getVoucherMethodID();
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
          final sessionId = (await _orderRepository.getSessionId())
              .fold((l) => null, (r) => r);
          if (removeCart == null || sessionId == null) {
            emit(OrderState.loadFailure(OrderFailure.removeCartFail(null)));
          } else {
            final createCartSession = await _orderRepository.updateCartSession(
              UpdateCartSessionParam(
                body: UpdateCartSessionBodyParam(
                  items: removeCart.items ?? [],
                  customerNote: null,
                  paymentType: paymentType?.id ?? "",
                  customerPax: '1',
                  customerSmoking: false,
                  customerCarColor: '',
                  customerCarNumber: '',
                  customerCarType: '',
                  delivery: deliveryParam,
                  eta: 'now',
                  promos: getVoucherMethodID == null
                      ? []
                      : [getVoucherMethodID.code],
                  salesType: getSalesTypeCart ?? "",
                ),
                queryString: UpdateCartSessionQueryParam(
                  sessionId: sessionId,
                ),
              ),
            );

            emit(createCartSession.fold(
              (error) =>
                  OrderState.loadFailure(OrderFailure.removeCartFail(error)),
              (list) => OrderState.removeCartSuccess(list!.data),
            ));
          }
        }, addCart: (request) async {
          emit(OrderState.loadInProgress());
          final sessionId = (await _orderRepository.getSessionId())
              .fold((l) => null, (r) => r);
          final userProfile = (await _orderRepository.getLocalUserProfile())!;
          final setProduct = await _orderRepository.setProduct(
              request.request, request.outlet);
          final getOutletDetailID =
              await _orderRepository.getCartOutletDetailID();
          final outletID = getOutletDetailID?.id ?? "";
          final paymentType = await _orderRepository.setPaymentMethodID(null);
          final address = await _userRepository.getActiveAddress();
          final activeAddr = address.getOrElse(() => UserAddress());
          final deliveryInq = await _orderRepository.setDeliveryMethodID(null);
          final getVoucherMethodID =
              await _orderRepository.setVoucherMethodID(null);
          final getSalesTypeCart = await _orderRepository.getSalesTypeCartID();
          final getDineInID = await _orderRepository.setDineInIDMethod(null);
          final getDriveThruID =
              await _orderRepository.setDriveThruIDMethod(null);

          String etaOrder = "now";

          if (getDineInID?.useSchedule ?? false) {
            etaOrder = OrderCartDineInModel.getEtaOrder(
                selectedDate: getDineInID?.selectedDate,
                selectedKeyClock: getDineInID?.selectedKeyClock);
          } else if (getDriveThruID?.useSchedule ?? false) {
            etaOrder = OrderCartDineInModel.getEtaOrder(
                selectedDate: getDriveThruID?.selectedDate,
                selectedKeyClock: getDriveThruID?.selectedKeyClock);
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
                        items: setProduct?.items ?? [],
                        mealsTypes: request.mealsType,
                        isCatering: request.isCatering,
                        preOrderDate: request.preOrderDate,
                        excludeMerchantCategories: null),
                    queryString: CreateCartSessionQueryParam()));

            var dataCart = createCartSession.getOrElse(() => null);
            if (dataCart != null) {
              await _orderRepository.setSalesTypeCartID(request.salesType);
              await _orderRepository.setCartOutletDetailID(request.outlet);
              await _orderRepository.setSessionId(dataCart.data.sessionId!);
            }
            emit(createCartSession.fold(
              (error) =>
                  OrderState.loadFailure(OrderFailure.addCartFail(error)),
              (list) => OrderState.addCartSuccess(
                list!.data,
                request.isBuyNow,
                request.outletName,
              ),
            ));
          } else {
            final createCartSession = await _orderRepository.updateCartSession(
                UpdateCartSessionParam(
                    body: UpdateCartSessionBodyParam(
                      items: setProduct?.items ?? [],
                      customerNote: null,
                      paymentType: paymentType?.id ?? "",
                      customerPax: (getDineInID?.pax ?? 1).toString(),
                      customerCarType: getDriveThruID?.customerCarType ?? "",
                      customerCarColor: getDriveThruID?.customerCarColor ?? "",
                      customerCarNumber:
                          getDriveThruID?.customerCarNumber ?? "",
                      customerSmoking: OrderCartDineInModel.isSmoking(
                          getDineInID?.selectedKeySmoking ?? "2"),
                      delivery: deliveryParam,
                      eta: etaOrder,
                      promos: getVoucherMethodID == null
                          ? []
                          : [getVoucherMethodID.code],
                      salesType: getSalesTypeCart ?? "",
                    ),
                    queryString:
                        UpdateCartSessionQueryParam(sessionId: sessionId)));

            emit(createCartSession.fold(
              (error) =>
                  OrderState.loadFailure(OrderFailure.addCartFail(error)),
              (list) => OrderState.addCartSuccess(
                list!.data,
                request.isBuyNow,
                request.outletName,
              ),
            ));
          }
        }, updateCart: (request) async {
          emit(OrderState.loadInProgress());
          final sessionId = (await _orderRepository.getSessionId())
              .fold((l) => null, (r) => r);
          final getProduct = await _orderRepository.getProduct();
          final paymentType = await _orderRepository.getPaymentMethodID();
          final address = await _userRepository.getActiveAddress();
          final activeAddr = address.getOrElse(() => UserAddress());
          final deliveryInq = await _orderRepository.getDeliveryMethodID();
          final getVoucherMethodID =
              await _orderRepository.getVoucherMethodID();
          final getSalesTypeCart = await _orderRepository.getSalesTypeCartID();
          final getDineInID = await _orderRepository.getDineInIDMethod();
          final getDriveThruID = await _orderRepository.getDriveThruIDMethod();

          String etaOrder = "now";

          if (getDineInID?.useSchedule ?? false) {
            etaOrder = OrderCartDineInModel.getEtaOrder(
                selectedDate: getDineInID?.selectedDate,
                selectedKeyClock: getDineInID?.selectedKeyClock);
          } else if (getDriveThruID?.useSchedule ?? false) {
            etaOrder = OrderCartDineInModel.getEtaOrder(
                selectedDate: getDriveThruID?.selectedDate,
                selectedKeyClock: getDriveThruID?.selectedKeyClock);
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
                      customerCarType: getDriveThruID?.customerCarType ?? "",
                      customerCarColor: getDriveThruID?.customerCarColor ?? "",
                      customerCarNumber:
                          getDriveThruID?.customerCarNumber ?? "",
                      customerSmoking: false,
                      delivery: deliveryParam,
                      eta: etaOrder,
                      promos: getVoucherMethodID == null
                          ? []
                          : [getVoucherMethodID.code],
                      salesType: getSalesTypeCart ?? "",
                      // mealsTypes: request.mealsType,
                      // isCatering: request.isCatering,
                      // preOrderDate: request.preOrderDate,
                      excludeMerchantCategories: null),
                  queryString:
                      UpdateCartSessionQueryParam(sessionId: sessionId!)));

          emit(createCartSession.fold(
            (error) => OrderState.loadFailure(OrderFailure.addCartFail(error)),
            (list) => OrderState.updateCartSuccess(
              list!.data,
              request.outletName,
            ),
          ));
        }, getCartSession: (request) async {
          emit(OrderState.loadInProgress());
          var createCart = await _orderRepository.getOrderCart();
          if (createCart == null) {
            emit(
              OrderState.loadFailure(
                OrderFailure.getCartSessionFail(
                  Exception('No Local Data'),
                ),
              ),
            );
          } else {
            final getCartSession =
                await _orderRepository.createCartSession(createCart);
            final getOutletDetailID =
                await _orderRepository.getCartOutletDetailID();
            emit(getCartSession.fold(
              (error) => OrderState.loadFailure(
                  OrderFailure.getCartSessionFail(error)),
              (list) => OrderState.getCartSessionSuccess(
                list!.data,
                getOutletDetailID!.merchantName!,
              ),
            ));
          }
        }, removeCartSession: (value) async {
          emit(OrderState.loadInProgress());
          final cartSession = (await _orderRepository.removeCartSesion());
          if (cartSession != null) {
            emit(OrderState.removeCartSessionSuccess());
          } else {
            emit(OrderState.loadFailure(
                OrderFailure.removeCartSessionFail(null)));
          }
        }, updateCartSession: (request) async {
          emit(OrderState.loadInProgress());
          final sessionId = (await _orderRepository.getSessionId())
              .fold((l) => null, (r) => r);
          final param = request.request.copyWith(
              queryString: UpdateCartSessionQueryParam(sessionId: sessionId!));
          final updateCartSession =
              await _orderRepository.updateCartSession(param);
          var dataCart = updateCartSession.getOrElse(() => null);
          if (dataCart != null) {
            await _orderRepository.setSessionId(dataCart.data.sessionId!);
          }
          emit(updateCartSession.fold(
            (error) => OrderState.loadFailure(
                OrderFailure.updateCartSessionFail(error)),
            (list) => OrderState.updateCartSessionSuccess(list!.data),
          ));
        }, checkoutCart: (request) async {
          emit(OrderState.loadInProgress());
          final sessionId = (await _orderRepository.getSessionId())
              .fold((l) => request.sessionId, (r) => r);
          if (sessionId != null) {
            final checkoutCart = await _orderRepository.checkout(sessionId);
            emit(checkoutCart.fold(
              (error) {
                return OrderState.loadFailure(
                  OrderFailure.checkoutCartFail(error),
                );
              },
              (list) => OrderState.checkoutCartSuccess(list),
            ));
          } else {
            emit(OrderState.loadFailure(OrderFailure.checkoutCartFail(null)));
          }
        }, getSalesTypeCart: (request) async {
          emit(OrderState.loadInProgress());
          final getSalesTypeCart = await _orderRepository.getSalesTypeCartID();
          if (getSalesTypeCart != null) {
            emit(OrderState.getSalesTypeCartSuccess(getSalesTypeCart));
          } else {
            emit(OrderState.loadFailure(OrderFailure.salesTypeNull()));
          }
        }, setSalesTypeCart: (r) async {
          emit(OrderState.loadInProgress());
          final setSalesTypeCart =
              await _orderRepository.setSalesTypeCartID(r.value);
          if (setSalesTypeCart != null) {
            emit(OrderState.setSalesTypeCartSuccess(setSalesTypeCart));
          } else {
            emit(OrderState.loadFailure(OrderFailure.salesTypeNull()));
          }
        }, setPaymentMethodID: (r) async {
          emit(OrderState.loadInProgress());
          final setPaymentMethodID =
              await _orderRepository.setPaymentMethodID(r.data);
          if (setPaymentMethodID != null) {
            emit(OrderState.setPaymentMethodIDSuccess(setPaymentMethodID));
          } else {
            emit(OrderState.loadFailure(
                OrderFailure.setPaymentMethodIDFail(null)));
          }
        }, getPaymentMethodID: (request) async {
          emit(OrderState.loadInProgress());
          final getPaymentMethodID =
              await _orderRepository.getPaymentMethodID();
          if (getPaymentMethodID != null) {
            emit(OrderState.getPaymentMethodIDSuccess(getPaymentMethodID));
          } else {
            emit(OrderState.loadFailure(
                OrderFailure.getPaymentMethodIDFail(null)));
          }
        }, setDeliveryMethodID: (r) async {
          emit(OrderState.loadInProgress());
          final setDeliveryMethodID =
              await _orderRepository.setDeliveryMethodID(r.data);
          if (setDeliveryMethodID != null) {
            emit(OrderState.setDeliveryMethodIDSuccess(setDeliveryMethodID));
          } else {
            emit(OrderState.loadFailure(
                OrderFailure.setDeliveryMethodIDFail(null)));
          }
        }, getDeliveryMethodID: (request) async {
          emit(OrderState.loadInProgress());
          final getDeliveryMethodID =
              await _orderRepository.getDeliveryMethodID();
          if (getDeliveryMethodID != null) {
            emit(OrderState.getDeliveryMethodIDSuccess(getDeliveryMethodID));
          } else {
            emit(OrderState.loadFailure(
                OrderFailure.getDeliveryMethodIDFail(null)));
          }
        }, setDineInIDMethod: (r) async {
          emit(OrderState.loadInProgress());
          final setDineInIDMethod =
              await _orderRepository.setDineInIDMethod(r.data);
          if (setDineInIDMethod != null) {
            emit(OrderState.setDineInIDMethodSuccess(setDineInIDMethod));
          } else {
            emit(OrderState.loadFailure(
                OrderFailure.setDineInIDMethodFail(null)));
          }
        }, getDineInIDMethod: (request) async {
          emit(OrderState.loadInProgress());
          final getDineInIDMethod = await _orderRepository.getDineInIDMethod();
          if (getDineInIDMethod != null) {
            emit(OrderState.getDineInIDMethodSuccess(getDineInIDMethod));
          } else {
            emit(OrderState.loadFailure(
                OrderFailure.getDineInIDMethodFail(null)));
          }
        }, setDriveThruIDMethod: (r) async {
          emit(OrderState.loadInProgress());
          final setDriveThruIDMethod =
              await _orderRepository.setDriveThruIDMethod(r.data);
          if (setDriveThruIDMethod != null) {
            emit(OrderState.setDriveThruIDMethodSuccess(setDriveThruIDMethod));
          } else {
            emit(OrderState.loadFailure(
                OrderFailure.setDriveThruIDMethodFail(null)));
          }
        }, getDriveThruIDMethod: (r) async {
          emit(OrderState.loadInProgress());
          final getDriveThru = await _orderRepository.getDriveThruIDMethod();
          if (getDriveThru != null) {
            emit(OrderState.getDriveThruIDMethodSucess(getDriveThru));
          } else {
            emit(OrderState.loadFailure(
                OrderFailure.getDriveThruIDMethodFail(null)));
          }
        }, setVoucherMethodID: (r) async {
          emit(OrderState.loadInProgress());
          final setVoucherMethodID =
              await _orderRepository.setVoucherMethodID(r.data);
          if (setVoucherMethodID != null) {
            emit(OrderState.setVoucherMethodIDSuccess(setVoucherMethodID));
          } else {
            emit(OrderState.loadFailure(
                OrderFailure.setVoucherMethodIDFail(null)));
          }
        }, getVoucherMethodID: (request) async {
          emit(OrderState.loadInProgress());
          final getVoucherMethodID =
              await _orderRepository.getVoucherMethodID();
          if (getVoucherMethodID != null) {
            emit(OrderState.getVoucherMethodIDSuccess(getVoucherMethodID));
          } else {
            emit(OrderState.loadFailure(
                OrderFailure.getVoucherMethodIDFail(null)));
          }
        }, getTransactionPending: (request) async {
          emit(OrderState.loadInProgress());
          final getTransactionPending =
              await _profileRepository.getOrderPending();

          emit(getTransactionPending.fold(
            (error) => OrderState.loadFailure(
                OrderFailure.getTransactionPendingFail()),
            (list) => OrderState.getTransactionPendingSuccess(list),
          ));
        }, cancelTransaction: (r) async {
          emit(OrderState.loadInProgress());
          final cancelTransaction = await _profileRepository.cancelTransaction(
            reason: 'Cancel payment method',
            receiptCode: r.receiptCode,
          );
          emit(cancelTransaction.fold(
            (error) =>
                OrderState.loadFailure(OrderFailure.cancelTransactionFail()),
            (unit) => OrderState.cancelTransactionSuccess(),
          ));
        }, mustAddPaymentMethod: (request) async {
          emit(OrderState.mustAddPaymentMethods());
        });
      },
      transformer: sequential(),
    );
  }
}

