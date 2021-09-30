// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationEventTearOff {
  const _$NotificationEventTearOff();

  _NewNotification newNotification(NotificationData notification) {
    return _NewNotification(
      notification,
    );
  }

  _NotificationOpened notificationOpened(NotificationData notification) {
    return _NotificationOpened(
      notification,
    );
  }

  _GetListNotification getListNotification() {
    return const _GetListNotification();
  }
}

/// @nodoc
const $NotificationEvent = _$NotificationEventTearOff();

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NotificationData notification) newNotification,
    required TResult Function(NotificationData notification) notificationOpened,
    required TResult Function() getListNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationData notification)? newNotification,
    TResult Function(NotificationData notification)? notificationOpened,
    TResult Function()? getListNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewNotification value) newNotification,
    required TResult Function(_NotificationOpened value) notificationOpened,
    required TResult Function(_GetListNotification value) getListNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewNotification value)? newNotification,
    TResult Function(_NotificationOpened value)? notificationOpened,
    TResult Function(_GetListNotification value)? getListNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  final NotificationEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationEvent) _then;
}

/// @nodoc
abstract class _$NewNotificationCopyWith<$Res> {
  factory _$NewNotificationCopyWith(
          _NewNotification value, $Res Function(_NewNotification) then) =
      __$NewNotificationCopyWithImpl<$Res>;
  $Res call({NotificationData notification});

  $NotificationDataCopyWith<$Res> get notification;
}

/// @nodoc
class __$NewNotificationCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements _$NewNotificationCopyWith<$Res> {
  __$NewNotificationCopyWithImpl(
      _NewNotification _value, $Res Function(_NewNotification) _then)
      : super(_value, (v) => _then(v as _NewNotification));

  @override
  _NewNotification get _value => super._value as _NewNotification;

  @override
  $Res call({
    Object? notification = freezed,
  }) {
    return _then(_NewNotification(
      notification == freezed
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as NotificationData,
    ));
  }

  @override
  $NotificationDataCopyWith<$Res> get notification {
    return $NotificationDataCopyWith<$Res>(_value.notification, (value) {
      return _then(_value.copyWith(notification: value));
    });
  }
}

/// @nodoc

class _$_NewNotification implements _NewNotification {
  const _$_NewNotification(this.notification);

  @override
  final NotificationData notification;

  @override
  String toString() {
    return 'NotificationEvent.newNotification(notification: $notification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewNotification &&
            (identical(other.notification, notification) ||
                const DeepCollectionEquality()
                    .equals(other.notification, notification)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(notification);

  @JsonKey(ignore: true)
  @override
  _$NewNotificationCopyWith<_NewNotification> get copyWith =>
      __$NewNotificationCopyWithImpl<_NewNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NotificationData notification) newNotification,
    required TResult Function(NotificationData notification) notificationOpened,
    required TResult Function() getListNotification,
  }) {
    return newNotification(notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationData notification)? newNotification,
    TResult Function(NotificationData notification)? notificationOpened,
    TResult Function()? getListNotification,
    required TResult orElse(),
  }) {
    if (newNotification != null) {
      return newNotification(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewNotification value) newNotification,
    required TResult Function(_NotificationOpened value) notificationOpened,
    required TResult Function(_GetListNotification value) getListNotification,
  }) {
    return newNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewNotification value)? newNotification,
    TResult Function(_NotificationOpened value)? notificationOpened,
    TResult Function(_GetListNotification value)? getListNotification,
    required TResult orElse(),
  }) {
    if (newNotification != null) {
      return newNotification(this);
    }
    return orElse();
  }
}

abstract class _NewNotification implements NotificationEvent {
  const factory _NewNotification(NotificationData notification) =
      _$_NewNotification;

  NotificationData get notification => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NewNotificationCopyWith<_NewNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NotificationOpenedCopyWith<$Res> {
  factory _$NotificationOpenedCopyWith(
          _NotificationOpened value, $Res Function(_NotificationOpened) then) =
      __$NotificationOpenedCopyWithImpl<$Res>;
  $Res call({NotificationData notification});

  $NotificationDataCopyWith<$Res> get notification;
}

/// @nodoc
class __$NotificationOpenedCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements _$NotificationOpenedCopyWith<$Res> {
  __$NotificationOpenedCopyWithImpl(
      _NotificationOpened _value, $Res Function(_NotificationOpened) _then)
      : super(_value, (v) => _then(v as _NotificationOpened));

  @override
  _NotificationOpened get _value => super._value as _NotificationOpened;

  @override
  $Res call({
    Object? notification = freezed,
  }) {
    return _then(_NotificationOpened(
      notification == freezed
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as NotificationData,
    ));
  }

  @override
  $NotificationDataCopyWith<$Res> get notification {
    return $NotificationDataCopyWith<$Res>(_value.notification, (value) {
      return _then(_value.copyWith(notification: value));
    });
  }
}

/// @nodoc

class _$_NotificationOpened implements _NotificationOpened {
  const _$_NotificationOpened(this.notification);

  @override
  final NotificationData notification;

  @override
  String toString() {
    return 'NotificationEvent.notificationOpened(notification: $notification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationOpened &&
            (identical(other.notification, notification) ||
                const DeepCollectionEquality()
                    .equals(other.notification, notification)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(notification);

  @JsonKey(ignore: true)
  @override
  _$NotificationOpenedCopyWith<_NotificationOpened> get copyWith =>
      __$NotificationOpenedCopyWithImpl<_NotificationOpened>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NotificationData notification) newNotification,
    required TResult Function(NotificationData notification) notificationOpened,
    required TResult Function() getListNotification,
  }) {
    return notificationOpened(notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationData notification)? newNotification,
    TResult Function(NotificationData notification)? notificationOpened,
    TResult Function()? getListNotification,
    required TResult orElse(),
  }) {
    if (notificationOpened != null) {
      return notificationOpened(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewNotification value) newNotification,
    required TResult Function(_NotificationOpened value) notificationOpened,
    required TResult Function(_GetListNotification value) getListNotification,
  }) {
    return notificationOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewNotification value)? newNotification,
    TResult Function(_NotificationOpened value)? notificationOpened,
    TResult Function(_GetListNotification value)? getListNotification,
    required TResult orElse(),
  }) {
    if (notificationOpened != null) {
      return notificationOpened(this);
    }
    return orElse();
  }
}

abstract class _NotificationOpened implements NotificationEvent {
  const factory _NotificationOpened(NotificationData notification) =
      _$_NotificationOpened;

  NotificationData get notification => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NotificationOpenedCopyWith<_NotificationOpened> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetListNotificationCopyWith<$Res> {
  factory _$GetListNotificationCopyWith(_GetListNotification value,
          $Res Function(_GetListNotification) then) =
      __$GetListNotificationCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetListNotificationCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements _$GetListNotificationCopyWith<$Res> {
  __$GetListNotificationCopyWithImpl(
      _GetListNotification _value, $Res Function(_GetListNotification) _then)
      : super(_value, (v) => _then(v as _GetListNotification));

  @override
  _GetListNotification get _value => super._value as _GetListNotification;
}

/// @nodoc

class _$_GetListNotification implements _GetListNotification {
  const _$_GetListNotification();

  @override
  String toString() {
    return 'NotificationEvent.getListNotification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetListNotification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NotificationData notification) newNotification,
    required TResult Function(NotificationData notification) notificationOpened,
    required TResult Function() getListNotification,
  }) {
    return getListNotification();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationData notification)? newNotification,
    TResult Function(NotificationData notification)? notificationOpened,
    TResult Function()? getListNotification,
    required TResult orElse(),
  }) {
    if (getListNotification != null) {
      return getListNotification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewNotification value) newNotification,
    required TResult Function(_NotificationOpened value) notificationOpened,
    required TResult Function(_GetListNotification value) getListNotification,
  }) {
    return getListNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewNotification value)? newNotification,
    TResult Function(_NotificationOpened value)? notificationOpened,
    TResult Function(_GetListNotification value)? getListNotification,
    required TResult orElse(),
  }) {
    if (getListNotification != null) {
      return getListNotification(this);
    }
    return orElse();
  }
}

abstract class _GetListNotification implements NotificationEvent {
  const factory _GetListNotification() = _$_GetListNotification;
}

/// @nodoc
class _$NotificationStateTearOff {
  const _$NotificationStateTearOff();

  _NotificationState call(
      {required IList<NotificationData> notifications,
      required Option<NotificationData> notificationOpenedOption,
      required Option<Either<NotificationFailure, Unit>>
          fetchFailureOrUnitOption,
      required bool isLoading}) {
    return _NotificationState(
      notifications: notifications,
      notificationOpenedOption: notificationOpenedOption,
      fetchFailureOrUnitOption: fetchFailureOrUnitOption,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $NotificationState = _$NotificationStateTearOff();

/// @nodoc
mixin _$NotificationState {
  IList<NotificationData> get notifications =>
      throw _privateConstructorUsedError;
  Option<NotificationData> get notificationOpenedOption =>
      throw _privateConstructorUsedError;
  Option<Either<NotificationFailure, Unit>> get fetchFailureOrUnitOption =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res>;
  $Res call(
      {IList<NotificationData> notifications,
      Option<NotificationData> notificationOpenedOption,
      Option<Either<NotificationFailure, Unit>> fetchFailureOrUnitOption,
      bool isLoading});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  final NotificationState _value;
  // ignore: unused_field
  final $Res Function(NotificationState) _then;

  @override
  $Res call({
    Object? notifications = freezed,
    Object? notificationOpenedOption = freezed,
    Object? fetchFailureOrUnitOption = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as IList<NotificationData>,
      notificationOpenedOption: notificationOpenedOption == freezed
          ? _value.notificationOpenedOption
          : notificationOpenedOption // ignore: cast_nullable_to_non_nullable
              as Option<NotificationData>,
      fetchFailureOrUnitOption: fetchFailureOrUnitOption == freezed
          ? _value.fetchFailureOrUnitOption
          : fetchFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NotificationFailure, Unit>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$NotificationStateCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$NotificationStateCopyWith(
          _NotificationState value, $Res Function(_NotificationState) then) =
      __$NotificationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {IList<NotificationData> notifications,
      Option<NotificationData> notificationOpenedOption,
      Option<Either<NotificationFailure, Unit>> fetchFailureOrUnitOption,
      bool isLoading});
}

/// @nodoc
class __$NotificationStateCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res>
    implements _$NotificationStateCopyWith<$Res> {
  __$NotificationStateCopyWithImpl(
      _NotificationState _value, $Res Function(_NotificationState) _then)
      : super(_value, (v) => _then(v as _NotificationState));

  @override
  _NotificationState get _value => super._value as _NotificationState;

  @override
  $Res call({
    Object? notifications = freezed,
    Object? notificationOpenedOption = freezed,
    Object? fetchFailureOrUnitOption = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_NotificationState(
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as IList<NotificationData>,
      notificationOpenedOption: notificationOpenedOption == freezed
          ? _value.notificationOpenedOption
          : notificationOpenedOption // ignore: cast_nullable_to_non_nullable
              as Option<NotificationData>,
      fetchFailureOrUnitOption: fetchFailureOrUnitOption == freezed
          ? _value.fetchFailureOrUnitOption
          : fetchFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NotificationFailure, Unit>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NotificationState extends _NotificationState {
  const _$_NotificationState(
      {required this.notifications,
      required this.notificationOpenedOption,
      required this.fetchFailureOrUnitOption,
      required this.isLoading})
      : super._();

  @override
  final IList<NotificationData> notifications;
  @override
  final Option<NotificationData> notificationOpenedOption;
  @override
  final Option<Either<NotificationFailure, Unit>> fetchFailureOrUnitOption;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'NotificationState(notifications: $notifications, notificationOpenedOption: $notificationOpenedOption, fetchFailureOrUnitOption: $fetchFailureOrUnitOption, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationState &&
            (identical(other.notifications, notifications) ||
                const DeepCollectionEquality()
                    .equals(other.notifications, notifications)) &&
            (identical(
                    other.notificationOpenedOption, notificationOpenedOption) ||
                const DeepCollectionEquality().equals(
                    other.notificationOpenedOption,
                    notificationOpenedOption)) &&
            (identical(
                    other.fetchFailureOrUnitOption, fetchFailureOrUnitOption) ||
                const DeepCollectionEquality().equals(
                    other.fetchFailureOrUnitOption,
                    fetchFailureOrUnitOption)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(notifications) ^
      const DeepCollectionEquality().hash(notificationOpenedOption) ^
      const DeepCollectionEquality().hash(fetchFailureOrUnitOption) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$NotificationStateCopyWith<_NotificationState> get copyWith =>
      __$NotificationStateCopyWithImpl<_NotificationState>(this, _$identity);
}

abstract class _NotificationState extends NotificationState {
  const factory _NotificationState(
      {required IList<NotificationData> notifications,
      required Option<NotificationData> notificationOpenedOption,
      required Option<Either<NotificationFailure, Unit>>
          fetchFailureOrUnitOption,
      required bool isLoading}) = _$_NotificationState;
  const _NotificationState._() : super._();

  @override
  IList<NotificationData> get notifications =>
      throw _privateConstructorUsedError;
  @override
  Option<NotificationData> get notificationOpenedOption =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<NotificationFailure, Unit>> get fetchFailureOrUnitOption =>
      throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NotificationStateCopyWith<_NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
