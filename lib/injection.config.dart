// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:code_id_flutter/code_services/alice/alice.dart' as _i3;
import 'package:connectivity_plus/connectivity_plus.dart' as _i5;
import 'package:dio/dio.dart' as _i21;
import 'package:geolocator/geolocator.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i11;
import 'package:onesignal_flutter/onesignal_flutter.dart' as _i12;

import 'application/address/list/address_list_bloc.dart' as _i41;
import 'application/address/map/address_map_bloc.dart' as _i42;
import 'application/auth/auth_bloc.dart' as _i61;
import 'application/auth/login/login_bloc.dart' as _i51;
import 'application/auth/register/register_bloc.dart' as _i56;
import 'application/auth/validate_otp/validate_otp_bloc.dart' as _i59;
import 'application/core/app_bloc.dart' as _i19;
import 'application/credit/credit_bloc.dart' as _i62;
import 'application/credit/recent_history/recent_history_bloc.dart' as _i55;
import 'application/credit/topup_credit/top_up_credit_bloc.dart' as _i57;
import 'application/credit/waiting_payment/waiting_payment_bloc.dart' as _i60;
import 'application/digi_locale/digi_locale_bloc.dart' as _i45;
import 'application/home/home_user_bloc/home_user_bloc.dart' as _i63;
import 'application/notification/notification_bloc.dart' as _i32;
import 'application/order/bloc/order_bloc.dart' as _i52;
import 'application/order/order_cart_screen_view_controller.dart' as _i53;
import 'application/profile/edit_profile/edit_profile_bloc.dart' as _i46;
import 'application/profile/order_details/order_details_bloc.dart' as _i34;
import 'application/profile/order_history/order_history_bloc.dart' as _i35;
import 'application/profile/profile_bloc.dart' as _i54;
import 'application/transaction/bloc/transaction_bloc/transaction_bloc.dart'
    as _i58;
import 'domain/auth/i_auth_facade.dart' as _i47;
import 'domain/core/constants/network/env.dart' as _i6;
import 'domain/core/interfaces/i_location_service.dart' as _i9;
import 'domain/core/interfaces/i_network_service.dart' as _i24;
import 'domain/core/interfaces/i_storage.dart' as _i15;
import 'domain/credit/i_credit_repository.dart' as _i49;
import 'domain/digi_locale/i_digi_locale_repository.dart' as _i22;
import 'domain/notification/i_notification_repository.dart' as _i26;
import 'domain/profile/i_profile_repository.dart' as _i28;
import 'infrastructure/auth/api_auth_facade.dart' as _i48;
import 'infrastructure/core/auth_interceptor.dart' as _i20;
import 'infrastructure/core/location_service.dart' as _i10;
import 'infrastructure/core/network_service.dart' as _i25;
import 'infrastructure/core/register_module.dart' as _i64;
import 'infrastructure/core/storage.dart' as _i16;
import 'infrastructure/credit/credit_repository.dart' as _i50;
import 'infrastructure/digi_locale/digi_locale_repository.dart' as _i23;
import 'infrastructure/network/apis/auth/auth_api.dart' as _i43;
import 'infrastructure/network/apis/auth/auth_repository.dart' as _i44;
import 'infrastructure/network/apis/map/map_api.dart' as _i30;
import 'infrastructure/network/apis/map/map_repository.dart' as _i31;
import 'infrastructure/network/apis/order/order_api.dart' as _i33;
import 'infrastructure/network/apis/order/order_local.dart' as _i17;
import 'infrastructure/network/apis/order/order_repository.dart' as _i36;
import 'infrastructure/network/apis/transaction/transaction_api.dart' as _i37;
import 'infrastructure/network/apis/transaction/transaction_repository.dart'
    as _i38;
import 'infrastructure/network/apis/user/user_api.dart' as _i39;
import 'infrastructure/network/apis/user/user_local.dart' as _i18;
import 'infrastructure/network/apis/user/user_repository.dart' as _i40;
import 'infrastructure/notification/notification_repository.dart' as _i27;
import 'infrastructure/profile/profile_repository.dart' as _i29;
import 'presentation/core/app_widget.dart' as _i4;
import 'presentation/profile/address/address_page.dart' as _i13;
import 'simple_bloc_delegate.dart' as _i14;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Alice>(() => registerModule.aliceDev,
      registerFor: {_dev});
  gh.lazySingleton<_i3.Alice>(() => registerModule.alice, registerFor: {_prod});
  gh.factory<_i4.AppWidget>(() => _i4.AppWidget(alice: get<_i3.Alice>()));
  gh.lazySingleton<_i5.Connectivity>(() => registerModule.connectivity);
  gh.factory<_i6.Env>(() => _i6.EnvProd(), registerFor: {_prod});
  gh.lazySingleton<_i7.GeolocatorPlatform>(
      () => registerModule.goelocatorPlatform);
  gh.lazySingleton<_i8.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i9.ILocationService>(
      () => _i10.LocationService(get<_i7.GeolocatorPlatform>()));
  gh.lazySingleton<_i11.Logger>(() => registerModule.logger);
  gh.lazySingleton<_i12.OneSignal>(() => registerModule.oneSignal);
  gh.factory<_i13.ProfileAddressWidget>(
      () => _i13.ProfileAddressWidget(get<_i9.ILocationService>()));
  gh.factory<_i14.SimpleBlocObserver>(
      () => _i14.SimpleBlocObserver(get<_i11.Logger>()));
  gh.lazySingleton<_i15.IStorage>(
      () => _i16.Storage(get<_i8.HiveInterface>(), get<_i11.Logger>()));
  gh.factory<_i17.OrderLocal>(() => _i17.OrderLocal(get<_i15.IStorage>()));
  gh.factory<_i18.UserLocal>(() => _i18.UserLocal(get<_i15.IStorage>()));
  gh.factory<_i19.AppBloc>(() => _i19.AppBloc(get<_i15.IStorage>()));
  gh.factory<_i20.AuthInterceptor>(
      () => _i20.AuthInterceptor(get<_i15.IStorage>()));
  await gh.lazySingletonAsync<_i21.Dio>(
      () => registerModule.dioDev(get<_i3.Alice>(), get<_i15.IStorage>()),
      registerFor: {_dev},
      preResolve: true);
  await gh.lazySingletonAsync<_i21.Dio>(
      () => registerModule.dio(get<_i15.IStorage>()),
      registerFor: {_prod},
      preResolve: true);
  gh.factory<_i6.Env>(() => _i6.EnvDev(get<_i15.IStorage>()),
      registerFor: {_dev});
  gh.lazySingleton<_i22.IDigiLocaleRepository>(
      () => _i23.DigiLocaleRepository(get<_i15.IStorage>()));
  gh.lazySingleton<_i24.INetworkService>(() => _i25.NetworkService(
      get<_i21.Dio>(),
      get<_i11.Logger>(),
      get<_i15.IStorage>(),
      get<_i5.Connectivity>(),
      get<_i6.Env>()));
  gh.lazySingleton<_i26.INotificationRepository>(() =>
      _i27.NotificationRepository(
          get<_i12.OneSignal>(),
          get<_i24.INetworkService>(),
          get<_i15.IStorage>(),
          get<_i11.Logger>()));
  gh.lazySingleton<_i28.IProfileRepository>(() => _i29.ProfileRepository(
      get<_i24.INetworkService>(), get<_i15.IStorage>(), get<_i11.Logger>()));
  gh.factory<_i30.MapApi>(() => _i30.MapApi(get<_i24.INetworkService>()));
  gh.factory<_i31.MapRepository>(() => _i31.MapRepository(get<_i30.MapApi>()));
  gh.factory<_i32.NotificationBloc>(
      () => _i32.NotificationBloc(get<_i26.INotificationRepository>()));
  gh.factory<_i33.OrderApi>(
      () => _i33.OrderApi(get<_i24.INetworkService>(), get<_i15.IStorage>()));
  gh.factory<_i34.OrderDetailsBloc>(
      () => _i34.OrderDetailsBloc(get<_i28.IProfileRepository>()));
  gh.factory<_i35.OrderHistoryBloc>(
      () => _i35.OrderHistoryBloc(get<_i28.IProfileRepository>()));
  gh.factory<_i36.OrderRepository>(
      () => _i36.OrderRepository(get<_i33.OrderApi>(), get<_i17.OrderLocal>()));
  gh.factory<_i37.TransactionApi>(
      () => _i37.TransactionApi(get<_i24.INetworkService>()));
  gh.factory<_i38.TransactionRepository>(
      () => _i38.TransactionRepository(get<_i37.TransactionApi>()));
  gh.factory<_i39.UserApi>(
      () => _i39.UserApi(get<_i24.INetworkService>(), get<_i15.IStorage>()));
  gh.factory<_i40.UserRepository>(
      () => _i40.UserRepository(get<_i39.UserApi>(), get<_i18.UserLocal>()));
  gh.factory<_i41.AddressListBloc>(() => _i41.AddressListBloc(
      get<_i40.UserRepository>(), get<_i31.MapRepository>()));
  gh.factory<_i42.AddressMapBloc>(() => _i42.AddressMapBloc(
      get<_i40.UserRepository>(), get<_i31.MapRepository>()));
  gh.factory<_i43.AuthApi>(() => _i43.AuthApi(get<_i24.INetworkService>()));
  gh.factory<_i44.AuthRepository>(
      () => _i44.AuthRepository(get<_i43.AuthApi>()));
  gh.factory<_i45.DigiLocaleBloc>(
      () => _i45.DigiLocaleBloc(get<_i22.IDigiLocaleRepository>()));
  gh.factory<_i46.EditProfileBloc>(
      () => _i46.EditProfileBloc(get<_i28.IProfileRepository>()));
  gh.lazySingleton<_i47.IAuthFacade>(() => _i48.ApiAuthFacade(
      get<_i24.INetworkService>(),
      get<_i11.Logger>(),
      get<_i15.IStorage>(),
      get<_i28.IProfileRepository>()));
  gh.lazySingleton<_i49.ICreditRepository>(() =>
      _i50.CreditRepository(get<_i24.INetworkService>(), get<_i11.Logger>()));
  gh.factory<_i51.LoginBloc>(() => _i51.LoginBloc(get<_i47.IAuthFacade>()));
  gh.factory<_i52.OrderBloc>(() => _i52.OrderBloc(get<_i36.OrderRepository>(),
      get<_i40.UserRepository>(), get<_i28.IProfileRepository>()));
  gh.factory<_i53.OrderCartScreenViewController>(
      () => _i53.OrderCartScreenViewController(get<_i36.OrderRepository>()));
  gh.factory<_i54.ProfileBloc>(() => _i54.ProfileBloc(get<_i47.IAuthFacade>()));
  gh.factory<_i55.RecentHistoryBloc>(
      () => _i55.RecentHistoryBloc(get<_i49.ICreditRepository>()));
  gh.factory<_i56.RegisterBloc>(
      () => _i56.RegisterBloc(get<_i47.IAuthFacade>()));
  gh.factory<_i57.TopUpCreditBloc>(() => _i57.TopUpCreditBloc(
      get<_i49.ICreditRepository>(), get<_i15.IStorage>()));
  gh.factory<_i58.TransactionBloc>(
      () => _i58.TransactionBloc(get<_i38.TransactionRepository>()));
  gh.factory<_i59.ValidateOtpBloc>(
      () => _i59.ValidateOtpBloc(get<_i47.IAuthFacade>(), get<_i11.Logger>()));
  gh.factory<_i60.WaitingPaymentBloc>(
      () => _i60.WaitingPaymentBloc(get<_i49.ICreditRepository>()));
  gh.factory<_i61.AuthBloc>(() => _i61.AuthBloc(
      get<_i47.IAuthFacade>(), get<_i26.INotificationRepository>()));
  gh.factory<_i62.CreditBloc>(
      () => _i62.CreditBloc(get<_i49.ICreditRepository>()));
  gh.factory<_i63.HomeUserBloc>(() => _i63.HomeUserBloc(
      get<_i40.UserRepository>(),
      get<_i36.OrderRepository>(),
      get<_i49.ICreditRepository>()));
  return get;
}

class _$RegisterModule extends _i64.RegisterModule {}
