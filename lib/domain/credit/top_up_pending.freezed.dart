// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'top_up_pending.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopUpPending _$TopUpPendingFromJson(Map<String, dynamic> json) {
  return _TopUpPending.fromJson(json);
}

/// @nodoc
class _$TopUpPendingTearOff {
  const _$TopUpPendingTearOff();

  _TopUpPending call(
      {required String customerPhone,
      required String paymentType,
      required TopUpDetail detail,
      required String status,
      @JsonKey(name: 'is_delete') required bool isDelete,
      @JsonKey(name: 'created_date') required DateTime createdDate,
      required String billingId}) {
    return _TopUpPending(
      customerPhone: customerPhone,
      paymentType: paymentType,
      detail: detail,
      status: status,
      isDelete: isDelete,
      createdDate: createdDate,
      billingId: billingId,
    );
  }

  TopUpPending fromJson(Map<String, Object> json) {
    return TopUpPending.fromJson(json);
  }
}

/// @nodoc
const $TopUpPending = _$TopUpPendingTearOff();

/// @nodoc
mixin _$TopUpPending {
  String get customerPhone => throw _privateConstructorUsedError;
  String get paymentType => throw _privateConstructorUsedError;
  TopUpDetail get detail => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_delete')
  bool get isDelete => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_date')
  DateTime get createdDate => throw _privateConstructorUsedError;
  String get billingId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopUpPendingCopyWith<TopUpPending> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopUpPendingCopyWith<$Res> {
  factory $TopUpPendingCopyWith(
          TopUpPending value, $Res Function(TopUpPending) then) =
      _$TopUpPendingCopyWithImpl<$Res>;
  $Res call(
      {String customerPhone,
      String paymentType,
      TopUpDetail detail,
      String status,
      @JsonKey(name: 'is_delete') bool isDelete,
      @JsonKey(name: 'created_date') DateTime createdDate,
      String billingId});

  $TopUpDetailCopyWith<$Res> get detail;
}

/// @nodoc
class _$TopUpPendingCopyWithImpl<$Res> implements $TopUpPendingCopyWith<$Res> {
  _$TopUpPendingCopyWithImpl(this._value, this._then);

  final TopUpPending _value;
  // ignore: unused_field
  final $Res Function(TopUpPending) _then;

  @override
  $Res call({
    Object? customerPhone = freezed,
    Object? paymentType = freezed,
    Object? detail = freezed,
    Object? status = freezed,
    Object? isDelete = freezed,
    Object? createdDate = freezed,
    Object? billingId = freezed,
  }) {
    return _then(_value.copyWith(
      customerPhone: customerPhone == freezed
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      paymentType: paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as TopUpDetail,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isDelete: isDelete == freezed
          ? _value.isDelete
          : isDelete // ignore: cast_nullable_to_non_nullable
              as bool,
      createdDate: createdDate == freezed
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      billingId: billingId == freezed
          ? _value.billingId
          : billingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $TopUpDetailCopyWith<$Res> get detail {
    return $TopUpDetailCopyWith<$Res>(_value.detail, (value) {
      return _then(_value.copyWith(detail: value));
    });
  }
}

/// @nodoc
abstract class _$TopUpPendingCopyWith<$Res>
    implements $TopUpPendingCopyWith<$Res> {
  factory _$TopUpPendingCopyWith(
          _TopUpPending value, $Res Function(_TopUpPending) then) =
      __$TopUpPendingCopyWithImpl<$Res>;
  @override
  $Res call(
      {String customerPhone,
      String paymentType,
      TopUpDetail detail,
      String status,
      @JsonKey(name: 'is_delete') bool isDelete,
      @JsonKey(name: 'created_date') DateTime createdDate,
      String billingId});

  @override
  $TopUpDetailCopyWith<$Res> get detail;
}

/// @nodoc
class __$TopUpPendingCopyWithImpl<$Res> extends _$TopUpPendingCopyWithImpl<$Res>
    implements _$TopUpPendingCopyWith<$Res> {
  __$TopUpPendingCopyWithImpl(
      _TopUpPending _value, $Res Function(_TopUpPending) _then)
      : super(_value, (v) => _then(v as _TopUpPending));

  @override
  _TopUpPending get _value => super._value as _TopUpPending;

  @override
  $Res call({
    Object? customerPhone = freezed,
    Object? paymentType = freezed,
    Object? detail = freezed,
    Object? status = freezed,
    Object? isDelete = freezed,
    Object? createdDate = freezed,
    Object? billingId = freezed,
  }) {
    return _then(_TopUpPending(
      customerPhone: customerPhone == freezed
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      paymentType: paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as TopUpDetail,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isDelete: isDelete == freezed
          ? _value.isDelete
          : isDelete // ignore: cast_nullable_to_non_nullable
              as bool,
      createdDate: createdDate == freezed
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      billingId: billingId == freezed
          ? _value.billingId
          : billingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopUpPending implements _TopUpPending {
  const _$_TopUpPending(
      {required this.customerPhone,
      required this.paymentType,
      required this.detail,
      required this.status,
      @JsonKey(name: 'is_delete') required this.isDelete,
      @JsonKey(name: 'created_date') required this.createdDate,
      required this.billingId});

  factory _$_TopUpPending.fromJson(Map<String, dynamic> json) =>
      _$$_TopUpPendingFromJson(json);

  @override
  final String customerPhone;
  @override
  final String paymentType;
  @override
  final TopUpDetail detail;
  @override
  final String status;
  @override
  @JsonKey(name: 'is_delete')
  final bool isDelete;
  @override
  @JsonKey(name: 'created_date')
  final DateTime createdDate;
  @override
  final String billingId;

  @override
  String toString() {
    return 'TopUpPending(customerPhone: $customerPhone, paymentType: $paymentType, detail: $detail, status: $status, isDelete: $isDelete, createdDate: $createdDate, billingId: $billingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TopUpPending &&
            (identical(other.customerPhone, customerPhone) ||
                const DeepCollectionEquality()
                    .equals(other.customerPhone, customerPhone)) &&
            (identical(other.paymentType, paymentType) ||
                const DeepCollectionEquality()
                    .equals(other.paymentType, paymentType)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.isDelete, isDelete) ||
                const DeepCollectionEquality()
                    .equals(other.isDelete, isDelete)) &&
            (identical(other.createdDate, createdDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdDate, createdDate)) &&
            (identical(other.billingId, billingId) ||
                const DeepCollectionEquality()
                    .equals(other.billingId, billingId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(customerPhone) ^
      const DeepCollectionEquality().hash(paymentType) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(isDelete) ^
      const DeepCollectionEquality().hash(createdDate) ^
      const DeepCollectionEquality().hash(billingId);

  @JsonKey(ignore: true)
  @override
  _$TopUpPendingCopyWith<_TopUpPending> get copyWith =>
      __$TopUpPendingCopyWithImpl<_TopUpPending>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopUpPendingToJson(this);
  }
}

abstract class _TopUpPending implements TopUpPending {
  const factory _TopUpPending(
      {required String customerPhone,
      required String paymentType,
      required TopUpDetail detail,
      required String status,
      @JsonKey(name: 'is_delete') required bool isDelete,
      @JsonKey(name: 'created_date') required DateTime createdDate,
      required String billingId}) = _$_TopUpPending;

  factory _TopUpPending.fromJson(Map<String, dynamic> json) =
      _$_TopUpPending.fromJson;

  @override
  String get customerPhone => throw _privateConstructorUsedError;
  @override
  String get paymentType => throw _privateConstructorUsedError;
  @override
  TopUpDetail get detail => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_delete')
  bool get isDelete => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_date')
  DateTime get createdDate => throw _privateConstructorUsedError;
  @override
  String get billingId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TopUpPendingCopyWith<_TopUpPending> get copyWith =>
      throw _privateConstructorUsedError;
}

TopUpDetail _$TopUpDetailFromJson(Map<String, dynamic> json) {
  return _TopUpDetail.fromJson(json);
}

/// @nodoc
class _$TopUpDetailTearOff {
  const _$TopUpDetailTearOff();

  _TopUpDetail call(
      {@JsonKey(includeIfNull: true) String? orderId,
      @JsonKey(includeIfNull: true) String? title,
      @JsonKey(includeIfNull: true) String? vaNumber,
      @JsonKey(includeIfNull: true) String? amount,
      @JsonKey(includeIfNull: true) String? fee,
      @JsonKey(includeIfNull: true) String? finalAmount,
      @JsonKey(includeIfNull: true) String? serviceProvider,
      @JsonKey(includeIfNull: true) DateTime? formattedTransactionDate,
      @JsonKey(includeIfNull: true) String? bankAccName,
      @JsonKey(includeIfNull: true) String? bankName,
      @JsonKey(includeIfNull: true) String? formattedUniqueAmount,
      @JsonKey(includeIfNull: true) String? bankAccNo,
      @JsonKey(includeIfNull: true) DateTime? transactionDate,
      @JsonKey(includeIfNull: true) String? uniqueAmount,
      required int expires,
      required DateTime expiresAt}) {
    return _TopUpDetail(
      orderId: orderId,
      title: title,
      vaNumber: vaNumber,
      amount: amount,
      fee: fee,
      finalAmount: finalAmount,
      serviceProvider: serviceProvider,
      formattedTransactionDate: formattedTransactionDate,
      bankAccName: bankAccName,
      bankName: bankName,
      formattedUniqueAmount: formattedUniqueAmount,
      bankAccNo: bankAccNo,
      transactionDate: transactionDate,
      uniqueAmount: uniqueAmount,
      expires: expires,
      expiresAt: expiresAt,
    );
  }

  TopUpDetail fromJson(Map<String, Object> json) {
    return TopUpDetail.fromJson(json);
  }
}

/// @nodoc
const $TopUpDetail = _$TopUpDetailTearOff();

/// @nodoc
mixin _$TopUpDetail {
  @JsonKey(includeIfNull: true)
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  String? get vaNumber => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  String? get fee => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  String? get finalAmount => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  String? get serviceProvider => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  DateTime? get formattedTransactionDate => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  String? get bankAccName => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  String? get bankName => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  String? get formattedUniqueAmount => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  String? get bankAccNo => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  DateTime? get transactionDate => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true)
  String? get uniqueAmount => throw _privateConstructorUsedError;
  int get expires => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopUpDetailCopyWith<TopUpDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopUpDetailCopyWith<$Res> {
  factory $TopUpDetailCopyWith(
          TopUpDetail value, $Res Function(TopUpDetail) then) =
      _$TopUpDetailCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: true) String? orderId,
      @JsonKey(includeIfNull: true) String? title,
      @JsonKey(includeIfNull: true) String? vaNumber,
      @JsonKey(includeIfNull: true) String? amount,
      @JsonKey(includeIfNull: true) String? fee,
      @JsonKey(includeIfNull: true) String? finalAmount,
      @JsonKey(includeIfNull: true) String? serviceProvider,
      @JsonKey(includeIfNull: true) DateTime? formattedTransactionDate,
      @JsonKey(includeIfNull: true) String? bankAccName,
      @JsonKey(includeIfNull: true) String? bankName,
      @JsonKey(includeIfNull: true) String? formattedUniqueAmount,
      @JsonKey(includeIfNull: true) String? bankAccNo,
      @JsonKey(includeIfNull: true) DateTime? transactionDate,
      @JsonKey(includeIfNull: true) String? uniqueAmount,
      int expires,
      DateTime expiresAt});
}

/// @nodoc
class _$TopUpDetailCopyWithImpl<$Res> implements $TopUpDetailCopyWith<$Res> {
  _$TopUpDetailCopyWithImpl(this._value, this._then);

  final TopUpDetail _value;
  // ignore: unused_field
  final $Res Function(TopUpDetail) _then;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? title = freezed,
    Object? vaNumber = freezed,
    Object? amount = freezed,
    Object? fee = freezed,
    Object? finalAmount = freezed,
    Object? serviceProvider = freezed,
    Object? formattedTransactionDate = freezed,
    Object? bankAccName = freezed,
    Object? bankName = freezed,
    Object? formattedUniqueAmount = freezed,
    Object? bankAccNo = freezed,
    Object? transactionDate = freezed,
    Object? uniqueAmount = freezed,
    Object? expires = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      vaNumber: vaNumber == freezed
          ? _value.vaNumber
          : vaNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String?,
      finalAmount: finalAmount == freezed
          ? _value.finalAmount
          : finalAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceProvider: serviceProvider == freezed
          ? _value.serviceProvider
          : serviceProvider // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedTransactionDate: formattedTransactionDate == freezed
          ? _value.formattedTransactionDate
          : formattedTransactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bankAccName: bankAccName == freezed
          ? _value.bankAccName
          : bankAccName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: bankName == freezed
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedUniqueAmount: formattedUniqueAmount == freezed
          ? _value.formattedUniqueAmount
          : formattedUniqueAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccNo: bankAccNo == freezed
          ? _value.bankAccNo
          : bankAccNo // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionDate: transactionDate == freezed
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uniqueAmount: uniqueAmount == freezed
          ? _value.uniqueAmount
          : uniqueAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      expires: expires == freezed
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$TopUpDetailCopyWith<$Res>
    implements $TopUpDetailCopyWith<$Res> {
  factory _$TopUpDetailCopyWith(
          _TopUpDetail value, $Res Function(_TopUpDetail) then) =
      __$TopUpDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: true) String? orderId,
      @JsonKey(includeIfNull: true) String? title,
      @JsonKey(includeIfNull: true) String? vaNumber,
      @JsonKey(includeIfNull: true) String? amount,
      @JsonKey(includeIfNull: true) String? fee,
      @JsonKey(includeIfNull: true) String? finalAmount,
      @JsonKey(includeIfNull: true) String? serviceProvider,
      @JsonKey(includeIfNull: true) DateTime? formattedTransactionDate,
      @JsonKey(includeIfNull: true) String? bankAccName,
      @JsonKey(includeIfNull: true) String? bankName,
      @JsonKey(includeIfNull: true) String? formattedUniqueAmount,
      @JsonKey(includeIfNull: true) String? bankAccNo,
      @JsonKey(includeIfNull: true) DateTime? transactionDate,
      @JsonKey(includeIfNull: true) String? uniqueAmount,
      int expires,
      DateTime expiresAt});
}

/// @nodoc
class __$TopUpDetailCopyWithImpl<$Res> extends _$TopUpDetailCopyWithImpl<$Res>
    implements _$TopUpDetailCopyWith<$Res> {
  __$TopUpDetailCopyWithImpl(
      _TopUpDetail _value, $Res Function(_TopUpDetail) _then)
      : super(_value, (v) => _then(v as _TopUpDetail));

  @override
  _TopUpDetail get _value => super._value as _TopUpDetail;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? title = freezed,
    Object? vaNumber = freezed,
    Object? amount = freezed,
    Object? fee = freezed,
    Object? finalAmount = freezed,
    Object? serviceProvider = freezed,
    Object? formattedTransactionDate = freezed,
    Object? bankAccName = freezed,
    Object? bankName = freezed,
    Object? formattedUniqueAmount = freezed,
    Object? bankAccNo = freezed,
    Object? transactionDate = freezed,
    Object? uniqueAmount = freezed,
    Object? expires = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_TopUpDetail(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      vaNumber: vaNumber == freezed
          ? _value.vaNumber
          : vaNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String?,
      finalAmount: finalAmount == freezed
          ? _value.finalAmount
          : finalAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceProvider: serviceProvider == freezed
          ? _value.serviceProvider
          : serviceProvider // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedTransactionDate: formattedTransactionDate == freezed
          ? _value.formattedTransactionDate
          : formattedTransactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bankAccName: bankAccName == freezed
          ? _value.bankAccName
          : bankAccName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: bankName == freezed
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedUniqueAmount: formattedUniqueAmount == freezed
          ? _value.formattedUniqueAmount
          : formattedUniqueAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccNo: bankAccNo == freezed
          ? _value.bankAccNo
          : bankAccNo // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionDate: transactionDate == freezed
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uniqueAmount: uniqueAmount == freezed
          ? _value.uniqueAmount
          : uniqueAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      expires: expires == freezed
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopUpDetail implements _TopUpDetail {
  const _$_TopUpDetail(
      {@JsonKey(includeIfNull: true) this.orderId,
      @JsonKey(includeIfNull: true) this.title,
      @JsonKey(includeIfNull: true) this.vaNumber,
      @JsonKey(includeIfNull: true) this.amount,
      @JsonKey(includeIfNull: true) this.fee,
      @JsonKey(includeIfNull: true) this.finalAmount,
      @JsonKey(includeIfNull: true) this.serviceProvider,
      @JsonKey(includeIfNull: true) this.formattedTransactionDate,
      @JsonKey(includeIfNull: true) this.bankAccName,
      @JsonKey(includeIfNull: true) this.bankName,
      @JsonKey(includeIfNull: true) this.formattedUniqueAmount,
      @JsonKey(includeIfNull: true) this.bankAccNo,
      @JsonKey(includeIfNull: true) this.transactionDate,
      @JsonKey(includeIfNull: true) this.uniqueAmount,
      required this.expires,
      required this.expiresAt});

  factory _$_TopUpDetail.fromJson(Map<String, dynamic> json) =>
      _$$_TopUpDetailFromJson(json);

  @override
  @JsonKey(includeIfNull: true)
  final String? orderId;
  @override
  @JsonKey(includeIfNull: true)
  final String? title;
  @override
  @JsonKey(includeIfNull: true)
  final String? vaNumber;
  @override
  @JsonKey(includeIfNull: true)
  final String? amount;
  @override
  @JsonKey(includeIfNull: true)
  final String? fee;
  @override
  @JsonKey(includeIfNull: true)
  final String? finalAmount;
  @override
  @JsonKey(includeIfNull: true)
  final String? serviceProvider;
  @override
  @JsonKey(includeIfNull: true)
  final DateTime? formattedTransactionDate;
  @override
  @JsonKey(includeIfNull: true)
  final String? bankAccName;
  @override
  @JsonKey(includeIfNull: true)
  final String? bankName;
  @override
  @JsonKey(includeIfNull: true)
  final String? formattedUniqueAmount;
  @override
  @JsonKey(includeIfNull: true)
  final String? bankAccNo;
  @override
  @JsonKey(includeIfNull: true)
  final DateTime? transactionDate;
  @override
  @JsonKey(includeIfNull: true)
  final String? uniqueAmount;
  @override
  final int expires;
  @override
  final DateTime expiresAt;

  @override
  String toString() {
    return 'TopUpDetail(orderId: $orderId, title: $title, vaNumber: $vaNumber, amount: $amount, fee: $fee, finalAmount: $finalAmount, serviceProvider: $serviceProvider, formattedTransactionDate: $formattedTransactionDate, bankAccName: $bankAccName, bankName: $bankName, formattedUniqueAmount: $formattedUniqueAmount, bankAccNo: $bankAccNo, transactionDate: $transactionDate, uniqueAmount: $uniqueAmount, expires: $expires, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TopUpDetail &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.vaNumber, vaNumber) ||
                const DeepCollectionEquality()
                    .equals(other.vaNumber, vaNumber)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.fee, fee) ||
                const DeepCollectionEquality().equals(other.fee, fee)) &&
            (identical(other.finalAmount, finalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.finalAmount, finalAmount)) &&
            (identical(other.serviceProvider, serviceProvider) ||
                const DeepCollectionEquality()
                    .equals(other.serviceProvider, serviceProvider)) &&
            (identical(
                    other.formattedTransactionDate, formattedTransactionDate) ||
                const DeepCollectionEquality().equals(
                    other.formattedTransactionDate,
                    formattedTransactionDate)) &&
            (identical(other.bankAccName, bankAccName) ||
                const DeepCollectionEquality()
                    .equals(other.bankAccName, bankAccName)) &&
            (identical(other.bankName, bankName) ||
                const DeepCollectionEquality()
                    .equals(other.bankName, bankName)) &&
            (identical(other.formattedUniqueAmount, formattedUniqueAmount) ||
                const DeepCollectionEquality().equals(
                    other.formattedUniqueAmount, formattedUniqueAmount)) &&
            (identical(other.bankAccNo, bankAccNo) ||
                const DeepCollectionEquality()
                    .equals(other.bankAccNo, bankAccNo)) &&
            (identical(other.transactionDate, transactionDate) ||
                const DeepCollectionEquality()
                    .equals(other.transactionDate, transactionDate)) &&
            (identical(other.uniqueAmount, uniqueAmount) ||
                const DeepCollectionEquality()
                    .equals(other.uniqueAmount, uniqueAmount)) &&
            (identical(other.expires, expires) ||
                const DeepCollectionEquality()
                    .equals(other.expires, expires)) &&
            (identical(other.expiresAt, expiresAt) ||
                const DeepCollectionEquality()
                    .equals(other.expiresAt, expiresAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(vaNumber) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(fee) ^
      const DeepCollectionEquality().hash(finalAmount) ^
      const DeepCollectionEquality().hash(serviceProvider) ^
      const DeepCollectionEquality().hash(formattedTransactionDate) ^
      const DeepCollectionEquality().hash(bankAccName) ^
      const DeepCollectionEquality().hash(bankName) ^
      const DeepCollectionEquality().hash(formattedUniqueAmount) ^
      const DeepCollectionEquality().hash(bankAccNo) ^
      const DeepCollectionEquality().hash(transactionDate) ^
      const DeepCollectionEquality().hash(uniqueAmount) ^
      const DeepCollectionEquality().hash(expires) ^
      const DeepCollectionEquality().hash(expiresAt);

  @JsonKey(ignore: true)
  @override
  _$TopUpDetailCopyWith<_TopUpDetail> get copyWith =>
      __$TopUpDetailCopyWithImpl<_TopUpDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopUpDetailToJson(this);
  }
}

abstract class _TopUpDetail implements TopUpDetail {
  const factory _TopUpDetail(
      {@JsonKey(includeIfNull: true) String? orderId,
      @JsonKey(includeIfNull: true) String? title,
      @JsonKey(includeIfNull: true) String? vaNumber,
      @JsonKey(includeIfNull: true) String? amount,
      @JsonKey(includeIfNull: true) String? fee,
      @JsonKey(includeIfNull: true) String? finalAmount,
      @JsonKey(includeIfNull: true) String? serviceProvider,
      @JsonKey(includeIfNull: true) DateTime? formattedTransactionDate,
      @JsonKey(includeIfNull: true) String? bankAccName,
      @JsonKey(includeIfNull: true) String? bankName,
      @JsonKey(includeIfNull: true) String? formattedUniqueAmount,
      @JsonKey(includeIfNull: true) String? bankAccNo,
      @JsonKey(includeIfNull: true) DateTime? transactionDate,
      @JsonKey(includeIfNull: true) String? uniqueAmount,
      required int expires,
      required DateTime expiresAt}) = _$_TopUpDetail;

  factory _TopUpDetail.fromJson(Map<String, dynamic> json) =
      _$_TopUpDetail.fromJson;

  @override
  @JsonKey(includeIfNull: true)
  String? get orderId => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: true)
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: true)
  String? get vaNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: true)
  String? get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: true)
  String? get fee => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: true)
  String? get finalAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: true)
  String? get serviceProvider => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: true)
  DateTime? get formattedTransactionDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: true)
  String? get bankAccName => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: true)
  String? get bankName => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: true)
  String? get formattedUniqueAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: true)
  String? get bankAccNo => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: true)
  DateTime? get transactionDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: true)
  String? get uniqueAmount => throw _privateConstructorUsedError;
  @override
  int get expires => throw _privateConstructorUsedError;
  @override
  DateTime get expiresAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TopUpDetailCopyWith<_TopUpDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
