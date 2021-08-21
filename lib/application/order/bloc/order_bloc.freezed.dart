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
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOutletByLocation value) getOutletByLocation,
    required TResult Function(_GetOutletByCategory value) getOutletByCategory,
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
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
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
  }) {
    return getOutletByLocation(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
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
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
  }) {
    return getOutletByLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
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
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
  }) {
    return getOutletByCategory(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
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
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
  }) {
    return getOutletByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
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
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
  }) {
    return getPromoOutlet(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
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
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
  }) {
    return getPromoOutlet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
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
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
  }) {
    return getHotPromo(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
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
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
  }) {
    return getHotPromo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
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
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
  }) {
    return getDetailOutlet(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
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
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
  }) {
    return getDetailOutlet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
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
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
  }) {
    return getPaymentMethod(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
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
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
  }) {
    return getPaymentMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
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
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
  }) {
    return deliveryInquiry(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
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
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
  }) {
    return deliveryInquiry(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
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
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
  }) {
    return createCartSession(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
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
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
  }) {
    return createCartSession(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
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
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
  }) {
    return updateCartSession(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
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
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
  }) {
    return updateCartSession(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
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
    required TResult Function(GetPromoOutletParam request) getPromoOutlet,
    required TResult Function(GetHotPromoParam request) getHotPromo,
    required TResult Function(GetDetailOutletParam request) getDetailOutlet,
    required TResult Function(GetPaymentMethodParam request) getPaymentMethod,
    required TResult Function(DeliveryInquiryParam request) deliveryInquiry,
    required TResult Function(CreateCartSessionParam request) createCartSession,
    required TResult Function(UpdateCartSessionParam request) updateCartSession,
    required TResult Function(CheckoutCartParam request) checkoutCart,
  }) {
    return checkoutCart(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutletByLocationParam request)? getOutletByLocation,
    TResult Function(GetOutletByCategoryParam request)? getOutletByCategory,
    TResult Function(GetPromoOutletParam request)? getPromoOutlet,
    TResult Function(GetHotPromoParam request)? getHotPromo,
    TResult Function(GetDetailOutletParam request)? getDetailOutlet,
    TResult Function(GetPaymentMethodParam request)? getPaymentMethod,
    TResult Function(DeliveryInquiryParam request)? deliveryInquiry,
    TResult Function(CreateCartSessionParam request)? createCartSession,
    TResult Function(UpdateCartSessionParam request)? updateCartSession,
    TResult Function(CheckoutCartParam request)? checkoutCart,
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
    required TResult Function(_GetPromoOutlet value) getPromoOutlet,
    required TResult Function(_GetHotPromo value) getHotPromo,
    required TResult Function(_GetDetailOutlet value) getDetailOutlet,
    required TResult Function(_GetPaymentMethod value) getPaymentMethod,
    required TResult Function(_GeliveryInquiry value) deliveryInquiry,
    required TResult Function(_CreateCartSession value) createCartSession,
    required TResult Function(_UpdateCartSession value) updateCartSession,
    required TResult Function(_CheckoutCart value) checkoutCart,
  }) {
    return checkoutCart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOutletByLocation value)? getOutletByLocation,
    TResult Function(_GetOutletByCategory value)? getOutletByCategory,
    TResult Function(_GetPromoOutlet value)? getPromoOutlet,
    TResult Function(_GetHotPromo value)? getHotPromo,
    TResult Function(_GetDetailOutlet value)? getDetailOutlet,
    TResult Function(_GetPaymentMethod value)? getPaymentMethod,
    TResult Function(_GeliveryInquiry value)? deliveryInquiry,
    TResult Function(_CreateCartSession value)? createCartSession,
    TResult Function(_UpdateCartSession value)? updateCartSession,
    TResult Function(_CheckoutCart value)? checkoutCart,
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

  _LoadFailure loadFailure(Exception message) {
    return _LoadFailure(
      message,
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

  _GetPromoOutletSuccess getPromoOutletSuccess(List<PromoOutlet> response) {
    return _GetPromoOutletSuccess(
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
      List<PaymentMethod> response) {
    return _GetPaymentMethodSuccess(
      response,
    );
  }

  _GeliveryInquirySuccess deliveryInquirySuccess(
      List<DeliveryMethod> response) {
    return _GeliveryInquirySuccess(
      response,
    );
  }

  _CreateCartSessionSuccess createCartSessionSuccess(
      CartSessionResponse response) {
    return _CreateCartSessionSuccess(
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
    required TResult Function(Exception message) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethod> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethod> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(Exception message)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethod> response)? getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethod> response)? deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
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
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
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
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
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
    required TResult Function(Exception message) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethod> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethod> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(Exception message)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethod> response)? getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethod> response)? deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
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
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
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
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
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
    required TResult Function(Exception message) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethod> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethod> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(Exception message)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethod> response)? getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethod> response)? deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
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
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
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
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
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
    required TResult Function(Exception message) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethod> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethod> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
  }) {
    return loadSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(Exception message)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethod> response)? getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethod> response)? deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
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
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
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
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
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
  $Res call({Exception message});
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
    Object? message = freezed,
  }) {
    return _then(_LoadFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.message);

  @override
  final Exception message;

  @override
  String toString() {
    return 'OrderState.loadFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

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
    required TResult Function(Exception message) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethod> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethod> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
  }) {
    return loadFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(Exception message)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethod> response)? getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethod> response)? deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(message);
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
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
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
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements OrderState {
  const factory _LoadFailure(Exception message) = _$_LoadFailure;

  Exception get message => throw _privateConstructorUsedError;
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
    required TResult Function(Exception message) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethod> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethod> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
  }) {
    return getOutletByLocationSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(Exception message)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethod> response)? getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethod> response)? deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
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
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
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
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
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
    required TResult Function(Exception message) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethod> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethod> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
  }) {
    return getOutletByCategorySuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(Exception message)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethod> response)? getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethod> response)? deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
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
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
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
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
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
    required TResult Function(Exception message) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethod> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethod> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
  }) {
    return getPromoOutletSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(Exception message)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethod> response)? getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethod> response)? deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
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
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
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
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
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
    required TResult Function(Exception message) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethod> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethod> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
  }) {
    return getHotPromoSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(Exception message)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethod> response)? getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethod> response)? deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
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
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
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
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
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
    required TResult Function(Exception message) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethod> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethod> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
  }) {
    return getDetailOutletSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(Exception message)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethod> response)? getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethod> response)? deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
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
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
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
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
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
  $Res call({List<PaymentMethod> response});
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
              as List<PaymentMethod>,
    ));
  }
}

/// @nodoc

class _$_GetPaymentMethodSuccess implements _GetPaymentMethodSuccess {
  const _$_GetPaymentMethodSuccess(this.response);

  @override
  final List<PaymentMethod> response;

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
    required TResult Function(Exception message) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethod> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethod> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
  }) {
    return getPaymentMethodSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(Exception message)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethod> response)? getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethod> response)? deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
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
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
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
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    required TResult orElse(),
  }) {
    if (getPaymentMethodSuccess != null) {
      return getPaymentMethodSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentMethodSuccess implements OrderState {
  const factory _GetPaymentMethodSuccess(List<PaymentMethod> response) =
      _$_GetPaymentMethodSuccess;

  List<PaymentMethod> get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetPaymentMethodSuccessCopyWith<_GetPaymentMethodSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GeliveryInquirySuccessCopyWith<$Res> {
  factory _$GeliveryInquirySuccessCopyWith(_GeliveryInquirySuccess value,
          $Res Function(_GeliveryInquirySuccess) then) =
      __$GeliveryInquirySuccessCopyWithImpl<$Res>;
  $Res call({List<DeliveryMethod> response});
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
              as List<DeliveryMethod>,
    ));
  }
}

/// @nodoc

class _$_GeliveryInquirySuccess implements _GeliveryInquirySuccess {
  const _$_GeliveryInquirySuccess(this.response);

  @override
  final List<DeliveryMethod> response;

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
    required TResult Function(Exception message) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethod> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethod> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
  }) {
    return deliveryInquirySuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(Exception message)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethod> response)? getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethod> response)? deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
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
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
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
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
    required TResult orElse(),
  }) {
    if (deliveryInquirySuccess != null) {
      return deliveryInquirySuccess(this);
    }
    return orElse();
  }
}

abstract class _GeliveryInquirySuccess implements OrderState {
  const factory _GeliveryInquirySuccess(List<DeliveryMethod> response) =
      _$_GeliveryInquirySuccess;

  List<DeliveryMethod> get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GeliveryInquirySuccessCopyWith<_GeliveryInquirySuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateCartSessionSuccessCopyWith<$Res> {
  factory _$CreateCartSessionSuccessCopyWith(_CreateCartSessionSuccess value,
          $Res Function(_CreateCartSessionSuccess) then) =
      __$CreateCartSessionSuccessCopyWithImpl<$Res>;
  $Res call({CartSessionResponse response});
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
    required TResult Function(Exception message) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethod> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethod> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
  }) {
    return createCartSessionSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(Exception message)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethod> response)? getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethod> response)? deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
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
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
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
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
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
abstract class _$UpdateCartSessionSuccessCopyWith<$Res> {
  factory _$UpdateCartSessionSuccessCopyWith(_UpdateCartSessionSuccess value,
          $Res Function(_UpdateCartSessionSuccess) then) =
      __$UpdateCartSessionSuccessCopyWithImpl<$Res>;
  $Res call({CartSessionResponse response});
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
    required TResult Function(Exception message) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethod> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethod> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
  }) {
    return updateCartSessionSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(Exception message)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethod> response)? getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethod> response)? deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
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
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
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
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
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
    required TResult Function(Exception message) loadFailure,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByLocationSuccess,
    required TResult Function(List<OutletCategoryDataResponse> response)
        getOutletByCategorySuccess,
    required TResult Function(List<PromoOutlet> response) getPromoOutletSuccess,
    required TResult Function(List<HotPromo> response) getHotPromoSuccess,
    required TResult Function(DetailOutletDataResponse response)
        getDetailOutletSuccess,
    required TResult Function(List<PaymentMethod> response)
        getPaymentMethodSuccess,
    required TResult Function(List<DeliveryMethod> response)
        deliveryInquirySuccess,
    required TResult Function(CartSessionResponse response)
        createCartSessionSuccess,
    required TResult Function(CartSessionResponse response)
        updateCartSessionSuccess,
    required TResult Function(CheckoutResponse response) checkoutCartSuccess,
  }) {
    return checkoutCartSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? loadSuccess,
    TResult Function(Exception message)? loadFailure,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByLocationSuccess,
    TResult Function(List<OutletCategoryDataResponse> response)?
        getOutletByCategorySuccess,
    TResult Function(List<PromoOutlet> response)? getPromoOutletSuccess,
    TResult Function(List<HotPromo> response)? getHotPromoSuccess,
    TResult Function(DetailOutletDataResponse response)? getDetailOutletSuccess,
    TResult Function(List<PaymentMethod> response)? getPaymentMethodSuccess,
    TResult Function(List<DeliveryMethod> response)? deliveryInquirySuccess,
    TResult Function(CartSessionResponse response)? createCartSessionSuccess,
    TResult Function(CartSessionResponse response)? updateCartSessionSuccess,
    TResult Function(CheckoutResponse response)? checkoutCartSuccess,
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
    required TResult Function(_GetPromoOutletSuccess value)
        getPromoOutletSuccess,
    required TResult Function(_GetHotPromoSuccess value) getHotPromoSuccess,
    required TResult Function(_GetDetailOutletSuccess value)
        getDetailOutletSuccess,
    required TResult Function(_GetPaymentMethodSuccess value)
        getPaymentMethodSuccess,
    required TResult Function(_GeliveryInquirySuccess value)
        deliveryInquirySuccess,
    required TResult Function(_CreateCartSessionSuccess value)
        createCartSessionSuccess,
    required TResult Function(_UpdateCartSessionSuccess value)
        updateCartSessionSuccess,
    required TResult Function(_CheckoutCartSuccess value) checkoutCartSuccess,
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
    TResult Function(_GetPromoOutletSuccess value)? getPromoOutletSuccess,
    TResult Function(_GetHotPromoSuccess value)? getHotPromoSuccess,
    TResult Function(_GetDetailOutletSuccess value)? getDetailOutletSuccess,
    TResult Function(_GetPaymentMethodSuccess value)? getPaymentMethodSuccess,
    TResult Function(_GeliveryInquirySuccess value)? deliveryInquirySuccess,
    TResult Function(_CreateCartSessionSuccess value)? createCartSessionSuccess,
    TResult Function(_UpdateCartSessionSuccess value)? updateCartSessionSuccess,
    TResult Function(_CheckoutCartSuccess value)? checkoutCartSuccess,
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
