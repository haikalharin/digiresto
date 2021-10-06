// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentHistory _$PaymentHistoryFromJson(Map<String, dynamic> json) {
  return _PaymentHistory.fromJson(json);
}

/// @nodoc
class _$PaymentHistoryTearOff {
  const _$PaymentHistoryTearOff();

  _PaymentHistory call(
      {required int pageSize,
      required int onPage,
      required String status,
      required int totalCount,
      required String creditLimit,
      required String accountBalance,
      required List<PaymentHistoryDetail> listAccountHistoryDetails}) {
    return _PaymentHistory(
      pageSize: pageSize,
      onPage: onPage,
      status: status,
      totalCount: totalCount,
      creditLimit: creditLimit,
      accountBalance: accountBalance,
      listAccountHistoryDetails: listAccountHistoryDetails,
    );
  }

  PaymentHistory fromJson(Map<String, Object> json) {
    return PaymentHistory.fromJson(json);
  }
}

/// @nodoc
const $PaymentHistory = _$PaymentHistoryTearOff();

/// @nodoc
mixin _$PaymentHistory {
  int get pageSize => throw _privateConstructorUsedError;
  int get onPage => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  String get creditLimit => throw _privateConstructorUsedError;
  String get accountBalance => throw _privateConstructorUsedError;
  List<PaymentHistoryDetail> get listAccountHistoryDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentHistoryCopyWith<PaymentHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentHistoryCopyWith<$Res> {
  factory $PaymentHistoryCopyWith(
          PaymentHistory value, $Res Function(PaymentHistory) then) =
      _$PaymentHistoryCopyWithImpl<$Res>;
  $Res call(
      {int pageSize,
      int onPage,
      String status,
      int totalCount,
      String creditLimit,
      String accountBalance,
      List<PaymentHistoryDetail> listAccountHistoryDetails});
}

/// @nodoc
class _$PaymentHistoryCopyWithImpl<$Res>
    implements $PaymentHistoryCopyWith<$Res> {
  _$PaymentHistoryCopyWithImpl(this._value, this._then);

  final PaymentHistory _value;
  // ignore: unused_field
  final $Res Function(PaymentHistory) _then;

  @override
  $Res call({
    Object? pageSize = freezed,
    Object? onPage = freezed,
    Object? status = freezed,
    Object? totalCount = freezed,
    Object? creditLimit = freezed,
    Object? accountBalance = freezed,
    Object? listAccountHistoryDetails = freezed,
  }) {
    return _then(_value.copyWith(
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      onPage: onPage == freezed
          ? _value.onPage
          : onPage // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      creditLimit: creditLimit == freezed
          ? _value.creditLimit
          : creditLimit // ignore: cast_nullable_to_non_nullable
              as String,
      accountBalance: accountBalance == freezed
          ? _value.accountBalance
          : accountBalance // ignore: cast_nullable_to_non_nullable
              as String,
      listAccountHistoryDetails: listAccountHistoryDetails == freezed
          ? _value.listAccountHistoryDetails
          : listAccountHistoryDetails // ignore: cast_nullable_to_non_nullable
              as List<PaymentHistoryDetail>,
    ));
  }
}

/// @nodoc
abstract class _$PaymentHistoryCopyWith<$Res>
    implements $PaymentHistoryCopyWith<$Res> {
  factory _$PaymentHistoryCopyWith(
          _PaymentHistory value, $Res Function(_PaymentHistory) then) =
      __$PaymentHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int pageSize,
      int onPage,
      String status,
      int totalCount,
      String creditLimit,
      String accountBalance,
      List<PaymentHistoryDetail> listAccountHistoryDetails});
}

/// @nodoc
class __$PaymentHistoryCopyWithImpl<$Res>
    extends _$PaymentHistoryCopyWithImpl<$Res>
    implements _$PaymentHistoryCopyWith<$Res> {
  __$PaymentHistoryCopyWithImpl(
      _PaymentHistory _value, $Res Function(_PaymentHistory) _then)
      : super(_value, (v) => _then(v as _PaymentHistory));

  @override
  _PaymentHistory get _value => super._value as _PaymentHistory;

  @override
  $Res call({
    Object? pageSize = freezed,
    Object? onPage = freezed,
    Object? status = freezed,
    Object? totalCount = freezed,
    Object? creditLimit = freezed,
    Object? accountBalance = freezed,
    Object? listAccountHistoryDetails = freezed,
  }) {
    return _then(_PaymentHistory(
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      onPage: onPage == freezed
          ? _value.onPage
          : onPage // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      creditLimit: creditLimit == freezed
          ? _value.creditLimit
          : creditLimit // ignore: cast_nullable_to_non_nullable
              as String,
      accountBalance: accountBalance == freezed
          ? _value.accountBalance
          : accountBalance // ignore: cast_nullable_to_non_nullable
              as String,
      listAccountHistoryDetails: listAccountHistoryDetails == freezed
          ? _value.listAccountHistoryDetails
          : listAccountHistoryDetails // ignore: cast_nullable_to_non_nullable
              as List<PaymentHistoryDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentHistory implements _PaymentHistory {
  const _$_PaymentHistory(
      {required this.pageSize,
      required this.onPage,
      required this.status,
      required this.totalCount,
      required this.creditLimit,
      required this.accountBalance,
      required this.listAccountHistoryDetails});

  factory _$_PaymentHistory.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentHistoryFromJson(json);

  @override
  final int pageSize;
  @override
  final int onPage;
  @override
  final String status;
  @override
  final int totalCount;
  @override
  final String creditLimit;
  @override
  final String accountBalance;
  @override
  final List<PaymentHistoryDetail> listAccountHistoryDetails;

  @override
  String toString() {
    return 'PaymentHistory(pageSize: $pageSize, onPage: $onPage, status: $status, totalCount: $totalCount, creditLimit: $creditLimit, accountBalance: $accountBalance, listAccountHistoryDetails: $listAccountHistoryDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentHistory &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality()
                    .equals(other.pageSize, pageSize)) &&
            (identical(other.onPage, onPage) ||
                const DeepCollectionEquality().equals(other.onPage, onPage)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.creditLimit, creditLimit) ||
                const DeepCollectionEquality()
                    .equals(other.creditLimit, creditLimit)) &&
            (identical(other.accountBalance, accountBalance) ||
                const DeepCollectionEquality()
                    .equals(other.accountBalance, accountBalance)) &&
            (identical(other.listAccountHistoryDetails,
                    listAccountHistoryDetails) ||
                const DeepCollectionEquality().equals(
                    other.listAccountHistoryDetails,
                    listAccountHistoryDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(onPage) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(creditLimit) ^
      const DeepCollectionEquality().hash(accountBalance) ^
      const DeepCollectionEquality().hash(listAccountHistoryDetails);

  @JsonKey(ignore: true)
  @override
  _$PaymentHistoryCopyWith<_PaymentHistory> get copyWith =>
      __$PaymentHistoryCopyWithImpl<_PaymentHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentHistoryToJson(this);
  }
}

abstract class _PaymentHistory implements PaymentHistory {
  const factory _PaymentHistory(
          {required int pageSize,
          required int onPage,
          required String status,
          required int totalCount,
          required String creditLimit,
          required String accountBalance,
          required List<PaymentHistoryDetail> listAccountHistoryDetails}) =
      _$_PaymentHistory;

  factory _PaymentHistory.fromJson(Map<String, dynamic> json) =
      _$_PaymentHistory.fromJson;

  @override
  int get pageSize => throw _privateConstructorUsedError;
  @override
  int get onPage => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  int get totalCount => throw _privateConstructorUsedError;
  @override
  String get creditLimit => throw _privateConstructorUsedError;
  @override
  String get accountBalance => throw _privateConstructorUsedError;
  @override
  List<PaymentHistoryDetail> get listAccountHistoryDetails =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaymentHistoryCopyWith<_PaymentHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentHistoryDetail _$PaymentHistoryDetailFromJson(Map<String, dynamic> json) {
  return _PaymentHistoryDetail.fromJson(json);
}

/// @nodoc
class _$PaymentHistoryDetailTearOff {
  const _$PaymentHistoryDetailTearOff();

  _PaymentHistoryDetail call(
      {required int transferId,
      required String description,
      required String amount,
      required String status,
      required String transactionNumber,
      required String transferType,
      required String transactionDate,
      required String fee,
      required String transferTypeName,
      required String transferTypeDescription,
      required String type,
      required String groupPayment,
      required bool needReceiptInquiry}) {
    return _PaymentHistoryDetail(
      transferId: transferId,
      description: description,
      amount: amount,
      status: status,
      transactionNumber: transactionNumber,
      transferType: transferType,
      transactionDate: transactionDate,
      fee: fee,
      transferTypeName: transferTypeName,
      transferTypeDescription: transferTypeDescription,
      type: type,
      groupPayment: groupPayment,
      needReceiptInquiry: needReceiptInquiry,
    );
  }

  PaymentHistoryDetail fromJson(Map<String, Object> json) {
    return PaymentHistoryDetail.fromJson(json);
  }
}

/// @nodoc
const $PaymentHistoryDetail = _$PaymentHistoryDetailTearOff();

/// @nodoc
mixin _$PaymentHistoryDetail {
  int get transferId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get transactionNumber => throw _privateConstructorUsedError;
  String get transferType => throw _privateConstructorUsedError;
  String get transactionDate => throw _privateConstructorUsedError;
  String get fee => throw _privateConstructorUsedError;
  String get transferTypeName => throw _privateConstructorUsedError;
  String get transferTypeDescription => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get groupPayment => throw _privateConstructorUsedError;
  bool get needReceiptInquiry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentHistoryDetailCopyWith<PaymentHistoryDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentHistoryDetailCopyWith<$Res> {
  factory $PaymentHistoryDetailCopyWith(PaymentHistoryDetail value,
          $Res Function(PaymentHistoryDetail) then) =
      _$PaymentHistoryDetailCopyWithImpl<$Res>;
  $Res call(
      {int transferId,
      String description,
      String amount,
      String status,
      String transactionNumber,
      String transferType,
      String transactionDate,
      String fee,
      String transferTypeName,
      String transferTypeDescription,
      String type,
      String groupPayment,
      bool needReceiptInquiry});
}

/// @nodoc
class _$PaymentHistoryDetailCopyWithImpl<$Res>
    implements $PaymentHistoryDetailCopyWith<$Res> {
  _$PaymentHistoryDetailCopyWithImpl(this._value, this._then);

  final PaymentHistoryDetail _value;
  // ignore: unused_field
  final $Res Function(PaymentHistoryDetail) _then;

  @override
  $Res call({
    Object? transferId = freezed,
    Object? description = freezed,
    Object? amount = freezed,
    Object? status = freezed,
    Object? transactionNumber = freezed,
    Object? transferType = freezed,
    Object? transactionDate = freezed,
    Object? fee = freezed,
    Object? transferTypeName = freezed,
    Object? transferTypeDescription = freezed,
    Object? type = freezed,
    Object? groupPayment = freezed,
    Object? needReceiptInquiry = freezed,
  }) {
    return _then(_value.copyWith(
      transferId: transferId == freezed
          ? _value.transferId
          : transferId // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      transactionNumber: transactionNumber == freezed
          ? _value.transactionNumber
          : transactionNumber // ignore: cast_nullable_to_non_nullable
              as String,
      transferType: transferType == freezed
          ? _value.transferType
          : transferType // ignore: cast_nullable_to_non_nullable
              as String,
      transactionDate: transactionDate == freezed
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as String,
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String,
      transferTypeName: transferTypeName == freezed
          ? _value.transferTypeName
          : transferTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      transferTypeDescription: transferTypeDescription == freezed
          ? _value.transferTypeDescription
          : transferTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      groupPayment: groupPayment == freezed
          ? _value.groupPayment
          : groupPayment // ignore: cast_nullable_to_non_nullable
              as String,
      needReceiptInquiry: needReceiptInquiry == freezed
          ? _value.needReceiptInquiry
          : needReceiptInquiry // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PaymentHistoryDetailCopyWith<$Res>
    implements $PaymentHistoryDetailCopyWith<$Res> {
  factory _$PaymentHistoryDetailCopyWith(_PaymentHistoryDetail value,
          $Res Function(_PaymentHistoryDetail) then) =
      __$PaymentHistoryDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {int transferId,
      String description,
      String amount,
      String status,
      String transactionNumber,
      String transferType,
      String transactionDate,
      String fee,
      String transferTypeName,
      String transferTypeDescription,
      String type,
      String groupPayment,
      bool needReceiptInquiry});
}

/// @nodoc
class __$PaymentHistoryDetailCopyWithImpl<$Res>
    extends _$PaymentHistoryDetailCopyWithImpl<$Res>
    implements _$PaymentHistoryDetailCopyWith<$Res> {
  __$PaymentHistoryDetailCopyWithImpl(
      _PaymentHistoryDetail _value, $Res Function(_PaymentHistoryDetail) _then)
      : super(_value, (v) => _then(v as _PaymentHistoryDetail));

  @override
  _PaymentHistoryDetail get _value => super._value as _PaymentHistoryDetail;

  @override
  $Res call({
    Object? transferId = freezed,
    Object? description = freezed,
    Object? amount = freezed,
    Object? status = freezed,
    Object? transactionNumber = freezed,
    Object? transferType = freezed,
    Object? transactionDate = freezed,
    Object? fee = freezed,
    Object? transferTypeName = freezed,
    Object? transferTypeDescription = freezed,
    Object? type = freezed,
    Object? groupPayment = freezed,
    Object? needReceiptInquiry = freezed,
  }) {
    return _then(_PaymentHistoryDetail(
      transferId: transferId == freezed
          ? _value.transferId
          : transferId // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      transactionNumber: transactionNumber == freezed
          ? _value.transactionNumber
          : transactionNumber // ignore: cast_nullable_to_non_nullable
              as String,
      transferType: transferType == freezed
          ? _value.transferType
          : transferType // ignore: cast_nullable_to_non_nullable
              as String,
      transactionDate: transactionDate == freezed
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as String,
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String,
      transferTypeName: transferTypeName == freezed
          ? _value.transferTypeName
          : transferTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      transferTypeDescription: transferTypeDescription == freezed
          ? _value.transferTypeDescription
          : transferTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      groupPayment: groupPayment == freezed
          ? _value.groupPayment
          : groupPayment // ignore: cast_nullable_to_non_nullable
              as String,
      needReceiptInquiry: needReceiptInquiry == freezed
          ? _value.needReceiptInquiry
          : needReceiptInquiry // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentHistoryDetail implements _PaymentHistoryDetail {
  const _$_PaymentHistoryDetail(
      {required this.transferId,
      required this.description,
      required this.amount,
      required this.status,
      required this.transactionNumber,
      required this.transferType,
      required this.transactionDate,
      required this.fee,
      required this.transferTypeName,
      required this.transferTypeDescription,
      required this.type,
      required this.groupPayment,
      required this.needReceiptInquiry});

  factory _$_PaymentHistoryDetail.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentHistoryDetailFromJson(json);

  @override
  final int transferId;
  @override
  final String description;
  @override
  final String amount;
  @override
  final String status;
  @override
  final String transactionNumber;
  @override
  final String transferType;
  @override
  final String transactionDate;
  @override
  final String fee;
  @override
  final String transferTypeName;
  @override
  final String transferTypeDescription;
  @override
  final String type;
  @override
  final String groupPayment;
  @override
  final bool needReceiptInquiry;

  @override
  String toString() {
    return 'PaymentHistoryDetail(transferId: $transferId, description: $description, amount: $amount, status: $status, transactionNumber: $transactionNumber, transferType: $transferType, transactionDate: $transactionDate, fee: $fee, transferTypeName: $transferTypeName, transferTypeDescription: $transferTypeDescription, type: $type, groupPayment: $groupPayment, needReceiptInquiry: $needReceiptInquiry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentHistoryDetail &&
            (identical(other.transferId, transferId) ||
                const DeepCollectionEquality()
                    .equals(other.transferId, transferId)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.transactionNumber, transactionNumber) ||
                const DeepCollectionEquality()
                    .equals(other.transactionNumber, transactionNumber)) &&
            (identical(other.transferType, transferType) ||
                const DeepCollectionEquality()
                    .equals(other.transferType, transferType)) &&
            (identical(other.transactionDate, transactionDate) ||
                const DeepCollectionEquality()
                    .equals(other.transactionDate, transactionDate)) &&
            (identical(other.fee, fee) ||
                const DeepCollectionEquality().equals(other.fee, fee)) &&
            (identical(other.transferTypeName, transferTypeName) ||
                const DeepCollectionEquality()
                    .equals(other.transferTypeName, transferTypeName)) &&
            (identical(
                    other.transferTypeDescription, transferTypeDescription) ||
                const DeepCollectionEquality().equals(
                    other.transferTypeDescription, transferTypeDescription)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.groupPayment, groupPayment) ||
                const DeepCollectionEquality()
                    .equals(other.groupPayment, groupPayment)) &&
            (identical(other.needReceiptInquiry, needReceiptInquiry) ||
                const DeepCollectionEquality()
                    .equals(other.needReceiptInquiry, needReceiptInquiry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transferId) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(transactionNumber) ^
      const DeepCollectionEquality().hash(transferType) ^
      const DeepCollectionEquality().hash(transactionDate) ^
      const DeepCollectionEquality().hash(fee) ^
      const DeepCollectionEquality().hash(transferTypeName) ^
      const DeepCollectionEquality().hash(transferTypeDescription) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(groupPayment) ^
      const DeepCollectionEquality().hash(needReceiptInquiry);

  @JsonKey(ignore: true)
  @override
  _$PaymentHistoryDetailCopyWith<_PaymentHistoryDetail> get copyWith =>
      __$PaymentHistoryDetailCopyWithImpl<_PaymentHistoryDetail>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentHistoryDetailToJson(this);
  }
}

abstract class _PaymentHistoryDetail implements PaymentHistoryDetail {
  const factory _PaymentHistoryDetail(
      {required int transferId,
      required String description,
      required String amount,
      required String status,
      required String transactionNumber,
      required String transferType,
      required String transactionDate,
      required String fee,
      required String transferTypeName,
      required String transferTypeDescription,
      required String type,
      required String groupPayment,
      required bool needReceiptInquiry}) = _$_PaymentHistoryDetail;

  factory _PaymentHistoryDetail.fromJson(Map<String, dynamic> json) =
      _$_PaymentHistoryDetail.fromJson;

  @override
  int get transferId => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get amount => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String get transactionNumber => throw _privateConstructorUsedError;
  @override
  String get transferType => throw _privateConstructorUsedError;
  @override
  String get transactionDate => throw _privateConstructorUsedError;
  @override
  String get fee => throw _privateConstructorUsedError;
  @override
  String get transferTypeName => throw _privateConstructorUsedError;
  @override
  String get transferTypeDescription => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  String get groupPayment => throw _privateConstructorUsedError;
  @override
  bool get needReceiptInquiry => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaymentHistoryDetailCopyWith<_PaymentHistoryDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
