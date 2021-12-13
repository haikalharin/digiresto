// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:code_id_alice/alice.dart' as _i3;
import 'package:connectivity_plus/connectivity_plus.dart' as _i6;
import 'package:dio/dio.dart' as _i22;
import 'package:geolocator/geolocator.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i9;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i12;
import 'package:onesignal_flutter/onesignal_flutter.dart' as _i13;

import 'application/address/list/address_list_bloc.dart' as _i42;
import 'application/address/map/address_map_bloc.dart' as _i43;
import 'application/auth/auth_bloc.dart' as _i65;
import 'application/auth/login/login_bloc.dart' as _i54;
import 'application/auth/register/register_bloc.dart' as _i60;
import 'application/auth/validate_otp/validate_otp_bloc.dart' as _i63;
import 'application/core/app_bloc.dart' as _i20;
import 'application/credit/credit_bloc.dart' as _i67;
import 'application/credit/recent_history/recent_history_bloc.dart' as _i59;
import 'application/credit/topup_credit/top_up_credit_bloc.dart' as _i61;
import 'application/credit/waiting_payment/waiting_payment_bloc.dart' as _i64;
import 'application/digi_locale/digi_locale_bloc.dart' as _i46;
import 'application/home/home_user_bloc/home_user_bloc.dart' as _i69;
import 'application/home_new/bloc/home_bloc.dart' as _i68;
import 'application/home_new/outlet/outlet_bloc.dart' as _i57;
import 'application/landing/bottom_tab_cubit.dart' as _i66;
import 'application/notification/notification_bloc.dart' as _i33;
import 'application/order/bloc/order_bloc.dart' as _i55;
import 'application/order/order_cart_screen_view_controller.dart' as _i56;
import 'application/profile/edit_profile/edit_profile_bloc.dart' as _i47;
import 'application/profile/order_details/order_details_bloc.dart' as _i35;
import 'application/profile/order_history/order_history_bloc.dart' as _i36;
import 'application/profile/profile_bloc.dart' as _i58;
import 'application/transaction/bloc/transaction_bloc/transaction_bloc.dart'
    as _i62;
import 'domain/auth/i_auth_facade.dart' as _i48;
import 'domain/core/constants/network/env.dart' as _i7;
import 'domain/core/interfaces/i_location_service.dart' as _i10;
import 'domain/core/interfaces/i_network_service.dart' as _i25;
import 'domain/core/interfaces/i_storage.dart' as _i16;
import 'domain/credit/i_credit_repository.dart' as _i50;
import 'domain/digi_locale/i_digi_locale_repository.dart' as _i23;
import 'domain/home/i_home_repository.dart' as _i52;
import 'domain/notification/i_notification_repository.dart' as _i27;
import 'domain/profile/i_profile_repository.dart' as _i29;
import 'infrastructure/auth/api_auth_facade.dart' as _i49;
import 'infrastructure/core/auth_interceptor.dart' as _i21;
import 'infrastructure/core/location_service.dart' as _i11;
import 'infrastructure/core/network_service.dart' as _i26;
import 'infrastructure/core/register_module.dart' as _i70;
import 'infrastructure/core/storage.dart' as _i17;
import 'infrastructure/credit/credit_repository.dart' as _i51;
import 'infrastructure/digi_locale/digi_locale_repository.dart' as _i24;
import 'infrastructure/home/home_repository.dart' as _i53;
import 'infrastructure/network/apis/auth/auth_api.dart' as _i44;
import 'infrastructure/network/apis/auth/auth_repository.dart' as _i45;
import 'infrastructure/network/apis/map/map_api.dart' as _i31;
import 'infrastructure/network/apis/map/map_repository.dart' as _i32;
import 'infrastructure/network/apis/order/order_api.dart' as _i34;
import 'infrastructure/network/apis/order/order_local.dart' as _i18;
import 'infrastructure/network/apis/order/order_repository.dart' as _i37;
import 'infrastructure/network/apis/transaction/transaction_api.dart' as _i38;
import 'infrastructure/network/apis/transaction/transaction_repository.dart'
    as _i39;
import 'infrastructure/network/apis/user/user_api.dart' as _i40;
import 'infrastructure/network/apis/user/user_local.dart' as _i19;
import 'infrastructure/network/apis/user/user_repository.dart' as _i41;
import 'infrastructure/notification/notification_repository.dart' as _i28;
import 'infrastructure/profile/profile_repository.dart' as _i30;
import 'presentation/core/app_widget.dart' as _i4;
import 'presentation/landing/bottom_tab_view.dart' as _i5;
import 'presentation/profile/address/address_page.dart' as _i14;
import 'simple_bloc_delegate.dart' as _i15;

const String _prod = 'prod';
const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Alice>(() => registerModule.alice, registerFor: {_prod});
  gh.lazySingleton<_i3.Alice>(() => registerModule.aliceDev,
      registerFor: {_dev});
  gh.factory<_i4.AppWidget>(() => _i4.AppWidget(alice: get<_i3.Alice>()));
  gh.lazySingleton<_i5.BottomTabView>(() => _i5.BottomTabView());
  gh.lazySingleton<_i6.Connectivity>(() => registerModule.connectivity);
  gh.factory<_i7.Env>(() => _i7.EnvProd(), registerFor: {_prod});
  gh.lazySingleton<_i8.GeolocatorPlatform>(
      () => registerModule.goelocatorPlatform);
  gh.lazySingleton<_i9.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i10.ILocationService>(
      () => _i11.LocationService(get<_i8.GeolocatorPlatform>()));
  gh.lazySingleton<_i12.Logger>(() => registerModule.logger);
  gh.lazySingleton<_i13.OneSignal>(() => registerModule.oneSignal);
  gh.factory<_i14.ProfileAddressWidget>(() => _i14.ProfileAddressWidget());
  gh.factory<_i15.SimpleBlocObserver>(
      () => _i15.SimpleBlocObserver(get<_i12.Logger>()));
  gh.lazySingleton<_i16.IStorage>(
      () => _i17.Storage(get<_i9.HiveInterface>(), get<_i12.Logger>()));
  gh.factory<_i18.OrderLocal>(() => _i18.OrderLocal(get<_i16.IStorage>()));
  gh.factory<_i19.UserLocal>(() => _i19.UserLocal(get<_i16.IStorage>()));
  gh.factory<_i20.AppBloc>(() => _i20.AppBloc(get<_i16.IStorage>()));
  gh.factory<_i21.AuthInterceptor>(
      () => _i21.AuthInterceptor(get<_i16.IStorage>()));
  await gh.lazySingletonAsync<_i22.Dio>(
      () => registerModule.dioDev(get<_i3.Alice>(), get<_i16.IStorage>()),
      registerFor: {_dev},
      preResolve: true);
  await gh.lazySingletonAsync<_i22.Dio>(
      () => registerModule.dio(get<_i16.IStorage>()),
      registerFor: {_prod},
      preResolve: true);
  gh.factory<_i7.Env>(() => _i7.EnvDev(get<_i16.IStorage>()),
      registerFor: {_dev});
  gh.lazySingleton<_i23.IDigiLocaleRepository>(
      () => _i24.DigiLocaleRepository(get<_i16.IStorage>()));
  gh.lazySingleton<_i25.INetworkService>(() => _i26.NetworkService(
      get<_i22.Dio>(),
      get<_i12.Logger>(),
      get<_i16.IStorage>(),
      get<_i6.Connectivity>(),
      get<_i7.Env>()));
  gh.lazySingleton<_i27.INotificationRepository>(() =>
      _i28.NotificationRepository(
          get<_i13.OneSignal>(),
          get<_i25.INetworkService>(),
          get<_i16.IStorage>(),
          get<_i12.Logger>()));
  gh.lazySingleton<_i29.IProfileRepository>(() => _i30.ProfileRepository(
      get<_i25.INetworkService>(), get<_i16.IStorage>(), get<_i12.Logger>()));
  gh.factory<_i31.MapApi>(() => _i31.MapApi(get<_i25.INetworkService>(),
      get<_i10.ILocationService>(), get<_i12.Logger>()));
  gh.factory<_i32.MapRepository>(() => _i32.MapRepository(get<_i31.MapApi>()));
  gh.factory<_i33.NotificationBloc>(
      () => _i33.NotificationBloc(get<_i27.INotificationRepository>()));
  gh.factory<_i34.OrderApi>(
      () => _i34.OrderApi(get<_i25.INetworkService>(), get<_i16.IStorage>()));
  gh.factory<_i35.OrderDetailsBloc>(
      () => _i35.OrderDetailsBloc(get<_i29.IProfileRepository>()));
  gh.factory<_i36.OrderHistoryBloc>(
      () => _i36.OrderHistoryBloc(get<_i29.IProfileRepository>()));
  gh.factory<_i37.OrderRepository>(
      () => _i37.OrderRepository(get<_i34.OrderApi>(), get<_i18.OrderLocal>()));
  gh.factory<_i38.TransactionApi>(
      () => _i38.TransactionApi(get<_i25.INetworkService>()));
  gh.factory<_i39.TransactionRepository>(
      () => _i39.TransactionRepository(get<_i38.TransactionApi>()));
  gh.factory<_i40.UserApi>(
      () => _i40.UserApi(get<_i25.INetworkService>(), get<_i16.IStorage>()));
  gh.factory<_i41.UserRepository>(
      () => _i41.UserRepository(get<_i40.UserApi>(), get<_i19.UserLocal>()));
  gh.factory<_i42.AddressListBloc>(() => _i42.AddressListBloc(
      get<_i41.UserRepository>(), get<_i32.MapRepository>()));
  gh.factory<_i43.AddressMapBloc>(() => _i43.AddressMapBloc(
      get<_i41.UserRepository>(), get<_i32.MapRepository>()));
  gh.factory<_i44.AuthApi>(() => _i44.AuthApi(get<_i25.INetworkService>()));
  gh.factory<_i45.AuthRepository>(
      () => _i45.AuthRepository(get<_i44.AuthApi>()));
  gh.factory<_i46.DigiLocaleBloc>(
      () => _i46.DigiLocaleBloc(get<_i23.IDigiLocaleRepository>()));
  gh.factory<_i47.EditProfileBloc>(
      () => _i47.EditProfileBloc(get<_i29.IProfileRepository>()));
  gh.lazySingleton<_i48.IAuthFacade>(() => _i49.ApiAuthFacade(
      get<_i25.INetworkService>(),
      get<_i12.Logger>(),
      get<_i16.IStorage>(),
      get<_i29.IProfileRepository>()));
  gh.lazySingleton<_i50.ICreditRepository>(() =>
      _i51.CreditRepository(get<_i25.INetworkService>(), get<_i12.Logger>()));
  gh.lazySingleton<_i52.IHomeRepository>(() => _i53.HomeRepository(
      get<_i12.Logger>(),
      get<_i25.INetworkService>(),
      get<_i16.IStorage>(),
      get<_i10.ILocationService>(),
      get<_i7.Env>()));
  gh.factory<_i54.LoginBloc>(() => _i54.LoginBloc(get<_i48.IAuthFacade>()));
  gh.factory<_i55.OrderBloc>(() => _i55.OrderBloc(get<_i37.OrderRepository>(),
      get<_i41.UserRepository>(), get<_i29.IProfileRepository>()));
  gh.factory<_i56.OrderCartScreenViewController>(
      () => _i56.OrderCartScreenViewController(get<_i37.OrderRepository>()));
  gh.lazySingleton<_i57.OutletBloc>(
      () => _i57.OutletBloc(get<_i52.IHomeRepository>()));
  gh.factory<_i58.ProfileBloc>(() => _i58.ProfileBloc(get<_i48.IAuthFacade>()));
  gh.factory<_i59.RecentHistoryBloc>(
      () => _i59.RecentHistoryBloc(get<_i50.ICreditRepository>()));
  gh.factory<_i60.RegisterBloc>(
      () => _i60.RegisterBloc(get<_i48.IAuthFacade>()));
  gh.factory<_i61.TopUpCreditBloc>(() => _i61.TopUpCreditBloc(
      get<_i50.ICreditRepository>(), get<_i16.IStorage>()));
  gh.factory<_i62.TransactionBloc>(
      () => _i62.TransactionBloc(get<_i39.TransactionRepository>()));
  gh.factory<_i63.ValidateOtpBloc>(
      () => _i63.ValidateOtpBloc(get<_i48.IAuthFacade>(), get<_i12.Logger>()));
  gh.factory<_i64.WaitingPaymentBloc>(
      () => _i64.WaitingPaymentBloc(get<_i50.ICreditRepository>()));
  gh.factory<_i65.AuthBloc>(() => _i65.AuthBloc(
      get<_i48.IAuthFacade>(), get<_i27.INotificationRepository>()));
  gh.lazySingleton<_i66.BottomTabCubit>(() => _i66.BottomTabCubit(
      get<_i37.OrderRepository>(), get<_i50.ICreditRepository>()));
  gh.factory<_i67.CreditBloc>(
      () => _i67.CreditBloc(get<_i50.ICreditRepository>()));
  gh.lazySingleton<_i68.HomeBloc>(
      () => _i68.HomeBloc(get<_i52.IHomeRepository>()));
  gh.factory<_i69.HomeUserBloc>(() => _i69.HomeUserBloc(
      get<_i41.UserRepository>(),
      get<_i37.OrderRepository>(),
      get<_i50.ICreditRepository>()));
  return get;
}

class _$RegisterModule extends _i70.RegisterModule {}
