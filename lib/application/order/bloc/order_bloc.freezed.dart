// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderEventTearOff {
  const _$OrderEventTearOff();

  _GetOutletByLocation getOutletByLocation(GetOutletByLocationParam request) {
    return _GetOutletByLocation(
      request,
    );
  }

  _GetOutletByCategory getOutletByCategory(GetOutletByCategoryParam request) {
    return _GetOutletByCategory(
      request,
    );
  }

  _GetOutletByMerchant getOutletByMerchant(GetOutletByMerchantParam request) {
    return _GetOutletByMerchant(
      request,
    );
  }

  _GetOutletProductCategory getOutletProductCategory(
      GetOutletProductCategoryParam request) {
    return _GetOutletProductCategory(
      request,
    );
  }

  _GetListPromoOutlet getListPromoOutlet(GetListPromoOutletParam request) {
    return _GetListPromoOutlet(
      request,
    );
  }

  _GetListVoucherOutlet getListVoucherOutlet(
      GetListVoucherOutletParam request) {
    return _GetListVoucherOutlet(
      request,
    );
  }

  _GetOutletListProduct getOutletListProduct(GetOutletProductParam request) {
    return _GetOutletListProduct(
      request,
    );
  }

  _GetPromoOutlet getPromoOutlet(GetPromoOutletParam request) {
    return _GetPromoOutlet(
      request,
    );
  }

  _GetHotPromo getHotPromo(GetHotPromoParam request) {
    return _GetHotPromo(
      request,
    );
  }

  _GetDetailOutlet getDetailOutlet(GetDetailOutletParam request) {
    return _GetDetailOutlet(
      request,
    );
  }

  _GetPaymentMethod getPaymentMethod(GetPaymentMethodParam request) {
    return _GetPaymentMethod(
      request,
    );
  }

  _GeliveryInquiry deliveryInquiry(DeliveryInquiryParam request) {
    return _GeliveryInquiry(
      request,
    );
  }

  _CreateCartSession createCartSession(CreateCartSessionParam request) {
    return _CreateCartSession(
      request,
    );
  }

  _AddCart addCart(CreateUpdateCartSessionItemParam request,
      DetailOutletDataResponse outlet, String salesType) {
    return _AddCart(
      request,
      outlet,
      salesType,
    );
  }

  _UpdateCart updateCart() {
    return const _UpdateCart();
  }

  _RemoveCart removeCart(CreateUpdateCartSessionItemParam request) {
    return _RemoveCart(
      request,
    );
  }

  _GetCartSession getCartSession() {
    return const _GetCartSession();
  }

  _UpdateCartSession updateCartSession(UpdateCartSessionParam request) {
    return _UpdateCartSession(
      request,
    );
  }

  _CheckoutCart checkoutCart(CheckoutCartParam request) {
    return _CheckoutCart(
      request,
    );
  }

  _GetSalesTypeCart getSalesTypeCart() {
    return const _GetSalesTypeCart();
  }

  _SetSalesTypeCart setSalesTypeCart(String value) {
    return _SetSalesTypeCart(
      value,
    );
  }

  _SetPaymentMethodID setPaymentMethodID(PaymentMethodDataResponse data) {
    return _SetPaymentMethodID(
      data,
    );
  }

  _GetPaymentMethodID getPaymentMethodID() {
    return const _GetPaymentMethodID();
  }

  _SetDeliveryMethodID setDeliveryMethodID(DeliveryMethodDataResponse data) {
    return _SetDeliveryMethodID(
      data,
    );
  }

  _GetDeliveryMethodID getDeliveryMethodID() {
    return const _GetDeliveryMethodID();
  }

  _SetVoucherMethodID setVoucherMethodID(
      GetListVoucherOutletDataResponse data) {
    return _SetVoucherMethodID(
      data,
    );
  }

  _GetVoucherMethodID getVoucherMethodID() {
    return const _GetVoucherMethodID();
  }
}

/// @nodoc
const $OrderEvent = _$OrderEventTearOff();

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res> implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  final OrderEvent _value;
  // ignore: unused_field
  final $Res Function(OrderEvent) _then;
}

/// @nodoc
abstract class _$GetOutletByLocationCopyWith<$Res> {
  factory _$GetOutletByLocationCopyWith(_GetOutletByLocation value,
          $Res Function(_GetOutletByLocation) then) =
      __$GetOutletByLocationCopyWithImpl<$Res>;
  $Res call({GetOutletByLocationParam request});

  $GetOutletByLocationParamCopyWith<$Res> get request;
}

/// @nodoc
class __$GetOutletByLocationCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements _$GetOutletByLocationCopyWith<$Res> {
  __$GetOutletByLocationCopyWithImpl(
      _GetOutletByLocation _value, $Res Function(_GetOutletByLocation) _then)
      : super(_value, (v) => _then(v as _GetOutletByLocation));

  @override
  _GetOutletByLocation get _value => super._value as _GetOutletByLocation;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_GetOutletByLocation(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as GetOutletByLocationParam,
    ));
  }

  @override
  $GetOutletByLocationParamCopyWith<$Res> get request {
    return $GetOutletByLocationParamCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_GetOutletByLocation implements _GetOutletByLocation {
  const _$_GetOutletByLocation(this.request);

  @override
  final GetOutletByLocationParam request;

  @override
  String toString() {
    return 'OrderEvent.getOutletByLocation(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOutletByLocation &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  _$GetOutletByLocationCopyWith<_GetOutletByLocation> get copyWith =>
      __$GetOutletByLocationCopyWithImpl<_GetOutletByLocation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return getOutletByLocation(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getOutletByLocation != null) {
      return getOutletByLocation(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return getOutletByLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getOutletByLocation != null) {
      return getOutletByLocation(this);
    }
    return orElse();
  }
}

abstract class _GetOutletByLocation implements OrderEvent {
  const factory _GetOutletByLocation(GetOutletByLocationParam request) =
      _$_GetOutletByLocation;

  GetOutletByLocationParam get request => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetOutletByLocationCopyWith<_GetOutletByLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetOutletByCategoryCopyWith<$Res> {
  factory _$GetOutletByCategoryCopyWith(_GetOutletByCategory value,
          $Res Function(_GetOutletByCategory) then) =
      __$GetOutletByCategoryCopyWithImpl<$Res>;
  $Res call({GetOutletByCategoryParam request});

  $GetOutletByCategoryParamCopyWith<$Res> get request;
}

/// @nodoc
class __$GetOutletByCategoryCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements _$GetOutletByCategoryCopyWith<$Res> {
  __$GetOutletByCategoryCopyWithImpl(
      _GetOutletByCategory _value, $Res Function(_GetOutletByCategory) _then)
      : super(_value, (v) => _then(v as _GetOutletByCategory));

  @override
  _GetOutletByCategory get _value => super._value as _GetOutletByCategory;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_GetOutletByCategory(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as GetOutletByCategoryParam,
    ));
  }

  @override
  $GetOutletByCategoryParamCopyWith<$Res> get request {
    return $GetOutletByCategoryParamCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_GetOutletByCategory implements _GetOutletByCategory {
  const _$_GetOutletByCategory(this.request);

  @override
  final GetOutletByCategoryParam request;

  @override
  String toString() {
    return 'OrderEvent.getOutletByCategory(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOutletByCategory &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  _$GetOutletByCategoryCopyWith<_GetOutletByCategory> get copyWith =>
      __$GetOutletByCategoryCopyWithImpl<_GetOutletByCategory>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return getOutletByCategory(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getOutletByCategory != null) {
      return getOutletByCategory(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return getOutletByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getOutletByCategory != null) {
      return getOutletByCategory(this);
    }
    return orElse();
  }
}

abstract class _GetOutletByCategory implements OrderEvent {
  const factory _GetOutletByCategory(GetOutletByCategoryParam request) =
      _$_GetOutletByCategory;

  GetOutletByCategoryParam get request => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetOutletByCategoryCopyWith<_GetOutletByCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetOutletByMerchantCopyWith<$Res> {
  factory _$GetOutletByMerchantCopyWith(_GetOutletByMerchant value,
          $Res Function(_GetOutletByMerchant) then) =
      __$GetOutletByMerchantCopyWithImpl<$Res>;
  $Res call({GetOutletByMerchantParam request});

  $GetOutletByMerchantParamCopyWith<$Res> get request;
}

/// @nodoc
class __$GetOutletByMerchantCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements _$GetOutletByMerchantCopyWith<$Res> {
  __$GetOutletByMerchantCopyWithImpl(
      _GetOutletByMerchant _value, $Res Function(_GetOutletByMerchant) _then)
      : super(_value, (v) => _then(v as _GetOutletByMerchant));

  @override
  _GetOutletByMerchant get _value => super._value as _GetOutletByMerchant;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_GetOutletByMerchant(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as GetOutletByMerchantParam,
    ));
  }

  @override
  $GetOutletByMerchantParamCopyWith<$Res> get request {
    return $GetOutletByMerchantParamCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_GetOutletByMerchant implements _GetOutletByMerchant {
  const _$_GetOutletByMerchant(this.request);

  @override
  final GetOutletByMerchantParam request;

  @override
  String toString() {
    return 'OrderEvent.getOutletByMerchant(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOutletByMerchant &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  _$GetOutletByMerchantCopyWith<_GetOutletByMerchant> get copyWith =>
      __$GetOutletByMerchantCopyWithImpl<_GetOutletByMerchant>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return getOutletByMerchant(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getOutletByMerchant != null) {
      return getOutletByMerchant(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return getOutletByMerchant(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getOutletByMerchant != null) {
      return getOutletByMerchant(this);
    }
    return orElse();
  }
}

abstract class _GetOutletByMerchant implements OrderEvent {
  const factory _GetOutletByMerchant(GetOutletByMerchantParam request) =
      _$_GetOutletByMerchant;

  GetOutletByMerchantParam get request => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetOutletByMerchantCopyWith<_GetOutletByMerchant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetOutletProductCategoryCopyWith<$Res> {
  factory _$GetOutletProductCategoryCopyWith(_GetOutletProductCategory value,
          $Res Function(_GetOutletProductCategory) then) =
      __$GetOutletProductCategoryCopyWithImpl<$Res>;
  $Res call({GetOutletProductCategoryParam request});

  $GetOutletProductCategoryParamCopyWith<$Res> get request;
}

/// @nodoc
class __$GetOutletProductCategoryCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements _$GetOutletProductCategoryCopyWith<$Res> {
  __$GetOutletProductCategoryCopyWithImpl(_GetOutletProductCategory _value,
      $Res Function(_GetOutletProductCategory) _then)
      : super(_value, (v) => _then(v as _GetOutletProductCategory));

  @override
  _GetOutletProductCategory get _value =>
      super._value as _GetOutletProductCategory;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_GetOutletProductCategory(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as GetOutletProductCategoryParam,
    ));
  }

  @override
  $GetOutletProductCategoryParamCopyWith<$Res> get request {
    return $GetOutletProductCategoryParamCopyWith<$Res>(_value.request,
        (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_GetOutletProductCategory implements _GetOutletProductCategory {
  const _$_GetOutletProductCategory(this.request);

  @override
  final GetOutletProductCategoryParam request;

  @override
  String toString() {
    return 'OrderEvent.getOutletProductCategory(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOutletProductCategory &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  _$GetOutletProductCategoryCopyWith<_GetOutletProductCategory> get copyWith =>
      __$GetOutletProductCategoryCopyWithImpl<_GetOutletProductCategory>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return getOutletProductCategory(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getOutletProductCategory != null) {
      return getOutletProductCategory(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return getOutletProductCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getOutletProductCategory != null) {
      return getOutletProductCategory(this);
    }
    return orElse();
  }
}

abstract class _GetOutletProductCategory implements OrderEvent {
  const factory _GetOutletProductCategory(
      GetOutletProductCategoryParam request) = _$_GetOutletProductCategory;

  GetOutletProductCategoryParam get request =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetOutletProductCategoryCopyWith<_GetOutletProductCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetListPromoOutletCopyWith<$Res> {
  factory _$GetListPromoOutletCopyWith(
          _GetListPromoOutlet value, $Res Function(_GetListPromoOutlet) then) =
      __$GetListPromoOutletCopyWithImpl<$Res>;
  $Res call({GetListPromoOutletParam request});

  $GetListPromoOutletParamCopyWith<$Res> get request;
}

/// @nodoc
class __$GetListPromoOutletCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements _$GetListPromoOutletCopyWith<$Res> {
  __$GetListPromoOutletCopyWithImpl(
      _GetListPromoOutlet _value, $Res Function(_GetListPromoOutlet) _then)
      : super(_value, (v) => _then(v as _GetListPromoOutlet));

  @override
  _GetListPromoOutlet get _value => super._value as _GetListPromoOutlet;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_GetListPromoOutlet(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as GetListPromoOutletParam,
    ));
  }

  @override
  $GetListPromoOutletParamCopyWith<$Res> get request {
    return $GetListPromoOutletParamCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_GetListPromoOutlet implements _GetListPromoOutlet {
  const _$_GetListPromoOutlet(this.request);

  @override
  final GetListPromoOutletParam request;

  @override
  String toString() {
    return 'OrderEvent.getListPromoOutlet(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetListPromoOutlet &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  _$GetListPromoOutletCopyWith<_GetListPromoOutlet> get copyWith =>
      __$GetListPromoOutletCopyWithImpl<_GetListPromoOutlet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return getListPromoOutlet(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getListPromoOutlet != null) {
      return getListPromoOutlet(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return getListPromoOutlet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getListPromoOutlet != null) {
      return getListPromoOutlet(this);
    }
    return orElse();
  }
}

abstract class _GetListPromoOutlet implements OrderEvent {
  const factory _GetListPromoOutlet(GetListPromoOutletParam request) =
      _$_GetListPromoOutlet;

  GetListPromoOutletParam get request => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetListPromoOutletCopyWith<_GetListPromoOutlet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetListVoucherOutletCopyWith<$Res> {
  factory _$GetListVoucherOutletCopyWith(_GetListVoucherOutlet value,
          $Res Function(_GetListVoucherOutlet) then) =
      __$GetListVoucherOutletCopyWithImpl<$Res>;
  $Res call({GetListVoucherOutletParam request});

  $GetListVoucherOutletParamCopyWith<$Res> get request;
}

/// @nodoc
class __$GetListVoucherOutletCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements _$GetListVoucherOutletCopyWith<$Res> {
  __$GetListVoucherOutletCopyWithImpl(
      _GetListVoucherOutlet _value, $Res Function(_GetListVoucherOutlet) _then)
      : super(_value, (v) => _then(v as _GetListVoucherOutlet));

  @override
  _GetListVoucherOutlet get _value => super._value as _GetListVoucherOutlet;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_GetListVoucherOutlet(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as GetListVoucherOutletParam,
    ));
  }

  @override
  $GetListVoucherOutletParamCopyWith<$Res> get request {
    return $GetListVoucherOutletParamCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_GetListVoucherOutlet implements _GetListVoucherOutlet {
  const _$_GetListVoucherOutlet(this.request);

  @override
  final GetListVoucherOutletParam request;

  @override
  String toString() {
    return 'OrderEvent.getListVoucherOutlet(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetListVoucherOutlet &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  _$GetListVoucherOutletCopyWith<_GetListVoucherOutlet> get copyWith =>
      __$GetListVoucherOutletCopyWithImpl<_GetListVoucherOutlet>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return getListVoucherOutlet(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getListVoucherOutlet != null) {
      return getListVoucherOutlet(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return getListVoucherOutlet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getListVoucherOutlet != null) {
      return getListVoucherOutlet(this);
    }
    return orElse();
  }
}

abstract class _GetListVoucherOutlet implements OrderEvent {
  const factory _GetListVoucherOutlet(GetListVoucherOutletParam request) =
      _$_GetListVoucherOutlet;

  GetListVoucherOutletParam get request => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetListVoucherOutletCopyWith<_GetListVoucherOutlet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetOutletListProductCopyWith<$Res> {
  factory _$GetOutletListProductCopyWith(_GetOutletListProduct value,
          $Res Function(_GetOutletListProduct) then) =
      __$GetOutletListProductCopyWithImpl<$Res>;
  $Res call({GetOutletProductParam request});

  $GetOutletProductParamCopyWith<$Res> get request;
}

/// @nodoc
class __$GetOutletListProductCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements _$GetOutletListProductCopyWith<$Res> {
  __$GetOutletListProductCopyWithImpl(
      _GetOutletListProduct _value, $Res Function(_GetOutletListProduct) _then)
      : super(_value, (v) => _then(v as _GetOutletListProduct));

  @override
  _GetOutletListProduct get _value => super._value as _GetOutletListProduct;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_GetOutletListProduct(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as GetOutletProductParam,
    ));
  }

  @override
  $GetOutletProductParamCopyWith<$Res> get request {
    return $GetOutletProductParamCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_GetOutletListProduct implements _GetOutletListProduct {
  const _$_GetOutletListProduct(this.request);

  @override
  final GetOutletProductParam request;

  @override
  String toString() {
    return 'OrderEvent.getOutletListProduct(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOutletListProduct &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  _$GetOutletListProductCopyWith<_GetOutletListProduct> get copyWith =>
      __$GetOutletListProductCopyWithImpl<_GetOutletListProduct>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return getOutletListProduct(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getOutletListProduct != null) {
      return getOutletListProduct(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return getOutletListProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getOutletListProduct != null) {
      return getOutletListProduct(this);
    }
    return orElse();
  }
}

abstract class _GetOutletListProduct implements OrderEvent {
  const factory _GetOutletListProduct(GetOutletProductParam request) =
      _$_GetOutletListProduct;

  GetOutletProductParam get request => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetOutletListProductCopyWith<_GetOutletListProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetPromoOutletCopyWith<$Res> {
  factory _$GetPromoOutletCopyWith(
          _GetPromoOutlet value, $Res Function(_GetPromoOutlet) then) =
      __$GetPromoOutletCopyWithImpl<$Res>;
  $Res call({GetPromoOutletParam request});

  $GetPromoOutletParamCopyWith<$Res> get request;
}

/// @nodoc
class __$GetPromoOutletCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements _$GetPromoOutletCopyWith<$Res> {
  __$GetPromoOutletCopyWithImpl(
      _GetPromoOutlet _value, $Res Function(_GetPromoOutlet) _then)
      : super(_value, (v) => _then(v as _GetPromoOutlet));

  @override
  _GetPromoOutlet get _value => super._value as _GetPromoOutlet;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_GetPromoOutlet(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as GetPromoOutletParam,
    ));
  }

  @override
  $GetPromoOutletParamCopyWith<$Res> get request {
    return $GetPromoOutletParamCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_GetPromoOutlet implements _GetPromoOutlet {
  const _$_GetPromoOutlet(this.request);

  @override
  final GetPromoOutletParam request;

  @override
  String toString() {
    return 'OrderEvent.getPromoOutlet(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPromoOutlet &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  _$GetPromoOutletCopyWith<_GetPromoOutlet> get copyWith =>
      __$GetPromoOutletCopyWithImpl<_GetPromoOutlet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return getPromoOutlet(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getPromoOutlet != null) {
      return getPromoOutlet(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return getPromoOutlet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getPromoOutlet != null) {
      return getPromoOutlet(this);
    }
    return orElse();
  }
}

abstract class _GetPromoOutlet implements OrderEvent {
  const factory _GetPromoOutlet(GetPromoOutletParam request) =
      _$_GetPromoOutlet;

  GetPromoOutletParam get request => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetPromoOutletCopyWith<_GetPromoOutlet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetHotPromoCopyWith<$Res> {
  factory _$GetHotPromoCopyWith(
          _GetHotPromo value, $Res Function(_GetHotPromo) then) =
      __$GetHotPromoCopyWithImpl<$Res>;
  $Res call({GetHotPromoParam request});
}

/// @nodoc
class __$GetHotPromoCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements _$GetHotPromoCopyWith<$Res> {
  __$GetHotPromoCopyWithImpl(
      _GetHotPromo _value, $Res Function(_GetHotPromo) _then)
      : super(_value, (v) => _then(v as _GetHotPromo));

  @override
  _GetHotPromo get _value => super._value as _GetHotPromo;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_GetHotPromo(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as GetHotPromoParam,
    ));
  }
}

/// @nodoc

class _$_GetHotPromo implements _GetHotPromo {
  const _$_GetHotPromo(this.request);

  @override
  final GetHotPromoParam request;

  @override
  String toString() {
    return 'OrderEvent.getHotPromo(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetHotPromo &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  _$GetHotPromoCopyWith<_GetHotPromo> get copyWith =>
      __$GetHotPromoCopyWithImpl<_GetHotPromo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return getHotPromo(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getHotPromo != null) {
      return getHotPromo(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return getHotPromo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getHotPromo != null) {
      return getHotPromo(this);
    }
    return orElse();
  }
}

abstract class _GetHotPromo implements OrderEvent {
  const factory _GetHotPromo(GetHotPromoParam request) = _$_GetHotPromo;

  GetHotPromoParam get request => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetHotPromoCopyWith<_GetHotPromo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetDetailOutletCopyWith<$Res> {
  factory _$GetDetailOutletCopyWith(
          _GetDetailOutlet value, $Res Function(_GetDetailOutlet) then) =
      __$GetDetailOutletCopyWithImpl<$Res>;
  $Res call({GetDetailOutletParam request});

  $GetDetailOutletParamCopyWith<$Res> get request;
}

/// @nodoc
class __$GetDetailOutletCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements _$GetDetailOutletCopyWith<$Res> {
  __$GetDetailOutletCopyWithImpl(
      _GetDetailOutlet _value, $Res Function(_GetDetailOutlet) _then)
      : super(_value, (v) => _then(v as _GetDetailOutlet));

  @override
  _GetDetailOutlet get _value => super._value as _GetDetailOutlet;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_GetDetailOutlet(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as GetDetailOutletParam,
    ));
  }

  @override
  $GetDetailOutletParamCopyWith<$Res> get request {
    return $GetDetailOutletParamCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_GetDetailOutlet implements _GetDetailOutlet {
  const _$_GetDetailOutlet(this.request);

  @override
  final GetDetailOutletParam request;

  @override
  String toString() {
    return 'OrderEvent.getDetailOutlet(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetDetailOutlet &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  _$GetDetailOutletCopyWith<_GetDetailOutlet> get copyWith =>
      __$GetDetailOutletCopyWithImpl<_GetDetailOutlet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return getDetailOutlet(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getDetailOutlet != null) {
      return getDetailOutlet(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return getDetailOutlet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getDetailOutlet != null) {
      return getDetailOutlet(this);
    }
    return orElse();
  }
}

abstract class _GetDetailOutlet implements OrderEvent {
  const factory _GetDetailOutlet(GetDetailOutletParam request) =
      _$_GetDetailOutlet;

  GetDetailOutletParam get request => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetDetailOutletCopyWith<_GetDetailOutlet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetPaymentMethodCopyWith<$Res> {
  factory _$GetPaymentMethodCopyWith(
          _GetPaymentMethod value, $Res Function(_GetPaymentMethod) then) =
      __$GetPaymentMethodCopyWithImpl<$Res>;
  $Res call({GetPaymentMethodParam request});

  $GetPaymentMethodParamCopyWith<$Res> get request;
}

/// @nodoc
class __$GetPaymentMethodCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements _$GetPaymentMethodCopyWith<$Res> {
  __$GetPaymentMethodCopyWithImpl(
      _GetPaymentMethod _value, $Res Function(_GetPaymentMethod) _then)
      : super(_value, (v) => _then(v as _GetPaymentMethod));

  @override
  _GetPaymentMethod get _value => super._value as _GetPaymentMethod;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_GetPaymentMethod(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as GetPaymentMethodParam,
    ));
  }

  @override
  $GetPaymentMethodParamCopyWith<$Res> get request {
    return $GetPaymentMethodParamCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_GetPaymentMethod implements _GetPaymentMethod {
  const _$_GetPaymentMethod(this.request);

  @override
  final GetPaymentMethodParam request;

  @override
  String toString() {
    return 'OrderEvent.getPaymentMethod(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPaymentMethod &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  _$GetPaymentMethodCopyWith<_GetPaymentMethod> get copyWith =>
      __$GetPaymentMethodCopyWithImpl<_GetPaymentMethod>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return getPaymentMethod(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getPaymentMethod != null) {
      return getPaymentMethod(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return getPaymentMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getPaymentMethod != null) {
      return getPaymentMethod(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentMethod implements OrderEvent {
  const factory _GetPaymentMethod(GetPaymentMethodParam request) =
      _$_GetPaymentMethod;

  GetPaymentMethodParam get request => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetPaymentMethodCopyWith<_GetPaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GeliveryInquiryCopyWith<$Res> {
  factory _$GeliveryInquiryCopyWith(
          _GeliveryInquiry value, $Res Function(_GeliveryInquiry) then) =
      __$GeliveryInquiryCopyWithImpl<$Res>;
  $Res call({DeliveryInquiryParam request});

  $DeliveryInquiryParamCopyWith<$Res> get request;
}

/// @nodoc
class __$GeliveryInquiryCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements _$GeliveryInquiryCopyWith<$Res> {
  __$GeliveryInquiryCopyWithImpl(
      _GeliveryInquiry _value, $Res Function(_GeliveryInquiry) _then)
      : super(_value, (v) => _then(v as _GeliveryInquiry));

  @override
  _GeliveryInquiry get _value => super._value as _GeliveryInquiry;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_GeliveryInquiry(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as DeliveryInquiryParam,
    ));
  }

  @override
  $DeliveryInquiryParamCopyWith<$Res> get request {
    return $DeliveryInquiryParamCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_GeliveryInquiry implements _GeliveryInquiry {
  const _$_GeliveryInquiry(this.request);

  @override
  final DeliveryInquiryParam request;

  @override
  String toString() {
    return 'OrderEvent.deliveryInquiry(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GeliveryInquiry &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  _$GeliveryInquiryCopyWith<_GeliveryInquiry> get copyWith =>
      __$GeliveryInquiryCopyWithImpl<_GeliveryInquiry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return deliveryInquiry(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (deliveryInquiry != null) {
      return deliveryInquiry(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return deliveryInquiry(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (deliveryInquiry != null) {
      return deliveryInquiry(this);
    }
    return orElse();
  }
}

abstract class _GeliveryInquiry implements OrderEvent {
  const factory _GeliveryInquiry(DeliveryInquiryParam request) =
      _$_GeliveryInquiry;

  DeliveryInquiryParam get request => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GeliveryInquiryCopyWith<_GeliveryInquiry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateCartSessionCopyWith<$Res> {
  factory _$CreateCartSessionCopyWith(
          _CreateCartSession value, $Res Function(_CreateCartSession) then) =
      __$CreateCartSessionCopyWithImpl<$Res>;
  $Res call({CreateCartSessionParam request});

  $CreateCartSessionParamCopyWith<$Res> get request;
}

/// @nodoc
class __$CreateCartSessionCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements _$CreateCartSessionCopyWith<$Res> {
  __$CreateCartSessionCopyWithImpl(
      _CreateCartSession _value, $Res Function(_CreateCartSession) _then)
      : super(_value, (v) => _then(v as _CreateCartSession));

  @override
  _CreateCartSession get _value => super._value as _CreateCartSession;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_CreateCartSession(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as CreateCartSessionParam,
    ));
  }

  @override
  $CreateCartSessionParamCopyWith<$Res> get request {
    return $CreateCartSessionParamCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_CreateCartSession implements _CreateCartSession {
  const _$_CreateCartSession(this.request);

  @override
  final CreateCartSessionParam request;

  @override
  String toString() {
    return 'OrderEvent.createCartSession(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateCartSession &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  _$CreateCartSessionCopyWith<_CreateCartSession> get copyWith =>
      __$CreateCartSessionCopyWithImpl<_CreateCartSession>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return createCartSession(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (createCartSession != null) {
      return createCartSession(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return createCartSession(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (createCartSession != null) {
      return createCartSession(this);
    }
    return orElse();
  }
}

abstract class _CreateCartSession implements OrderEvent {
  const factory _CreateCartSession(CreateCartSessionParam request) =
      _$_CreateCartSession;

  CreateCartSessionParam get request => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CreateCartSessionCopyWith<_CreateCartSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddCartCopyWith<$Res> {
  factory _$AddCartCopyWith(_AddCart value, $Res Function(_AddCart) then) =
      __$AddCartCopyWithImpl<$Res>;
  $Res call(
      {CreateUpdateCartSessionItemParam request,
      DetailOutletDataResponse outlet,
      String salesType});

  $CreateUpdateCartSessionItemParamCopyWith<$Res> get request;
  $DetailOutletDataResponseCopyWith<$Res> get outlet;
}

/// @nodoc
class __$AddCartCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements _$AddCartCopyWith<$Res> {
  __$AddCartCopyWithImpl(_AddCart _value, $Res Function(_AddCart) _then)
      : super(_value, (v) => _then(v as _AddCart));

  @override
  _AddCart get _value => super._value as _AddCart;

  @override
  $Res call({
    Object? request = freezed,
    Object? outlet = freezed,
    Object? salesType = freezed,
  }) {
    return _then(_AddCart(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as CreateUpdateCartSessionItemParam,
      outlet == freezed
          ? _value.outlet
          : outlet // ignore: cast_nullable_to_non_nullable
              as DetailOutletDataResponse,
      salesType == freezed
          ? _value.salesType
          : salesType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $CreateUpdateCartSessionItemParamCopyWith<$Res> get request {
    return $CreateUpdateCartSessionItemParamCopyWith<$Res>(_value.request,
        (value) {
      return _then(_value.copyWith(request: value));
    });
  }

  @override
  $DetailOutletDataResponseCopyWith<$Res> get outlet {
    return $DetailOutletDataResponseCopyWith<$Res>(_value.outlet, (value) {
      return _then(_value.copyWith(outlet: value));
    });
  }
}

/// @nodoc

class _$_AddCart implements _AddCart {
  const _$_AddCart(this.request, this.outlet, this.salesType);

  @override
  final CreateUpdateCartSessionItemParam request;
  @override
  final DetailOutletDataResponse outlet;
  @override
  final String salesType;

  @override
  String toString() {
    return 'OrderEvent.addCart(request: $request, outlet: $outlet, salesType: $salesType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddCart &&
            (identical(other.request, request) ||
                const DeepCollectionEquality()
                    .equals(other.request, request)) &&
            (identical(other.outlet, outlet) ||
                const DeepCollectionEquality().equals(other.outlet, outlet)) &&
            (identical(other.salesType, salesType) ||
                const DeepCollectionEquality()
                    .equals(other.salesType, salesType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(request) ^
      const DeepCollectionEquality().hash(outlet) ^
      const DeepCollectionEquality().hash(salesType);

  @JsonKey(ignore: true)
  @override
  _$AddCartCopyWith<_AddCart> get copyWith =>
      __$AddCartCopyWithImpl<_AddCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return addCart(request, outlet, salesType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (addCart != null) {
      return addCart(request, outlet, salesType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return addCart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (addCart != null) {
      return addCart(this);
    }
    return orElse();
  }
}

abstract class _AddCart implements OrderEvent {
  const factory _AddCart(CreateUpdateCartSessionItemParam request,
      DetailOutletDataResponse outlet, String salesType) = _$_AddCart;

  CreateUpdateCartSessionItemParam get request =>
      throw _privateConstructorUsedError;
  DetailOutletDataResponse get outlet => throw _privateConstructorUsedError;
  String get salesType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddCartCopyWith<_AddCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateCartCopyWith<$Res> {
  factory _$UpdateCartCopyWith(
          _UpdateCart value, $Res Function(_UpdateCart) then) =
      __$UpdateCartCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateCartCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements _$UpdateCartCopyWith<$Res> {
  __$UpdateCartCopyWithImpl(
      _UpdateCart _value, $Res Function(_UpdateCart) _then)
      : super(_value, (v) => _then(v as _UpdateCart));

  @override
  _UpdateCart get _value => super._value as _UpdateCart;
}

/// @nodoc

class _$_UpdateCart implements _UpdateCart {
  const _$_UpdateCart();

  @override
  String toString() {
    return 'OrderEvent.updateCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UpdateCart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return updateCart();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (updateCart != null) {
      return updateCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return updateCart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (updateCart != null) {
      return updateCart(this);
    }
    return orElse();
  }
}

abstract class _UpdateCart implements OrderEvent {
  const factory _UpdateCart() = _$_UpdateCart;
}

/// @nodoc
abstract class _$RemoveCartCopyWith<$Res> {
  factory _$RemoveCartCopyWith(
          _RemoveCart value, $Res Function(_RemoveCart) then) =
      __$RemoveCartCopyWithImpl<$Res>;
  $Res call({CreateUpdateCartSessionItemParam request});

  $CreateUpdateCartSessionItemParamCopyWith<$Res> get request;
}

/// @nodoc
class __$RemoveCartCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements _$RemoveCartCopyWith<$Res> {
  __$RemoveCartCopyWithImpl(
      _RemoveCart _value, $Res Function(_RemoveCart) _then)
      : super(_value, (v) => _then(v as _RemoveCart));

  @override
  _RemoveCart get _value => super._value as _RemoveCart;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_RemoveCart(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as CreateUpdateCartSessionItemParam,
    ));
  }

  @override
  $CreateUpdateCartSessionItemParamCopyWith<$Res> get request {
    return $CreateUpdateCartSessionItemParamCopyWith<$Res>(_value.request,
        (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_RemoveCart implements _RemoveCart {
  const _$_RemoveCart(this.request);

  @override
  final CreateUpdateCartSessionItemParam request;

  @override
  String toString() {
    return 'OrderEvent.removeCart(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveCart &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  _$RemoveCartCopyWith<_RemoveCart> get copyWith =>
      __$RemoveCartCopyWithImpl<_RemoveCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return removeCart(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (removeCart != null) {
      return removeCart(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return removeCart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (removeCart != null) {
      return removeCart(this);
    }
    return orElse();
  }
}

abstract class _RemoveCart implements OrderEvent {
  const factory _RemoveCart(CreateUpdateCartSessionItemParam request) =
      _$_RemoveCart;

  CreateUpdateCartSessionItemParam get request =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RemoveCartCopyWith<_RemoveCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetCartSessionCopyWith<$Res> {
  factory _$GetCartSessionCopyWith(
          _GetCartSession value, $Res Function(_GetCartSession) then) =
      __$GetCartSessionCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetCartSessionCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements _$GetCartSessionCopyWith<$Res> {
  __$GetCartSessionCopyWithImpl(
      _GetCartSession _value, $Res Function(_GetCartSession) _then)
      : super(_value, (v) => _then(v as _GetCartSession));

  @override
  _GetCartSession get _value => super._value as _GetCartSession;
}

/// @nodoc

class _$_GetCartSession implements _GetCartSession {
  const _$_GetCartSession();

  @override
  String toString() {
    return 'OrderEvent.getCartSession()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetCartSession);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return getCartSession();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getCartSession != null) {
      return getCartSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return getCartSession(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getCartSession != null) {
      return getCartSession(this);
    }
    return orElse();
  }
}

abstract class _GetCartSession implements OrderEvent {
  const factory _GetCartSession() = _$_GetCartSession;
}

/// @nodoc
abstract class _$UpdateCartSessionCopyWith<$Res> {
  factory _$UpdateCartSessionCopyWith(
          _UpdateCartSession value, $Res Function(_UpdateCartSession) then) =
      __$UpdateCartSessionCopyWithImpl<$Res>;
  $Res call({UpdateCartSessionParam request});

  $UpdateCartSessionParamCopyWith<$Res> get request;
}

/// @nodoc
class __$UpdateCartSessionCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements _$UpdateCartSessionCopyWith<$Res> {
  __$UpdateCartSessionCopyWithImpl(
      _UpdateCartSession _value, $Res Function(_UpdateCartSession) _then)
      : super(_value, (v) => _then(v as _UpdateCartSession));

  @override
  _UpdateCartSession get _value => super._value as _UpdateCartSession;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_UpdateCartSession(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as UpdateCartSessionParam,
    ));
  }

  @override
  $UpdateCartSessionParamCopyWith<$Res> get request {
    return $UpdateCartSessionParamCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_UpdateCartSession implements _UpdateCartSession {
  const _$_UpdateCartSession(this.request);

  @override
  final UpdateCartSessionParam request;

  @override
  String toString() {
    return 'OrderEvent.updateCartSession(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateCartSession &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  _$UpdateCartSessionCopyWith<_UpdateCartSession> get copyWith =>
      __$UpdateCartSessionCopyWithImpl<_UpdateCartSession>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return updateCartSession(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (updateCartSession != null) {
      return updateCartSession(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return updateCartSession(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (updateCartSession != null) {
      return updateCartSession(this);
    }
    return orElse();
  }
}

abstract class _UpdateCartSession implements OrderEvent {
  const factory _UpdateCartSession(UpdateCartSessionParam request) =
      _$_UpdateCartSession;

  UpdateCartSessionParam get request => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateCartSessionCopyWith<_UpdateCartSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CheckoutCartCopyWith<$Res> {
  factory _$CheckoutCartCopyWith(
          _CheckoutCart value, $Res Function(_CheckoutCart) then) =
      __$CheckoutCartCopyWithImpl<$Res>;
  $Res call({CheckoutCartParam request});
}

/// @nodoc
class __$CheckoutCartCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements _$CheckoutCartCopyWith<$Res> {
  __$CheckoutCartCopyWithImpl(
      _CheckoutCart _value, $Res Function(_CheckoutCart) _then)
      : super(_value, (v) => _then(v as _CheckoutCart));

  @override
  _CheckoutCart get _value => super._value as _CheckoutCart;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_CheckoutCart(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as CheckoutCartParam,
    ));
  }
}

/// @nodoc

class _$_CheckoutCart implements _CheckoutCart {
  const _$_CheckoutCart(this.request);

  @override
  final CheckoutCartParam request;

  @override
  String toString() {
    return 'OrderEvent.checkoutCart(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckoutCart &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  _$CheckoutCartCopyWith<_CheckoutCart> get copyWith =>
      __$CheckoutCartCopyWithImpl<_CheckoutCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return checkoutCart(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (checkoutCart != null) {
      return checkoutCart(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return checkoutCart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (checkoutCart != null) {
      return checkoutCart(this);
    }
    return orElse();
  }
}

abstract class _CheckoutCart implements OrderEvent {
  const factory _CheckoutCart(CheckoutCartParam request) = _$_CheckoutCart;

  CheckoutCartParam get request => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CheckoutCartCopyWith<_CheckoutCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetSalesTypeCartCopyWith<$Res> {
  factory _$GetSalesTypeCartCopyWith(
          _GetSalesTypeCart value, $Res Function(_GetSalesTypeCart) then) =
      __$GetSalesTypeCartCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetSalesTypeCartCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements _$GetSalesTypeCartCopyWith<$Res> {
  __$GetSalesTypeCartCopyWithImpl(
      _GetSalesTypeCart _value, $Res Function(_GetSalesTypeCart) _then)
      : super(_value, (v) => _then(v as _GetSalesTypeCart));

  @override
  _GetSalesTypeCart get _value => super._value as _GetSalesTypeCart;
}

/// @nodoc

class _$_GetSalesTypeCart implements _GetSalesTypeCart {
  const _$_GetSalesTypeCart();

  @override
  String toString() {
    return 'OrderEvent.getSalesTypeCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetSalesTypeCart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return getSalesTypeCart();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getSalesTypeCart != null) {
      return getSalesTypeCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return getSalesTypeCart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getSalesTypeCart != null) {
      return getSalesTypeCart(this);
    }
    return orElse();
  }
}

abstract class _GetSalesTypeCart implements OrderEvent {
  const factory _GetSalesTypeCart() = _$_GetSalesTypeCart;
}

/// @nodoc
abstract class _$SetSalesTypeCartCopyWith<$Res> {
  factory _$SetSalesTypeCartCopyWith(
          _SetSalesTypeCart value, $Res Function(_SetSalesTypeCart) then) =
      __$SetSalesTypeCartCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$SetSalesTypeCartCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements _$SetSalesTypeCartCopyWith<$Res> {
  __$SetSalesTypeCartCopyWithImpl(
      _SetSalesTypeCart _value, $Res Function(_SetSalesTypeCart) _then)
      : super(_value, (v) => _then(v as _SetSalesTypeCart));

  @override
  _SetSalesTypeCart get _value => super._value as _SetSalesTypeCart;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_SetSalesTypeCart(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetSalesTypeCart implements _SetSalesTypeCart {
  const _$_SetSalesTypeCart(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'OrderEvent.setSalesTypeCart(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetSalesTypeCart &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$SetSalesTypeCartCopyWith<_SetSalesTypeCart> get copyWith =>
      __$SetSalesTypeCartCopyWithImpl<_SetSalesTypeCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return setSalesTypeCart(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (setSalesTypeCart != null) {
      return setSalesTypeCart(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return setSalesTypeCart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (setSalesTypeCart != null) {
      return setSalesTypeCart(this);
    }
    return orElse();
  }
}

abstract class _SetSalesTypeCart implements OrderEvent {
  const factory _SetSalesTypeCart(String value) = _$_SetSalesTypeCart;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetSalesTypeCartCopyWith<_SetSalesTypeCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetPaymentMethodIDCopyWith<$Res> {
  factory _$SetPaymentMethodIDCopyWith(
          _SetPaymentMethodID value, $Res Function(_SetPaymentMethodID) then) =
      __$SetPaymentMethodIDCopyWithImpl<$Res>;
  $Res call({PaymentMethodDataResponse data});

  $PaymentMethodDataResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$SetPaymentMethodIDCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements _$SetPaymentMethodIDCopyWith<$Res> {
  __$SetPaymentMethodIDCopyWithImpl(
      _SetPaymentMethodID _value, $Res Function(_SetPaymentMethodID) _then)
      : super(_value, (v) => _then(v as _SetPaymentMethodID));

  @override
  _SetPaymentMethodID get _value => super._value as _SetPaymentMethodID;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_SetPaymentMethodID(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentMethodDataResponse,
    ));
  }

  @override
  $PaymentMethodDataResponseCopyWith<$Res> get data {
    return $PaymentMethodDataResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_SetPaymentMethodID implements _SetPaymentMethodID {
  const _$_SetPaymentMethodID(this.data);

  @override
  final PaymentMethodDataResponse data;

  @override
  String toString() {
    return 'OrderEvent.setPaymentMethodID(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetPaymentMethodID &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$SetPaymentMethodIDCopyWith<_SetPaymentMethodID> get copyWith =>
      __$SetPaymentMethodIDCopyWithImpl<_SetPaymentMethodID>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return setPaymentMethodID(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (setPaymentMethodID != null) {
      return setPaymentMethodID(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return setPaymentMethodID(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (setPaymentMethodID != null) {
      return setPaymentMethodID(this);
    }
    return orElse();
  }
}

abstract class _SetPaymentMethodID implements OrderEvent {
  const factory _SetPaymentMethodID(PaymentMethodDataResponse data) =
      _$_SetPaymentMethodID;

  PaymentMethodDataResponse get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetPaymentMethodIDCopyWith<_SetPaymentMethodID> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetPaymentMethodIDCopyWith<$Res> {
  factory _$GetPaymentMethodIDCopyWith(
          _GetPaymentMethodID value, $Res Function(_GetPaymentMethodID) then) =
      __$GetPaymentMethodIDCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetPaymentMethodIDCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements _$GetPaymentMethodIDCopyWith<$Res> {
  __$GetPaymentMethodIDCopyWithImpl(
      _GetPaymentMethodID _value, $Res Function(_GetPaymentMethodID) _then)
      : super(_value, (v) => _then(v as _GetPaymentMethodID));

  @override
  _GetPaymentMethodID get _value => super._value as _GetPaymentMethodID;
}

/// @nodoc

class _$_GetPaymentMethodID implements _GetPaymentMethodID {
  const _$_GetPaymentMethodID();

  @override
  String toString() {
    return 'OrderEvent.getPaymentMethodID()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetPaymentMethodID);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return getPaymentMethodID();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getPaymentMethodID != null) {
      return getPaymentMethodID();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return getPaymentMethodID(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getPaymentMethodID != null) {
      return getPaymentMethodID(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentMethodID implements OrderEvent {
  const factory _GetPaymentMethodID() = _$_GetPaymentMethodID;
}

/// @nodoc
abstract class _$SetDeliveryMethodIDCopyWith<$Res> {
  factory _$SetDeliveryMethodIDCopyWith(_SetDeliveryMethodID value,
          $Res Function(_SetDeliveryMethodID) then) =
      __$SetDeliveryMethodIDCopyWithImpl<$Res>;
  $Res call({DeliveryMethodDataResponse data});

  $DeliveryMethodDataResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$SetDeliveryMethodIDCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements _$SetDeliveryMethodIDCopyWith<$Res> {
  __$SetDeliveryMethodIDCopyWithImpl(
      _SetDeliveryMethodID _value, $Res Function(_SetDeliveryMethodID) _then)
      : super(_value, (v) => _then(v as _SetDeliveryMethodID));

  @override
  _SetDeliveryMethodID get _value => super._value as _SetDeliveryMethodID;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_SetDeliveryMethodID(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DeliveryMethodDataResponse,
    ));
  }

  @override
  $DeliveryMethodDataResponseCopyWith<$Res> get data {
    return $DeliveryMethodDataResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_SetDeliveryMethodID implements _SetDeliveryMethodID {
  const _$_SetDeliveryMethodID(this.data);

  @override
  final DeliveryMethodDataResponse data;

  @override
  String toString() {
    return 'OrderEvent.setDeliveryMethodID(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetDeliveryMethodID &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$SetDeliveryMethodIDCopyWith<_SetDeliveryMethodID> get copyWith =>
      __$SetDeliveryMethodIDCopyWithImpl<_SetDeliveryMethodID>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return setDeliveryMethodID(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (setDeliveryMethodID != null) {
      return setDeliveryMethodID(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return setDeliveryMethodID(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (setDeliveryMethodID != null) {
      return setDeliveryMethodID(this);
    }
    return orElse();
  }
}

abstract class _SetDeliveryMethodID implements OrderEvent {
  const factory _SetDeliveryMethodID(DeliveryMethodDataResponse data) =
      _$_SetDeliveryMethodID;

  DeliveryMethodDataResponse get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetDeliveryMethodIDCopyWith<_SetDeliveryMethodID> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetDeliveryMethodIDCopyWith<$Res> {
  factory _$GetDeliveryMethodIDCopyWith(_GetDeliveryMethodID value,
          $Res Function(_GetDeliveryMethodID) then) =
      __$GetDeliveryMethodIDCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetDeliveryMethodIDCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements _$GetDeliveryMethodIDCopyWith<$Res> {
  __$GetDeliveryMethodIDCopyWithImpl(
      _GetDeliveryMethodID _value, $Res Function(_GetDeliveryMethodID) _then)
      : super(_value, (v) => _then(v as _GetDeliveryMethodID));

  @override
  _GetDeliveryMethodID get _value => super._value as _GetDeliveryMethodID;
}

/// @nodoc

class _$_GetDeliveryMethodID implements _GetDeliveryMethodID {
  const _$_GetDeliveryMethodID();

  @override
  String toString() {
    return 'OrderEvent.getDeliveryMethodID()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetDeliveryMethodID);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return getDeliveryMethodID();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getDeliveryMethodID != null) {
      return getDeliveryMethodID();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return getDeliveryMethodID(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getDeliveryMethodID != null) {
      return getDeliveryMethodID(this);
    }
    return orElse();
  }
}

abstract class _GetDeliveryMethodID implements OrderEvent {
  const factory _GetDeliveryMethodID() = _$_GetDeliveryMethodID;
}

/// @nodoc
abstract class _$SetVoucherMethodIDCopyWith<$Res> {
  factory _$SetVoucherMethodIDCopyWith(
          _SetVoucherMethodID value, $Res Function(_SetVoucherMethodID) then) =
      __$SetVoucherMethodIDCopyWithImpl<$Res>;
  $Res call({GetListVoucherOutletDataResponse data});

  $GetListVoucherOutletDataResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$SetVoucherMethodIDCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements _$SetVoucherMethodIDCopyWith<$Res> {
  __$SetVoucherMethodIDCopyWithImpl(
      _SetVoucherMethodID _value, $Res Function(_SetVoucherMethodID) _then)
      : super(_value, (v) => _then(v as _SetVoucherMethodID));

  @override
  _SetVoucherMethodID get _value => super._value as _SetVoucherMethodID;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_SetVoucherMethodID(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GetListVoucherOutletDataResponse,
    ));
  }

  @override
  $GetListVoucherOutletDataResponseCopyWith<$Res> get data {
    return $GetListVoucherOutletDataResponseCopyWith<$Res>(_value.data,
        (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_SetVoucherMethodID implements _SetVoucherMethodID {
  const _$_SetVoucherMethodID(this.data);

  @override
  final GetListVoucherOutletDataResponse data;

  @override
  String toString() {
    return 'OrderEvent.setVoucherMethodID(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetVoucherMethodID &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$SetVoucherMethodIDCopyWith<_SetVoucherMethodID> get copyWith =>
      __$SetVoucherMethodIDCopyWithImpl<_SetVoucherMethodID>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return setVoucherMethodID(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (setVoucherMethodID != null) {
      return setVoucherMethodID(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return setVoucherMethodID(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (setVoucherMethodID != null) {
      return setVoucherMethodID(this);
    }
    return orElse();
  }
}

abstract class _SetVoucherMethodID implements OrderEvent {
  const factory _SetVoucherMethodID(GetListVoucherOutletDataResponse data) =
      _$_SetVoucherMethodID;

  GetListVoucherOutletDataResponse get data =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetVoucherMethodIDCopyWith<_SetVoucherMethodID> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetVoucherMethodIDCopyWith<$Res> {
  factory _$GetVoucherMethodIDCopyWith(
          _GetVoucherMethodID value, $Res Function(_GetVoucherMethodID) then) =
      __$GetVoucherMethodIDCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetVoucherMethodIDCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements _$GetVoucherMethodIDCopyWith<$Res> {
  __$GetVoucherMethodIDCopyWithImpl(
      _GetVoucherMethodID _value, $Res Function(_GetVoucherMethodID) _then)
      : super(_value, (v) => _then(v as _GetVoucherMethodID));

  @override
  _GetVoucherMethodID get _value => super._value as _GetVoucherMethodID;
}

/// @nodoc

class _$_GetVoucherMethodID implements _GetVoucherMethodID {
  const _$_GetVoucherMethodID();

  @override
  String toString() {
    return 'OrderEvent.getVoucherMethodID()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetVoucherMethodID);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutletByLocationParam request)
        getOutletByLocation,
    required TResult Function(GetOutletByCategoryParam request)
        getOutletByCategory,
    required TResult Function(GetOutletByMerchantParam request)
        getOutletByMerchant,
    required TResult Function(GetOutletProductCategoryParam request)
        getOutletProductCategory,
    required TResult Function(GetListPromoOutletParam request)
        getListPromoOutlet,
    required TResult Function(GetListVoucherOutletParam request)
        getListVoucherOutlet,
    required TResult Function(GetOutletProductParam request)
        getOutletListProduct,
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)
        addCart,
    required TResult Function() updateCart,
    required TResult Function(CreateUpdateCartSessionItemParam request)
        removeCart,
    required TResult Function() getCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
    required TResult Function() getSalesTypeCart,
    required TResult Function(String value) setSalesTypeCart,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodID,
    required TResult Function() getPaymentMethodID,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodID,
    required TResult Function() getDeliveryMethodID,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodID,
    required TResult Function() getVoucherMethodID,
  }) {
    return getVoucherMethodID();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetOutletByMerchantParam request)? getOutletByMerchant,
    TResult Function(GetOutletProductCategoryParam request)?
        getOutletProductCategory,
    TResult Function(GetListPromoOutletParam request)? getListPromoOutlet,
    TResult Function(GetListVoucherOutletParam request)? getListVoucherOutlet,
    TResult Function(GetOutletProductParam request)? getOutletListProduct,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(CreateUpdateCartSessionItemParam request,
            DetailOutletDataResponse outlet, String salesType)?
        addCart,
    TResult Function()? updateCart,
    TResult Function(CreateUpdateCartSessionItemParam request)? removeCart,
    TResult Function()? getCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    TResult Function()? getSalesTypeCart,
    TResult Function(String value)? setSalesTypeCart,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodID,
    TResult Function()? getPaymentMethodID,
    TResult Function(DeliveryMethodDataResponse data)? setDeliveryMethodID,
    TResult Function()? getDeliveryMethodID,
    TResult Function(GetListVoucherOutletDataResponse data)? setVoucherMethodID,
    TResult Function()? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getVoucherMethodID != null) {
      return getVoucherMethodID();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetOutletByMerchant value) getOutletByMerchant,
    required TResult Function(_GetOutletProductCategory value)
        getOutletProductCategory,
    required TResult Function(_GetListPromoOutlet value) getListPromoOutlet,
    required TResult Function(_GetListVoucherOutlet value) getListVoucherOutlet,
    required TResult Function(_GetOutletListProduct value) getOutletListProduct,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_GetCartSession value) getCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
    required TResult Function(_GetSalesTypeCart value) getSalesTypeCart,
    required TResult Function(_SetSalesTypeCart value) setSalesTypeCart,
    required TResult Function(_SetPaymentMethodID value) setPaymentMethodID,
    required TResult Function(_GetPaymentMethodID value) getPaymentMethodID,
    required TResult Function(_SetDeliveryMethodID value) setDeliveryMethodID,
    required TResult Function(_GetDeliveryMethodID value) getDeliveryMethodID,
    required TResult Function(_SetVoucherMethodID value) setVoucherMethodID,
    required TResult Function(_GetVoucherMethodID value) getVoucherMethodID,
  }) {
    return getVoucherMethodID(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetOutletByMerchant value)? getOutletByMerchant,
    TResult Function(_GetOutletProductCategory value)? getOutletProductCategory,
    TResult Function(_GetListPromoOutlet value)? getListPromoOutlet,
    TResult Function(_GetListVoucherOutlet value)? getListVoucherOutlet,
    TResult Function(_GetOutletListProduct value)? getOutletListProduct,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_GetCartSession value)? getCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
    TResult Function(_GetSalesTypeCart value)? getSalesTypeCart,
    TResult Function(_SetSalesTypeCart value)? setSalesTypeCart,
    TResult Function(_SetPaymentMethodID value)? setPaymentMethodID,
    TResult Function(_GetPaymentMethodID value)? getPaymentMethodID,
    TResult Function(_SetDeliveryMethodID value)? setDeliveryMethodID,
    TResult Function(_GetDeliveryMethodID value)? getDeliveryMethodID,
    TResult Function(_SetVoucherMethodID value)? setVoucherMethodID,
    TResult Function(_GetVoucherMethodID value)? getVoucherMethodID,
    required TResult orElse(),
  }) {
    if (getVoucherMethodID != null) {
      return getVoucherMethodID(this);
    }
    return orElse();
  }
}

abstract class _GetVoucherMethodID implements OrderEvent {
  const factory _GetVoucherMethodID() = _$_GetVoucherMethodID;
}

/// @nodoc
class _$OrderStateTearOff {
  const _$OrderStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess() {
    return const _LoadSuccess();
  }

  _LoadFailure loadFailure(OrderFailure e) {
    return _LoadFailure(
      e,
    );
  }

  _GetOutletByLocationSucess getOutletByLocationSuccess(
      List<OutletCategoryDataResponse> response) {
    return _GetOutletByLocationSucess(
      response,
    );
  }

  _GetOutletByCategorySucess getOutletByCategorySuccess(
      List<OutletCategoryDataResponse> response) {
    return _GetOutletByCategorySucess(
      response,
    );
  }

  _GetOutletByMerchantSucess getOutletByMerchantSuccess(
      List<OutletCategoryDataResponse> response) {
    return _GetOutletByMerchantSucess(
      response,
    );
  }

  _GetPromoOutletSuccess getPromoOutletSuccess(List<PromoOutlet> response) {
    return _GetPromoOutletSuccess(
      response,
    );
  }

  _GetListPromoOutletSuccess getListPromoOutletSuccess(
      List<PromoOutletDataResponse> response) {
    return _GetListPromoOutletSuccess(
      response,
    );
  }

  _GetListVoucherOutletSuccess getListVoucherOutletSuccess(
      List<GetListVoucherOutletDataResponse> response) {
    return _GetListVoucherOutletSuccess(
      response,
    );
  }

  _GetOutletListProductSuccess getOutletListProductSuccess(
      List<OutletListProductDataResponse> response) {
    return _GetOutletListProductSuccess(
      response,
    );
  }

  _GetOutletProductCategorySuccess getOutletProductCategorySuccess(
      List<OutletProductCategoryDataResponse> response) {
    return _GetOutletProductCategorySuccess(
      response,
    );
  }

  _GetHotPromoSuccess getHotPromoSuccess(List<HotPromo> response) {
    return _GetHotPromoSuccess(
      response,
    );
  }

  _GetDetailOutletSuccess getDetailOutletSuccess(
      DetailOutletDataResponse response) {
    return _GetDetailOutletSuccess(
      response,
    );
  }

  _GetPaymentMethodSuccess getPaymentMethodSuccess(
      List<PaymentMethodDataResponse> response) {
    return _GetPaymentMethodSuccess(
      response,
    );
  }

  _GeliveryInquirySuccess deliveryInquirySuccess(
      List<DeliveryMethodDataResponse> response) {
    return _GeliveryInquirySuccess(
      response,
    );
  }

  _AddCartSuccess addCartSuccess(CartSessionResponse response) {
    return _AddCartSuccess(
      response,
    );
  }

  _UpdateCartSuccess updateCart() {
    return const _UpdateCartSuccess();
  }

  _RemoveCartSuccess removeCartSuccess(CartSessionResponse response) {
    return _RemoveCartSuccess(
      response,
    );
  }

  _CreateCartSessionSuccess createCartSessionSuccess(
      CartSessionResponse response) {
    return _CreateCartSessionSuccess(
      response,
    );
  }

  _GetCartSessionSuccess getCartSessionSuccess(CartSessionResponse response) {
    return _GetCartSessionSuccess(
      response,
    );
  }

  _UpdateCartSessionSuccess updateCartSessionSuccess(
      CartSessionResponse response) {
    return _UpdateCartSessionSuccess(
      response,
    );
  }

  _CheckoutCartSuccess checkoutCartSuccess(CheckoutResponse response) {
    return _CheckoutCartSuccess(
      response,
    );
  }

  _GetSalesTypeCartSuccess getSalesTypeCartSuccess(String value) {
    return _GetSalesTypeCartSuccess(
      value,
    );
  }

  _SetSalesTypeCartSuccess setSalesTypeCartSuccess(String value) {
    return _SetSalesTypeCartSuccess(
      value,
    );
  }

  _SetPaymentMethodIDSuccess setPaymentMethodIDSuccess(
      PaymentMethodDataResponse data) {
    return _SetPaymentMethodIDSuccess(
      data,
    );
  }

  _GetPaymentMethodIDSuccess getPaymentMethodIDSuccess(
      PaymentMethodDataResponse data) {
    return _GetPaymentMethodIDSuccess(
      data,
    );
  }

  _SetDeliveryMethodIDSuccess setDeliveryMethodIDSuccess(
      DeliveryMethodDataResponse data) {
    return _SetDeliveryMethodIDSuccess(
      data,
    );
  }

  _GetDeliveryMethodIDSuccess getDeliveryMethodIDSuccess(
      DeliveryMethodDataResponse data) {
    return _GetDeliveryMethodIDSuccess(
      data,
    );
  }

  _SetVoucherMethodIDSuccess setVoucherMethodIDSuccess(
      GetListVoucherOutletDataResponse data) {
    return _SetVoucherMethodIDSuccess(
      data,
    );
  }

  _GetVoucherMethodIDSuccess getVoucherMethodIDSuccess(
      GetListVoucherOutletDataResponse data) {
    return _GetVoucherMethodIDSuccess(
      data,
    );
  }
}

/// @nodoc
const $OrderState = _$OrderStateTearOff();

/// @nodoc
mixin _$OrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res> implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  final OrderState _value;
  // ignore: unused_field
  final $Res Function(OrderState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$OrderStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'OrderState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrderState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res> extends _$OrderStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'OrderState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements OrderState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$OrderStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess();

  @override
  String toString() {
    return 'OrderState.loadSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return loadSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements OrderState {
  const factory _LoadSuccess() = _$_LoadSuccess;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({OrderFailure e});

  $OrderFailureCopyWith<$Res> get e;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$OrderStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_LoadFailure(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as OrderFailure,
    ));
  }

  @override
  $OrderFailureCopyWith<$Res> get e {
    return $OrderFailureCopyWith<$Res>(_value.e, (value) {
      return _then(_value.copyWith(e: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.e);

  @override
  final OrderFailure e;

  @override
  String toString() {
    return 'OrderState.loadFailure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(e);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return loadFailure(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements OrderState {
  const factory _LoadFailure(OrderFailure e) = _$_LoadFailure;

  OrderFailure get e => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetOutletByLocationSucessCopyWith<$Res> {
  factory _$GetOutletByLocationSucessCopyWith(_GetOutletByLocationSucess value,
          $Res Function(_GetOutletByLocationSucess) then) =
      __$GetOutletByLocationSucessCopyWithImpl<$Res>;
  $Res call({List<OutletCategoryDataResponse> response});
}

/// @nodoc
class __$GetOutletByLocationSucessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$GetOutletByLocationSucessCopyWith<$Res> {
  __$GetOutletByLocationSucessCopyWithImpl(_GetOutletByLocationSucess _value,
      $Res Function(_GetOutletByLocationSucess) _then)
      : super(_value, (v) => _then(v as _GetOutletByLocationSucess));

  @override
  _GetOutletByLocationSucess get _value =>
      super._value as _GetOutletByLocationSucess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetOutletByLocationSucess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<OutletCategoryDataResponse>,
    ));
  }
}

/// @nodoc

class _$_GetOutletByLocationSucess implements _GetOutletByLocationSucess {
  const _$_GetOutletByLocationSucess(this.response);

  @override
  final List<OutletCategoryDataResponse> response;

  @override
  String toString() {
    return 'OrderState.getOutletByLocationSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOutletByLocationSucess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$GetOutletByLocationSucessCopyWith<_GetOutletByLocationSucess>
      get copyWith =>
          __$GetOutletByLocationSucessCopyWithImpl<_GetOutletByLocationSucess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return getOutletByLocationSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getOutletByLocationSuccess != null) {
      return getOutletByLocationSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return getOutletByLocationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getOutletByLocationSuccess != null) {
      return getOutletByLocationSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetOutletByLocationSucess implements OrderState {
  const factory _GetOutletByLocationSucess(
      List<OutletCategoryDataResponse> response) = _$_GetOutletByLocationSucess;

  List<OutletCategoryDataResponse> get response =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetOutletByLocationSucessCopyWith<_GetOutletByLocationSucess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetOutletByCategorySucessCopyWith<$Res> {
  factory _$GetOutletByCategorySucessCopyWith(_GetOutletByCategorySucess value,
          $Res Function(_GetOutletByCategorySucess) then) =
      __$GetOutletByCategorySucessCopyWithImpl<$Res>;
  $Res call({List<OutletCategoryDataResponse> response});
}

/// @nodoc
class __$GetOutletByCategorySucessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$GetOutletByCategorySucessCopyWith<$Res> {
  __$GetOutletByCategorySucessCopyWithImpl(_GetOutletByCategorySucess _value,
      $Res Function(_GetOutletByCategorySucess) _then)
      : super(_value, (v) => _then(v as _GetOutletByCategorySucess));

  @override
  _GetOutletByCategorySucess get _value =>
      super._value as _GetOutletByCategorySucess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetOutletByCategorySucess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<OutletCategoryDataResponse>,
    ));
  }
}

/// @nodoc

class _$_GetOutletByCategorySucess implements _GetOutletByCategorySucess {
  const _$_GetOutletByCategorySucess(this.response);

  @override
  final List<OutletCategoryDataResponse> response;

  @override
  String toString() {
    return 'OrderState.getOutletByCategorySuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOutletByCategorySucess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$GetOutletByCategorySucessCopyWith<_GetOutletByCategorySucess>
      get copyWith =>
          __$GetOutletByCategorySucessCopyWithImpl<_GetOutletByCategorySucess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return getOutletByCategorySuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getOutletByCategorySuccess != null) {
      return getOutletByCategorySuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return getOutletByCategorySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getOutletByCategorySuccess != null) {
      return getOutletByCategorySuccess(this);
    }
    return orElse();
  }
}

abstract class _GetOutletByCategorySucess implements OrderState {
  const factory _GetOutletByCategorySucess(
      List<OutletCategoryDataResponse> response) = _$_GetOutletByCategorySucess;

  List<OutletCategoryDataResponse> get response =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetOutletByCategorySucessCopyWith<_GetOutletByCategorySucess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetOutletByMerchantSucessCopyWith<$Res> {
  factory _$GetOutletByMerchantSucessCopyWith(_GetOutletByMerchantSucess value,
          $Res Function(_GetOutletByMerchantSucess) then) =
      __$GetOutletByMerchantSucessCopyWithImpl<$Res>;
  $Res call({List<OutletCategoryDataResponse> response});
}

/// @nodoc
class __$GetOutletByMerchantSucessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$GetOutletByMerchantSucessCopyWith<$Res> {
  __$GetOutletByMerchantSucessCopyWithImpl(_GetOutletByMerchantSucess _value,
      $Res Function(_GetOutletByMerchantSucess) _then)
      : super(_value, (v) => _then(v as _GetOutletByMerchantSucess));

  @override
  _GetOutletByMerchantSucess get _value =>
      super._value as _GetOutletByMerchantSucess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetOutletByMerchantSucess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<OutletCategoryDataResponse>,
    ));
  }
}

/// @nodoc

class _$_GetOutletByMerchantSucess implements _GetOutletByMerchantSucess {
  const _$_GetOutletByMerchantSucess(this.response);

  @override
  final List<OutletCategoryDataResponse> response;

  @override
  String toString() {
    return 'OrderState.getOutletByMerchantSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOutletByMerchantSucess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$GetOutletByMerchantSucessCopyWith<_GetOutletByMerchantSucess>
      get copyWith =>
          __$GetOutletByMerchantSucessCopyWithImpl<_GetOutletByMerchantSucess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return getOutletByMerchantSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getOutletByMerchantSuccess != null) {
      return getOutletByMerchantSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return getOutletByMerchantSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getOutletByMerchantSuccess != null) {
      return getOutletByMerchantSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetOutletByMerchantSucess implements OrderState {
  const factory _GetOutletByMerchantSucess(
      List<OutletCategoryDataResponse> response) = _$_GetOutletByMerchantSucess;

  List<OutletCategoryDataResponse> get response =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetOutletByMerchantSucessCopyWith<_GetOutletByMerchantSucess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetPromoOutletSuccessCopyWith<$Res> {
  factory _$GetPromoOutletSuccessCopyWith(_GetPromoOutletSuccess value,
          $Res Function(_GetPromoOutletSuccess) then) =
      __$GetPromoOutletSuccessCopyWithImpl<$Res>;
  $Res call({List<PromoOutlet> response});
}

/// @nodoc
class __$GetPromoOutletSuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$GetPromoOutletSuccessCopyWith<$Res> {
  __$GetPromoOutletSuccessCopyWithImpl(_GetPromoOutletSuccess _value,
      $Res Function(_GetPromoOutletSuccess) _then)
      : super(_value, (v) => _then(v as _GetPromoOutletSuccess));

  @override
  _GetPromoOutletSuccess get _value => super._value as _GetPromoOutletSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetPromoOutletSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<PromoOutlet>,
    ));
  }
}

/// @nodoc

class _$_GetPromoOutletSuccess implements _GetPromoOutletSuccess {
  const _$_GetPromoOutletSuccess(this.response);

  @override
  final List<PromoOutlet> response;

  @override
  String toString() {
    return 'OrderState.getPromoOutletSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPromoOutletSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$GetPromoOutletSuccessCopyWith<_GetPromoOutletSuccess> get copyWith =>
      __$GetPromoOutletSuccessCopyWithImpl<_GetPromoOutletSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return getPromoOutletSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getPromoOutletSuccess != null) {
      return getPromoOutletSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return getPromoOutletSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getPromoOutletSuccess != null) {
      return getPromoOutletSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetPromoOutletSuccess implements OrderState {
  const factory _GetPromoOutletSuccess(List<PromoOutlet> response) =
      _$_GetPromoOutletSuccess;

  List<PromoOutlet> get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetPromoOutletSuccessCopyWith<_GetPromoOutletSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetListPromoOutletSuccessCopyWith<$Res> {
  factory _$GetListPromoOutletSuccessCopyWith(_GetListPromoOutletSuccess value,
          $Res Function(_GetListPromoOutletSuccess) then) =
      __$GetListPromoOutletSuccessCopyWithImpl<$Res>;
  $Res call({List<PromoOutletDataResponse> response});
}

/// @nodoc
class __$GetListPromoOutletSuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$GetListPromoOutletSuccessCopyWith<$Res> {
  __$GetListPromoOutletSuccessCopyWithImpl(_GetListPromoOutletSuccess _value,
      $Res Function(_GetListPromoOutletSuccess) _then)
      : super(_value, (v) => _then(v as _GetListPromoOutletSuccess));

  @override
  _GetListPromoOutletSuccess get _value =>
      super._value as _GetListPromoOutletSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetListPromoOutletSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<PromoOutletDataResponse>,
    ));
  }
}

/// @nodoc

class _$_GetListPromoOutletSuccess implements _GetListPromoOutletSuccess {
  const _$_GetListPromoOutletSuccess(this.response);

  @override
  final List<PromoOutletDataResponse> response;

  @override
  String toString() {
    return 'OrderState.getListPromoOutletSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetListPromoOutletSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$GetListPromoOutletSuccessCopyWith<_GetListPromoOutletSuccess>
      get copyWith =>
          __$GetListPromoOutletSuccessCopyWithImpl<_GetListPromoOutletSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return getListPromoOutletSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getListPromoOutletSuccess != null) {
      return getListPromoOutletSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return getListPromoOutletSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getListPromoOutletSuccess != null) {
      return getListPromoOutletSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetListPromoOutletSuccess implements OrderState {
  const factory _GetListPromoOutletSuccess(
      List<PromoOutletDataResponse> response) = _$_GetListPromoOutletSuccess;

  List<PromoOutletDataResponse> get response =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetListPromoOutletSuccessCopyWith<_GetListPromoOutletSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetListVoucherOutletSuccessCopyWith<$Res> {
  factory _$GetListVoucherOutletSuccessCopyWith(
          _GetListVoucherOutletSuccess value,
          $Res Function(_GetListVoucherOutletSuccess) then) =
      __$GetListVoucherOutletSuccessCopyWithImpl<$Res>;
  $Res call({List<GetListVoucherOutletDataResponse> response});
}

/// @nodoc
class __$GetListVoucherOutletSuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$GetListVoucherOutletSuccessCopyWith<$Res> {
  __$GetListVoucherOutletSuccessCopyWithImpl(
      _GetListVoucherOutletSuccess _value,
      $Res Function(_GetListVoucherOutletSuccess) _then)
      : super(_value, (v) => _then(v as _GetListVoucherOutletSuccess));

  @override
  _GetListVoucherOutletSuccess get _value =>
      super._value as _GetListVoucherOutletSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetListVoucherOutletSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<GetListVoucherOutletDataResponse>,
    ));
  }
}

/// @nodoc

class _$_GetListVoucherOutletSuccess implements _GetListVoucherOutletSuccess {
  const _$_GetListVoucherOutletSuccess(this.response);

  @override
  final List<GetListVoucherOutletDataResponse> response;

  @override
  String toString() {
    return 'OrderState.getListVoucherOutletSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetListVoucherOutletSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$GetListVoucherOutletSuccessCopyWith<_GetListVoucherOutletSuccess>
      get copyWith => __$GetListVoucherOutletSuccessCopyWithImpl<
          _GetListVoucherOutletSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return getListVoucherOutletSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getListVoucherOutletSuccess != null) {
      return getListVoucherOutletSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return getListVoucherOutletSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getListVoucherOutletSuccess != null) {
      return getListVoucherOutletSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetListVoucherOutletSuccess implements OrderState {
  const factory _GetListVoucherOutletSuccess(
          List<GetListVoucherOutletDataResponse> response) =
      _$_GetListVoucherOutletSuccess;

  List<GetListVoucherOutletDataResponse> get response =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetListVoucherOutletSuccessCopyWith<_GetListVoucherOutletSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetOutletListProductSuccessCopyWith<$Res> {
  factory _$GetOutletListProductSuccessCopyWith(
          _GetOutletListProductSuccess value,
          $Res Function(_GetOutletListProductSuccess) then) =
      __$GetOutletListProductSuccessCopyWithImpl<$Res>;
  $Res call({List<OutletListProductDataResponse> response});
}

/// @nodoc
class __$GetOutletListProductSuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$GetOutletListProductSuccessCopyWith<$Res> {
  __$GetOutletListProductSuccessCopyWithImpl(
      _GetOutletListProductSuccess _value,
      $Res Function(_GetOutletListProductSuccess) _then)
      : super(_value, (v) => _then(v as _GetOutletListProductSuccess));

  @override
  _GetOutletListProductSuccess get _value =>
      super._value as _GetOutletListProductSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetOutletListProductSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<OutletListProductDataResponse>,
    ));
  }
}

/// @nodoc

class _$_GetOutletListProductSuccess implements _GetOutletListProductSuccess {
  const _$_GetOutletListProductSuccess(this.response);

  @override
  final List<OutletListProductDataResponse> response;

  @override
  String toString() {
    return 'OrderState.getOutletListProductSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOutletListProductSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$GetOutletListProductSuccessCopyWith<_GetOutletListProductSuccess>
      get copyWith => __$GetOutletListProductSuccessCopyWithImpl<
          _GetOutletListProductSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return getOutletListProductSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getOutletListProductSuccess != null) {
      return getOutletListProductSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return getOutletListProductSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getOutletListProductSuccess != null) {
      return getOutletListProductSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetOutletListProductSuccess implements OrderState {
  const factory _GetOutletListProductSuccess(
          List<OutletListProductDataResponse> response) =
      _$_GetOutletListProductSuccess;

  List<OutletListProductDataResponse> get response =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetOutletListProductSuccessCopyWith<_GetOutletListProductSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetOutletProductCategorySuccessCopyWith<$Res> {
  factory _$GetOutletProductCategorySuccessCopyWith(
          _GetOutletProductCategorySuccess value,
          $Res Function(_GetOutletProductCategorySuccess) then) =
      __$GetOutletProductCategorySuccessCopyWithImpl<$Res>;
  $Res call({List<OutletProductCategoryDataResponse> response});
}

/// @nodoc
class __$GetOutletProductCategorySuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$GetOutletProductCategorySuccessCopyWith<$Res> {
  __$GetOutletProductCategorySuccessCopyWithImpl(
      _GetOutletProductCategorySuccess _value,
      $Res Function(_GetOutletProductCategorySuccess) _then)
      : super(_value, (v) => _then(v as _GetOutletProductCategorySuccess));

  @override
  _GetOutletProductCategorySuccess get _value =>
      super._value as _GetOutletProductCategorySuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetOutletProductCategorySuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<OutletProductCategoryDataResponse>,
    ));
  }
}

/// @nodoc

class _$_GetOutletProductCategorySuccess
    implements _GetOutletProductCategorySuccess {
  const _$_GetOutletProductCategorySuccess(this.response);

  @override
  final List<OutletProductCategoryDataResponse> response;

  @override
  String toString() {
    return 'OrderState.getOutletProductCategorySuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOutletProductCategorySuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$GetOutletProductCategorySuccessCopyWith<_GetOutletProductCategorySuccess>
      get copyWith => __$GetOutletProductCategorySuccessCopyWithImpl<
          _GetOutletProductCategorySuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return getOutletProductCategorySuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getOutletProductCategorySuccess != null) {
      return getOutletProductCategorySuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return getOutletProductCategorySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getOutletProductCategorySuccess != null) {
      return getOutletProductCategorySuccess(this);
    }
    return orElse();
  }
}

abstract class _GetOutletProductCategorySuccess implements OrderState {
  const factory _GetOutletProductCategorySuccess(
          List<OutletProductCategoryDataResponse> response) =
      _$_GetOutletProductCategorySuccess;

  List<OutletProductCategoryDataResponse> get response =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetOutletProductCategorySuccessCopyWith<_GetOutletProductCategorySuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetHotPromoSuccessCopyWith<$Res> {
  factory _$GetHotPromoSuccessCopyWith(
          _GetHotPromoSuccess value, $Res Function(_GetHotPromoSuccess) then) =
      __$GetHotPromoSuccessCopyWithImpl<$Res>;
  $Res call({List<HotPromo> response});
}

/// @nodoc
class __$GetHotPromoSuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$GetHotPromoSuccessCopyWith<$Res> {
  __$GetHotPromoSuccessCopyWithImpl(
      _GetHotPromoSuccess _value, $Res Function(_GetHotPromoSuccess) _then)
      : super(_value, (v) => _then(v as _GetHotPromoSuccess));

  @override
  _GetHotPromoSuccess get _value => super._value as _GetHotPromoSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetHotPromoSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<HotPromo>,
    ));
  }
}

/// @nodoc

class _$_GetHotPromoSuccess implements _GetHotPromoSuccess {
  const _$_GetHotPromoSuccess(this.response);

  @override
  final List<HotPromo> response;

  @override
  String toString() {
    return 'OrderState.getHotPromoSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetHotPromoSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$GetHotPromoSuccessCopyWith<_GetHotPromoSuccess> get copyWith =>
      __$GetHotPromoSuccessCopyWithImpl<_GetHotPromoSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return getHotPromoSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getHotPromoSuccess != null) {
      return getHotPromoSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return getHotPromoSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getHotPromoSuccess != null) {
      return getHotPromoSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetHotPromoSuccess implements OrderState {
  const factory _GetHotPromoSuccess(List<HotPromo> response) =
      _$_GetHotPromoSuccess;

  List<HotPromo> get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetHotPromoSuccessCopyWith<_GetHotPromoSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetDetailOutletSuccessCopyWith<$Res> {
  factory _$GetDetailOutletSuccessCopyWith(_GetDetailOutletSuccess value,
          $Res Function(_GetDetailOutletSuccess) then) =
      __$GetDetailOutletSuccessCopyWithImpl<$Res>;
  $Res call({DetailOutletDataResponse response});

  $DetailOutletDataResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$GetDetailOutletSuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$GetDetailOutletSuccessCopyWith<$Res> {
  __$GetDetailOutletSuccessCopyWithImpl(_GetDetailOutletSuccess _value,
      $Res Function(_GetDetailOutletSuccess) _then)
      : super(_value, (v) => _then(v as _GetDetailOutletSuccess));

  @override
  _GetDetailOutletSuccess get _value => super._value as _GetDetailOutletSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetDetailOutletSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as DetailOutletDataResponse,
    ));
  }

  @override
  $DetailOutletDataResponseCopyWith<$Res> get response {
    return $DetailOutletDataResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$_GetDetailOutletSuccess implements _GetDetailOutletSuccess {
  const _$_GetDetailOutletSuccess(this.response);

  @override
  final DetailOutletDataResponse response;

  @override
  String toString() {
    return 'OrderState.getDetailOutletSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetDetailOutletSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$GetDetailOutletSuccessCopyWith<_GetDetailOutletSuccess> get copyWith =>
      __$GetDetailOutletSuccessCopyWithImpl<_GetDetailOutletSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return getDetailOutletSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getDetailOutletSuccess != null) {
      return getDetailOutletSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return getDetailOutletSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getDetailOutletSuccess != null) {
      return getDetailOutletSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetDetailOutletSuccess implements OrderState {
  const factory _GetDetailOutletSuccess(DetailOutletDataResponse response) =
      _$_GetDetailOutletSuccess;

  DetailOutletDataResponse get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetDetailOutletSuccessCopyWith<_GetDetailOutletSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetPaymentMethodSuccessCopyWith<$Res> {
  factory _$GetPaymentMethodSuccessCopyWith(_GetPaymentMethodSuccess value,
          $Res Function(_GetPaymentMethodSuccess) then) =
      __$GetPaymentMethodSuccessCopyWithImpl<$Res>;
  $Res call({List<PaymentMethodDataResponse> response});
}

/// @nodoc
class __$GetPaymentMethodSuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$GetPaymentMethodSuccessCopyWith<$Res> {
  __$GetPaymentMethodSuccessCopyWithImpl(_GetPaymentMethodSuccess _value,
      $Res Function(_GetPaymentMethodSuccess) _then)
      : super(_value, (v) => _then(v as _GetPaymentMethodSuccess));

  @override
  _GetPaymentMethodSuccess get _value =>
      super._value as _GetPaymentMethodSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetPaymentMethodSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethodDataResponse>,
    ));
  }
}

/// @nodoc

class _$_GetPaymentMethodSuccess implements _GetPaymentMethodSuccess {
  const _$_GetPaymentMethodSuccess(this.response);

  @override
  final List<PaymentMethodDataResponse> response;

  @override
  String toString() {
    return 'OrderState.getPaymentMethodSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPaymentMethodSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$GetPaymentMethodSuccessCopyWith<_GetPaymentMethodSuccess> get copyWith =>
      __$GetPaymentMethodSuccessCopyWithImpl<_GetPaymentMethodSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return getPaymentMethodSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getPaymentMethodSuccess != null) {
      return getPaymentMethodSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return getPaymentMethodSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getPaymentMethodSuccess != null) {
      return getPaymentMethodSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentMethodSuccess implements OrderState {
  const factory _GetPaymentMethodSuccess(
      List<PaymentMethodDataResponse> response) = _$_GetPaymentMethodSuccess;

  List<PaymentMethodDataResponse> get response =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetPaymentMethodSuccessCopyWith<_GetPaymentMethodSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GeliveryInquirySuccessCopyWith<$Res> {
  factory _$GeliveryInquirySuccessCopyWith(_GeliveryInquirySuccess value,
          $Res Function(_GeliveryInquirySuccess) then) =
      __$GeliveryInquirySuccessCopyWithImpl<$Res>;
  $Res call({List<DeliveryMethodDataResponse> response});
}

/// @nodoc
class __$GeliveryInquirySuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$GeliveryInquirySuccessCopyWith<$Res> {
  __$GeliveryInquirySuccessCopyWithImpl(_GeliveryInquirySuccess _value,
      $Res Function(_GeliveryInquirySuccess) _then)
      : super(_value, (v) => _then(v as _GeliveryInquirySuccess));

  @override
  _GeliveryInquirySuccess get _value => super._value as _GeliveryInquirySuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GeliveryInquirySuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<DeliveryMethodDataResponse>,
    ));
  }
}

/// @nodoc

class _$_GeliveryInquirySuccess implements _GeliveryInquirySuccess {
  const _$_GeliveryInquirySuccess(this.response);

  @override
  final List<DeliveryMethodDataResponse> response;

  @override
  String toString() {
    return 'OrderState.deliveryInquirySuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GeliveryInquirySuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$GeliveryInquirySuccessCopyWith<_GeliveryInquirySuccess> get copyWith =>
      __$GeliveryInquirySuccessCopyWithImpl<_GeliveryInquirySuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return deliveryInquirySuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (deliveryInquirySuccess != null) {
      return deliveryInquirySuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return deliveryInquirySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (deliveryInquirySuccess != null) {
      return deliveryInquirySuccess(this);
    }
    return orElse();
  }
}

abstract class _GeliveryInquirySuccess implements OrderState {
  const factory _GeliveryInquirySuccess(
      List<DeliveryMethodDataResponse> response) = _$_GeliveryInquirySuccess;

  List<DeliveryMethodDataResponse> get response =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GeliveryInquirySuccessCopyWith<_GeliveryInquirySuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddCartSuccessCopyWith<$Res> {
  factory _$AddCartSuccessCopyWith(
          _AddCartSuccess value, $Res Function(_AddCartSuccess) then) =
      __$AddCartSuccessCopyWithImpl<$Res>;
  $Res call({CartSessionResponse response});

  $CartSessionResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$AddCartSuccessCopyWithImpl<$Res> extends _$OrderStateCopyWithImpl<$Res>
    implements _$AddCartSuccessCopyWith<$Res> {
  __$AddCartSuccessCopyWithImpl(
      _AddCartSuccess _value, $Res Function(_AddCartSuccess) _then)
      : super(_value, (v) => _then(v as _AddCartSuccess));

  @override
  _AddCartSuccess get _value => super._value as _AddCartSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_AddCartSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CartSessionResponse,
    ));
  }

  @override
  $CartSessionResponseCopyWith<$Res> get response {
    return $CartSessionResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$_AddCartSuccess implements _AddCartSuccess {
  const _$_AddCartSuccess(this.response);

  @override
  final CartSessionResponse response;

  @override
  String toString() {
    return 'OrderState.addCartSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddCartSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$AddCartSuccessCopyWith<_AddCartSuccess> get copyWith =>
      __$AddCartSuccessCopyWithImpl<_AddCartSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return addCartSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (addCartSuccess != null) {
      return addCartSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return addCartSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (addCartSuccess != null) {
      return addCartSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddCartSuccess implements OrderState {
  const factory _AddCartSuccess(CartSessionResponse response) =
      _$_AddCartSuccess;

  CartSessionResponse get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddCartSuccessCopyWith<_AddCartSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateCartSuccessCopyWith<$Res> {
  factory _$UpdateCartSuccessCopyWith(
          _UpdateCartSuccess value, $Res Function(_UpdateCartSuccess) then) =
      __$UpdateCartSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateCartSuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$UpdateCartSuccessCopyWith<$Res> {
  __$UpdateCartSuccessCopyWithImpl(
      _UpdateCartSuccess _value, $Res Function(_UpdateCartSuccess) _then)
      : super(_value, (v) => _then(v as _UpdateCartSuccess));

  @override
  _UpdateCartSuccess get _value => super._value as _UpdateCartSuccess;
}

/// @nodoc

class _$_UpdateCartSuccess implements _UpdateCartSuccess {
  const _$_UpdateCartSuccess();

  @override
  String toString() {
    return 'OrderState.updateCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UpdateCartSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return updateCart();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (updateCart != null) {
      return updateCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return updateCart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (updateCart != null) {
      return updateCart(this);
    }
    return orElse();
  }
}

abstract class _UpdateCartSuccess implements OrderState {
  const factory _UpdateCartSuccess() = _$_UpdateCartSuccess;
}

/// @nodoc
abstract class _$RemoveCartSuccessCopyWith<$Res> {
  factory _$RemoveCartSuccessCopyWith(
          _RemoveCartSuccess value, $Res Function(_RemoveCartSuccess) then) =
      __$RemoveCartSuccessCopyWithImpl<$Res>;
  $Res call({CartSessionResponse response});

  $CartSessionResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$RemoveCartSuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$RemoveCartSuccessCopyWith<$Res> {
  __$RemoveCartSuccessCopyWithImpl(
      _RemoveCartSuccess _value, $Res Function(_RemoveCartSuccess) _then)
      : super(_value, (v) => _then(v as _RemoveCartSuccess));

  @override
  _RemoveCartSuccess get _value => super._value as _RemoveCartSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_RemoveCartSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CartSessionResponse,
    ));
  }

  @override
  $CartSessionResponseCopyWith<$Res> get response {
    return $CartSessionResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$_RemoveCartSuccess implements _RemoveCartSuccess {
  const _$_RemoveCartSuccess(this.response);

  @override
  final CartSessionResponse response;

  @override
  String toString() {
    return 'OrderState.removeCartSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveCartSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$RemoveCartSuccessCopyWith<_RemoveCartSuccess> get copyWith =>
      __$RemoveCartSuccessCopyWithImpl<_RemoveCartSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return removeCartSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (removeCartSuccess != null) {
      return removeCartSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return removeCartSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (removeCartSuccess != null) {
      return removeCartSuccess(this);
    }
    return orElse();
  }
}

abstract class _RemoveCartSuccess implements OrderState {
  const factory _RemoveCartSuccess(CartSessionResponse response) =
      _$_RemoveCartSuccess;

  CartSessionResponse get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RemoveCartSuccessCopyWith<_RemoveCartSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateCartSessionSuccessCopyWith<$Res> {
  factory _$CreateCartSessionSuccessCopyWith(_CreateCartSessionSuccess value,
          $Res Function(_CreateCartSessionSuccess) then) =
      __$CreateCartSessionSuccessCopyWithImpl<$Res>;
  $Res call({CartSessionResponse response});

  $CartSessionResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$CreateCartSessionSuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$CreateCartSessionSuccessCopyWith<$Res> {
  __$CreateCartSessionSuccessCopyWithImpl(_CreateCartSessionSuccess _value,
      $Res Function(_CreateCartSessionSuccess) _then)
      : super(_value, (v) => _then(v as _CreateCartSessionSuccess));

  @override
  _CreateCartSessionSuccess get _value =>
      super._value as _CreateCartSessionSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_CreateCartSessionSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CartSessionResponse,
    ));
  }

  @override
  $CartSessionResponseCopyWith<$Res> get response {
    return $CartSessionResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$_CreateCartSessionSuccess implements _CreateCartSessionSuccess {
  const _$_CreateCartSessionSuccess(this.response);

  @override
  final CartSessionResponse response;

  @override
  String toString() {
    return 'OrderState.createCartSessionSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateCartSessionSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$CreateCartSessionSuccessCopyWith<_CreateCartSessionSuccess> get copyWith =>
      __$CreateCartSessionSuccessCopyWithImpl<_CreateCartSessionSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return createCartSessionSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (createCartSessionSuccess != null) {
      return createCartSessionSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return createCartSessionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (createCartSessionSuccess != null) {
      return createCartSessionSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateCartSessionSuccess implements OrderState {
  const factory _CreateCartSessionSuccess(CartSessionResponse response) =
      _$_CreateCartSessionSuccess;

  CartSessionResponse get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CreateCartSessionSuccessCopyWith<_CreateCartSessionSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetCartSessionSuccessCopyWith<$Res> {
  factory _$GetCartSessionSuccessCopyWith(_GetCartSessionSuccess value,
          $Res Function(_GetCartSessionSuccess) then) =
      __$GetCartSessionSuccessCopyWithImpl<$Res>;
  $Res call({CartSessionResponse response});

  $CartSessionResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$GetCartSessionSuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$GetCartSessionSuccessCopyWith<$Res> {
  __$GetCartSessionSuccessCopyWithImpl(_GetCartSessionSuccess _value,
      $Res Function(_GetCartSessionSuccess) _then)
      : super(_value, (v) => _then(v as _GetCartSessionSuccess));

  @override
  _GetCartSessionSuccess get _value => super._value as _GetCartSessionSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetCartSessionSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CartSessionResponse,
    ));
  }

  @override
  $CartSessionResponseCopyWith<$Res> get response {
    return $CartSessionResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$_GetCartSessionSuccess implements _GetCartSessionSuccess {
  const _$_GetCartSessionSuccess(this.response);

  @override
  final CartSessionResponse response;

  @override
  String toString() {
    return 'OrderState.getCartSessionSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetCartSessionSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$GetCartSessionSuccessCopyWith<_GetCartSessionSuccess> get copyWith =>
      __$GetCartSessionSuccessCopyWithImpl<_GetCartSessionSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return getCartSessionSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getCartSessionSuccess != null) {
      return getCartSessionSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return getCartSessionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getCartSessionSuccess != null) {
      return getCartSessionSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetCartSessionSuccess implements OrderState {
  const factory _GetCartSessionSuccess(CartSessionResponse response) =
      _$_GetCartSessionSuccess;

  CartSessionResponse get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetCartSessionSuccessCopyWith<_GetCartSessionSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateCartSessionSuccessCopyWith<$Res> {
  factory _$UpdateCartSessionSuccessCopyWith(_UpdateCartSessionSuccess value,
          $Res Function(_UpdateCartSessionSuccess) then) =
      __$UpdateCartSessionSuccessCopyWithImpl<$Res>;
  $Res call({CartSessionResponse response});

  $CartSessionResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$UpdateCartSessionSuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$UpdateCartSessionSuccessCopyWith<$Res> {
  __$UpdateCartSessionSuccessCopyWithImpl(_UpdateCartSessionSuccess _value,
      $Res Function(_UpdateCartSessionSuccess) _then)
      : super(_value, (v) => _then(v as _UpdateCartSessionSuccess));

  @override
  _UpdateCartSessionSuccess get _value =>
      super._value as _UpdateCartSessionSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_UpdateCartSessionSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CartSessionResponse,
    ));
  }

  @override
  $CartSessionResponseCopyWith<$Res> get response {
    return $CartSessionResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$_UpdateCartSessionSuccess implements _UpdateCartSessionSuccess {
  const _$_UpdateCartSessionSuccess(this.response);

  @override
  final CartSessionResponse response;

  @override
  String toString() {
    return 'OrderState.updateCartSessionSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateCartSessionSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$UpdateCartSessionSuccessCopyWith<_UpdateCartSessionSuccess> get copyWith =>
      __$UpdateCartSessionSuccessCopyWithImpl<_UpdateCartSessionSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return updateCartSessionSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (updateCartSessionSuccess != null) {
      return updateCartSessionSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return updateCartSessionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (updateCartSessionSuccess != null) {
      return updateCartSessionSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateCartSessionSuccess implements OrderState {
  const factory _UpdateCartSessionSuccess(CartSessionResponse response) =
      _$_UpdateCartSessionSuccess;

  CartSessionResponse get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateCartSessionSuccessCopyWith<_UpdateCartSessionSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CheckoutCartSuccessCopyWith<$Res> {
  factory _$CheckoutCartSuccessCopyWith(_CheckoutCartSuccess value,
          $Res Function(_CheckoutCartSuccess) then) =
      __$CheckoutCartSuccessCopyWithImpl<$Res>;
  $Res call({CheckoutResponse response});
}

/// @nodoc
class __$CheckoutCartSuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$CheckoutCartSuccessCopyWith<$Res> {
  __$CheckoutCartSuccessCopyWithImpl(
      _CheckoutCartSuccess _value, $Res Function(_CheckoutCartSuccess) _then)
      : super(_value, (v) => _then(v as _CheckoutCartSuccess));

  @override
  _CheckoutCartSuccess get _value => super._value as _CheckoutCartSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_CheckoutCartSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CheckoutResponse,
    ));
  }
}

/// @nodoc

class _$_CheckoutCartSuccess implements _CheckoutCartSuccess {
  const _$_CheckoutCartSuccess(this.response);

  @override
  final CheckoutResponse response;

  @override
  String toString() {
    return 'OrderState.checkoutCartSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckoutCartSuccess &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$CheckoutCartSuccessCopyWith<_CheckoutCartSuccess> get copyWith =>
      __$CheckoutCartSuccessCopyWithImpl<_CheckoutCartSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return checkoutCartSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (checkoutCartSuccess != null) {
      return checkoutCartSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return checkoutCartSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (checkoutCartSuccess != null) {
      return checkoutCartSuccess(this);
    }
    return orElse();
  }
}

abstract class _CheckoutCartSuccess implements OrderState {
  const factory _CheckoutCartSuccess(CheckoutResponse response) =
      _$_CheckoutCartSuccess;

  CheckoutResponse get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CheckoutCartSuccessCopyWith<_CheckoutCartSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetSalesTypeCartSuccessCopyWith<$Res> {
  factory _$GetSalesTypeCartSuccessCopyWith(_GetSalesTypeCartSuccess value,
          $Res Function(_GetSalesTypeCartSuccess) then) =
      __$GetSalesTypeCartSuccessCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$GetSalesTypeCartSuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$GetSalesTypeCartSuccessCopyWith<$Res> {
  __$GetSalesTypeCartSuccessCopyWithImpl(_GetSalesTypeCartSuccess _value,
      $Res Function(_GetSalesTypeCartSuccess) _then)
      : super(_value, (v) => _then(v as _GetSalesTypeCartSuccess));

  @override
  _GetSalesTypeCartSuccess get _value =>
      super._value as _GetSalesTypeCartSuccess;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_GetSalesTypeCartSuccess(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetSalesTypeCartSuccess implements _GetSalesTypeCartSuccess {
  const _$_GetSalesTypeCartSuccess(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'OrderState.getSalesTypeCartSuccess(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetSalesTypeCartSuccess &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$GetSalesTypeCartSuccessCopyWith<_GetSalesTypeCartSuccess> get copyWith =>
      __$GetSalesTypeCartSuccessCopyWithImpl<_GetSalesTypeCartSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return getSalesTypeCartSuccess(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getSalesTypeCartSuccess != null) {
      return getSalesTypeCartSuccess(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return getSalesTypeCartSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getSalesTypeCartSuccess != null) {
      return getSalesTypeCartSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetSalesTypeCartSuccess implements OrderState {
  const factory _GetSalesTypeCartSuccess(String value) =
      _$_GetSalesTypeCartSuccess;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetSalesTypeCartSuccessCopyWith<_GetSalesTypeCartSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetSalesTypeCartSuccessCopyWith<$Res> {
  factory _$SetSalesTypeCartSuccessCopyWith(_SetSalesTypeCartSuccess value,
          $Res Function(_SetSalesTypeCartSuccess) then) =
      __$SetSalesTypeCartSuccessCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$SetSalesTypeCartSuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$SetSalesTypeCartSuccessCopyWith<$Res> {
  __$SetSalesTypeCartSuccessCopyWithImpl(_SetSalesTypeCartSuccess _value,
      $Res Function(_SetSalesTypeCartSuccess) _then)
      : super(_value, (v) => _then(v as _SetSalesTypeCartSuccess));

  @override
  _SetSalesTypeCartSuccess get _value =>
      super._value as _SetSalesTypeCartSuccess;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_SetSalesTypeCartSuccess(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetSalesTypeCartSuccess implements _SetSalesTypeCartSuccess {
  const _$_SetSalesTypeCartSuccess(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'OrderState.setSalesTypeCartSuccess(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetSalesTypeCartSuccess &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$SetSalesTypeCartSuccessCopyWith<_SetSalesTypeCartSuccess> get copyWith =>
      __$SetSalesTypeCartSuccessCopyWithImpl<_SetSalesTypeCartSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return setSalesTypeCartSuccess(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (setSalesTypeCartSuccess != null) {
      return setSalesTypeCartSuccess(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return setSalesTypeCartSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (setSalesTypeCartSuccess != null) {
      return setSalesTypeCartSuccess(this);
    }
    return orElse();
  }
}

abstract class _SetSalesTypeCartSuccess implements OrderState {
  const factory _SetSalesTypeCartSuccess(String value) =
      _$_SetSalesTypeCartSuccess;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetSalesTypeCartSuccessCopyWith<_SetSalesTypeCartSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetPaymentMethodIDSuccessCopyWith<$Res> {
  factory _$SetPaymentMethodIDSuccessCopyWith(_SetPaymentMethodIDSuccess value,
          $Res Function(_SetPaymentMethodIDSuccess) then) =
      __$SetPaymentMethodIDSuccessCopyWithImpl<$Res>;
  $Res call({PaymentMethodDataResponse data});

  $PaymentMethodDataResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$SetPaymentMethodIDSuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$SetPaymentMethodIDSuccessCopyWith<$Res> {
  __$SetPaymentMethodIDSuccessCopyWithImpl(_SetPaymentMethodIDSuccess _value,
      $Res Function(_SetPaymentMethodIDSuccess) _then)
      : super(_value, (v) => _then(v as _SetPaymentMethodIDSuccess));

  @override
  _SetPaymentMethodIDSuccess get _value =>
      super._value as _SetPaymentMethodIDSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_SetPaymentMethodIDSuccess(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentMethodDataResponse,
    ));
  }

  @override
  $PaymentMethodDataResponseCopyWith<$Res> get data {
    return $PaymentMethodDataResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_SetPaymentMethodIDSuccess implements _SetPaymentMethodIDSuccess {
  const _$_SetPaymentMethodIDSuccess(this.data);

  @override
  final PaymentMethodDataResponse data;

  @override
  String toString() {
    return 'OrderState.setPaymentMethodIDSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetPaymentMethodIDSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$SetPaymentMethodIDSuccessCopyWith<_SetPaymentMethodIDSuccess>
      get copyWith =>
          __$SetPaymentMethodIDSuccessCopyWithImpl<_SetPaymentMethodIDSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return setPaymentMethodIDSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (setPaymentMethodIDSuccess != null) {
      return setPaymentMethodIDSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return setPaymentMethodIDSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (setPaymentMethodIDSuccess != null) {
      return setPaymentMethodIDSuccess(this);
    }
    return orElse();
  }
}

abstract class _SetPaymentMethodIDSuccess implements OrderState {
  const factory _SetPaymentMethodIDSuccess(PaymentMethodDataResponse data) =
      _$_SetPaymentMethodIDSuccess;

  PaymentMethodDataResponse get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetPaymentMethodIDSuccessCopyWith<_SetPaymentMethodIDSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetPaymentMethodIDSuccessCopyWith<$Res> {
  factory _$GetPaymentMethodIDSuccessCopyWith(_GetPaymentMethodIDSuccess value,
          $Res Function(_GetPaymentMethodIDSuccess) then) =
      __$GetPaymentMethodIDSuccessCopyWithImpl<$Res>;
  $Res call({PaymentMethodDataResponse data});

  $PaymentMethodDataResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$GetPaymentMethodIDSuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$GetPaymentMethodIDSuccessCopyWith<$Res> {
  __$GetPaymentMethodIDSuccessCopyWithImpl(_GetPaymentMethodIDSuccess _value,
      $Res Function(_GetPaymentMethodIDSuccess) _then)
      : super(_value, (v) => _then(v as _GetPaymentMethodIDSuccess));

  @override
  _GetPaymentMethodIDSuccess get _value =>
      super._value as _GetPaymentMethodIDSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_GetPaymentMethodIDSuccess(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentMethodDataResponse,
    ));
  }

  @override
  $PaymentMethodDataResponseCopyWith<$Res> get data {
    return $PaymentMethodDataResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_GetPaymentMethodIDSuccess implements _GetPaymentMethodIDSuccess {
  const _$_GetPaymentMethodIDSuccess(this.data);

  @override
  final PaymentMethodDataResponse data;

  @override
  String toString() {
    return 'OrderState.getPaymentMethodIDSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPaymentMethodIDSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$GetPaymentMethodIDSuccessCopyWith<_GetPaymentMethodIDSuccess>
      get copyWith =>
          __$GetPaymentMethodIDSuccessCopyWithImpl<_GetPaymentMethodIDSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return getPaymentMethodIDSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getPaymentMethodIDSuccess != null) {
      return getPaymentMethodIDSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return getPaymentMethodIDSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getPaymentMethodIDSuccess != null) {
      return getPaymentMethodIDSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentMethodIDSuccess implements OrderState {
  const factory _GetPaymentMethodIDSuccess(PaymentMethodDataResponse data) =
      _$_GetPaymentMethodIDSuccess;

  PaymentMethodDataResponse get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetPaymentMethodIDSuccessCopyWith<_GetPaymentMethodIDSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetDeliveryMethodIDSuccessCopyWith<$Res> {
  factory _$SetDeliveryMethodIDSuccessCopyWith(
          _SetDeliveryMethodIDSuccess value,
          $Res Function(_SetDeliveryMethodIDSuccess) then) =
      __$SetDeliveryMethodIDSuccessCopyWithImpl<$Res>;
  $Res call({DeliveryMethodDataResponse data});

  $DeliveryMethodDataResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$SetDeliveryMethodIDSuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$SetDeliveryMethodIDSuccessCopyWith<$Res> {
  __$SetDeliveryMethodIDSuccessCopyWithImpl(_SetDeliveryMethodIDSuccess _value,
      $Res Function(_SetDeliveryMethodIDSuccess) _then)
      : super(_value, (v) => _then(v as _SetDeliveryMethodIDSuccess));

  @override
  _SetDeliveryMethodIDSuccess get _value =>
      super._value as _SetDeliveryMethodIDSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_SetDeliveryMethodIDSuccess(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DeliveryMethodDataResponse,
    ));
  }

  @override
  $DeliveryMethodDataResponseCopyWith<$Res> get data {
    return $DeliveryMethodDataResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_SetDeliveryMethodIDSuccess implements _SetDeliveryMethodIDSuccess {
  const _$_SetDeliveryMethodIDSuccess(this.data);

  @override
  final DeliveryMethodDataResponse data;

  @override
  String toString() {
    return 'OrderState.setDeliveryMethodIDSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetDeliveryMethodIDSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$SetDeliveryMethodIDSuccessCopyWith<_SetDeliveryMethodIDSuccess>
      get copyWith => __$SetDeliveryMethodIDSuccessCopyWithImpl<
          _SetDeliveryMethodIDSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return setDeliveryMethodIDSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (setDeliveryMethodIDSuccess != null) {
      return setDeliveryMethodIDSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return setDeliveryMethodIDSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (setDeliveryMethodIDSuccess != null) {
      return setDeliveryMethodIDSuccess(this);
    }
    return orElse();
  }
}

abstract class _SetDeliveryMethodIDSuccess implements OrderState {
  const factory _SetDeliveryMethodIDSuccess(DeliveryMethodDataResponse data) =
      _$_SetDeliveryMethodIDSuccess;

  DeliveryMethodDataResponse get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetDeliveryMethodIDSuccessCopyWith<_SetDeliveryMethodIDSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetDeliveryMethodIDSuccessCopyWith<$Res> {
  factory _$GetDeliveryMethodIDSuccessCopyWith(
          _GetDeliveryMethodIDSuccess value,
          $Res Function(_GetDeliveryMethodIDSuccess) then) =
      __$GetDeliveryMethodIDSuccessCopyWithImpl<$Res>;
  $Res call({DeliveryMethodDataResponse data});

  $DeliveryMethodDataResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$GetDeliveryMethodIDSuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$GetDeliveryMethodIDSuccessCopyWith<$Res> {
  __$GetDeliveryMethodIDSuccessCopyWithImpl(_GetDeliveryMethodIDSuccess _value,
      $Res Function(_GetDeliveryMethodIDSuccess) _then)
      : super(_value, (v) => _then(v as _GetDeliveryMethodIDSuccess));

  @override
  _GetDeliveryMethodIDSuccess get _value =>
      super._value as _GetDeliveryMethodIDSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_GetDeliveryMethodIDSuccess(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DeliveryMethodDataResponse,
    ));
  }

  @override
  $DeliveryMethodDataResponseCopyWith<$Res> get data {
    return $DeliveryMethodDataResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_GetDeliveryMethodIDSuccess implements _GetDeliveryMethodIDSuccess {
  const _$_GetDeliveryMethodIDSuccess(this.data);

  @override
  final DeliveryMethodDataResponse data;

  @override
  String toString() {
    return 'OrderState.getDeliveryMethodIDSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetDeliveryMethodIDSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$GetDeliveryMethodIDSuccessCopyWith<_GetDeliveryMethodIDSuccess>
      get copyWith => __$GetDeliveryMethodIDSuccessCopyWithImpl<
          _GetDeliveryMethodIDSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return getDeliveryMethodIDSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getDeliveryMethodIDSuccess != null) {
      return getDeliveryMethodIDSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return getDeliveryMethodIDSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getDeliveryMethodIDSuccess != null) {
      return getDeliveryMethodIDSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetDeliveryMethodIDSuccess implements OrderState {
  const factory _GetDeliveryMethodIDSuccess(DeliveryMethodDataResponse data) =
      _$_GetDeliveryMethodIDSuccess;

  DeliveryMethodDataResponse get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetDeliveryMethodIDSuccessCopyWith<_GetDeliveryMethodIDSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetVoucherMethodIDSuccessCopyWith<$Res> {
  factory _$SetVoucherMethodIDSuccessCopyWith(_SetVoucherMethodIDSuccess value,
          $Res Function(_SetVoucherMethodIDSuccess) then) =
      __$SetVoucherMethodIDSuccessCopyWithImpl<$Res>;
  $Res call({GetListVoucherOutletDataResponse data});

  $GetListVoucherOutletDataResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$SetVoucherMethodIDSuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$SetVoucherMethodIDSuccessCopyWith<$Res> {
  __$SetVoucherMethodIDSuccessCopyWithImpl(_SetVoucherMethodIDSuccess _value,
      $Res Function(_SetVoucherMethodIDSuccess) _then)
      : super(_value, (v) => _then(v as _SetVoucherMethodIDSuccess));

  @override
  _SetVoucherMethodIDSuccess get _value =>
      super._value as _SetVoucherMethodIDSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_SetVoucherMethodIDSuccess(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GetListVoucherOutletDataResponse,
    ));
  }

  @override
  $GetListVoucherOutletDataResponseCopyWith<$Res> get data {
    return $GetListVoucherOutletDataResponseCopyWith<$Res>(_value.data,
        (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_SetVoucherMethodIDSuccess implements _SetVoucherMethodIDSuccess {
  const _$_SetVoucherMethodIDSuccess(this.data);

  @override
  final GetListVoucherOutletDataResponse data;

  @override
  String toString() {
    return 'OrderState.setVoucherMethodIDSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetVoucherMethodIDSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$SetVoucherMethodIDSuccessCopyWith<_SetVoucherMethodIDSuccess>
      get copyWith =>
          __$SetVoucherMethodIDSuccessCopyWithImpl<_SetVoucherMethodIDSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return setVoucherMethodIDSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (setVoucherMethodIDSuccess != null) {
      return setVoucherMethodIDSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return setVoucherMethodIDSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (setVoucherMethodIDSuccess != null) {
      return setVoucherMethodIDSuccess(this);
    }
    return orElse();
  }
}

abstract class _SetVoucherMethodIDSuccess implements OrderState {
  const factory _SetVoucherMethodIDSuccess(
      GetListVoucherOutletDataResponse data) = _$_SetVoucherMethodIDSuccess;

  GetListVoucherOutletDataResponse get data =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetVoucherMethodIDSuccessCopyWith<_SetVoucherMethodIDSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetVoucherMethodIDSuccessCopyWith<$Res> {
  factory _$GetVoucherMethodIDSuccessCopyWith(_GetVoucherMethodIDSuccess value,
          $Res Function(_GetVoucherMethodIDSuccess) then) =
      __$GetVoucherMethodIDSuccessCopyWithImpl<$Res>;
  $Res call({GetListVoucherOutletDataResponse data});

  $GetListVoucherOutletDataResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$GetVoucherMethodIDSuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res>
    implements _$GetVoucherMethodIDSuccessCopyWith<$Res> {
  __$GetVoucherMethodIDSuccessCopyWithImpl(_GetVoucherMethodIDSuccess _value,
      $Res Function(_GetVoucherMethodIDSuccess) _then)
      : super(_value, (v) => _then(v as _GetVoucherMethodIDSuccess));

  @override
  _GetVoucherMethodIDSuccess get _value =>
      super._value as _GetVoucherMethodIDSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_GetVoucherMethodIDSuccess(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GetListVoucherOutletDataResponse,
    ));
  }

  @override
  $GetListVoucherOutletDataResponseCopyWith<$Res> get data {
    return $GetListVoucherOutletDataResponseCopyWith<$Res>(_value.data,
        (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_GetVoucherMethodIDSuccess implements _GetVoucherMethodIDSuccess {
  const _$_GetVoucherMethodIDSuccess(this.data);

  @override
  final GetListVoucherOutletDataResponse data;

  @override
  String toString() {
    return 'OrderState.getVoucherMethodIDSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetVoucherMethodIDSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$GetVoucherMethodIDSuccessCopyWith<_GetVoucherMethodIDSuccess>
      get copyWith =>
          __$GetVoucherMethodIDSuccessCopyWithImpl<_GetVoucherMethodIDSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() loadSuccess,
    required TResult Function(OrderFailure e) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByMerchantSuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<PromoOutletDataResponse> response)
        getListPromoOutletSuccess,
    required TResult Function(List<GetListVoucherOutletDataResponse> response)
        getListVoucherOutletSuccess,
    required TResult Function(List<OutletListProductDataResponse> response)
        getOutletListProductSuccess,
    required TResult Function(List<OutletProductCategoryDataResponse> response)
        getOutletProductCategorySuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethodDataResponse> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethodDataResponse> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response) addCartSuccess,
    required TResult Function() updateCart,
    required TResult Function(CartSessionResponse response) removeCartSuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        getCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
    required TResult Function(String value) getSalesTypeCartSuccess,
    required TResult Function(String value) setSalesTypeCartSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        setPaymentMethodIDSuccess,
    required TResult Function(PaymentMethodDataResponse data)
        getPaymentMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        setDeliveryMethodIDSuccess,
    required TResult Function(DeliveryMethodDataResponse data)
        getDeliveryMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        setVoucherMethodIDSuccess,
    required TResult Function(GetListVoucherOutletDataResponse data)
        getVoucherMethodIDSuccess,
  }) {
    return getVoucherMethodIDSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(OrderFailure e)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByMerchantSuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<PromoOutletDataResponse> response)?
        getListPromoOutletSuccess,
    TResult Function(List<GetListVoucherOutletDataResponse> response)?
        getListVoucherOutletSuccess,
    TResult Function(List<OutletListProductDataResponse> response)?
        getOutletListProductSuccess,
    TResult Function(List<OutletProductCategoryDataResponse> response)?
        getOutletProductCategorySuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethodDataResponse> response)?
        getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethodDataResponse> response)?
        deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? addCartSuccess,
    TResult Function()? updateCart,
    TResult Function(CartSessionResponse response)? removeCartSuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? getCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    TResult Function(String value)? getSalesTypeCartSuccess,
    TResult Function(String value)? setSalesTypeCartSuccess,
    TResult Function(PaymentMethodDataResponse data)? setPaymentMethodIDSuccess,
    TResult Function(PaymentMethodDataResponse data)? getPaymentMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        setDeliveryMethodIDSuccess,
    TResult Function(DeliveryMethodDataResponse data)?
        getDeliveryMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        setVoucherMethodIDSuccess,
    TResult Function(GetListVoucherOutletDataResponse data)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getVoucherMethodIDSuccess != null) {
      return getVoucherMethodIDSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_GetOutletByLocationSucess value)
        getOutletByLocationSuccess,
    required TResult Function(_GetOutletByCategorySucess value)
        getOutletByCategorySuccess,
    required TResult Function(_GetOutletByMerchantSucess value)
        getOutletByMerchantSuccess,
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetListPromoOutletSuccess value)
        getListPromoOutletSuccess,
    required TResult Function(_GetListVoucherOutletSuccess value)
        getListVoucherOutletSuccess,
    required TResult Function(_GetOutletListProductSuccess value)
        getOutletListProductSuccess,
    required TResult Function(_GetOutletProductCategorySuccess value)
        getOutletProductCategorySuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_AddCartSuccess value) addCartSuccess,
    required TResult Function(_UpdateCartSuccess value) updateCart,
    required TResult Function(_RemoveCartSuccess value) removeCartSuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_GetCartSessionSuccess value)
        getCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
    required TResult Function(_GetSalesTypeCartSuccess value)
        getSalesTypeCartSuccess,
    required TResult Function(_SetSalesTypeCartSuccess value)
        setSalesTypeCartSuccess,
    required TResult Function(_SetPaymentMethodIDSuccess value)
        setPaymentMethodIDSuccess,
    required TResult Function(_GetPaymentMethodIDSuccess value)
        getPaymentMethodIDSuccess,
    required TResult Function(_SetDeliveryMethodIDSuccess value)
        setDeliveryMethodIDSuccess,
    required TResult Function(_GetDeliveryMethodIDSuccess value)
        getDeliveryMethodIDSuccess,
    required TResult Function(_SetVoucherMethodIDSuccess value)
        setVoucherMethodIDSuccess,
    required TResult Function(_GetVoucherMethodIDSuccess value)
        getVoucherMethodIDSuccess,
  }) {
    return getVoucherMethodIDSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_GetOutletByLocationSucess value)?
        getOutletByLocationSuccess,
    TResult Function(_GetOutletByCategorySucess value)?
        getOutletByCategorySuccess,
    TResult Function(_GetOutletByMerchantSucess value)?
        getOutletByMerchantSuccess,
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetListPromoOutletSuccess value)?
        getListPromoOutletSuccess,
    TResult Function(_GetListVoucherOutletSuccess value)?
        getListVoucherOutletSuccess,
    TResult Function(_GetOutletListProductSuccess value)?
        getOutletListProductSuccess,
    TResult Function(_GetOutletProductCategorySuccess value)?
        getOutletProductCategorySuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_AddCartSuccess value)? addCartSuccess,
    TResult Function(_UpdateCartSuccess value)? updateCart,
    TResult Function(_RemoveCartSuccess value)? removeCartSuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_GetCartSessionSuccess value)? getCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    TResult Function(_GetSalesTypeCartSuccess value)? getSalesTypeCartSuccess,
    TResult Function(_SetSalesTypeCartSuccess value)? setSalesTypeCartSuccess,
    TResult Function(_SetPaymentMethodIDSuccess value)?
        setPaymentMethodIDSuccess,
    TResult Function(_GetPaymentMethodIDSuccess value)?
        getPaymentMethodIDSuccess,
    TResult Function(_SetDeliveryMethodIDSuccess value)?
        setDeliveryMethodIDSuccess,
    TResult Function(_GetDeliveryMethodIDSuccess value)?
        getDeliveryMethodIDSuccess,
    TResult Function(_SetVoucherMethodIDSuccess value)?
        setVoucherMethodIDSuccess,
    TResult Function(_GetVoucherMethodIDSuccess value)?
        getVoucherMethodIDSuccess,
    required TResult orElse(),
  }) {
    if (getVoucherMethodIDSuccess != null) {
      return getVoucherMethodIDSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetVoucherMethodIDSuccess implements OrderState {
  const factory _GetVoucherMethodIDSuccess(
      GetListVoucherOutletDataResponse data) = _$_GetVoucherMethodIDSuccess;

  GetListVoucherOutletDataResponse get data =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetVoucherMethodIDSuccessCopyWith<_GetVoucherMethodIDSuccess>
      get copyWith => throw _privateConstructorUsedError;
}
