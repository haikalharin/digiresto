// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:alice/alice.dart' as _i3;
import 'package:connectivity_plus/connectivity_plus.dart' as _i7;
import 'package:dio/dio.dart' as _i20;
import 'package:flutter/material.dart' as _i5;
import 'package:geolocator/geolocator.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i10;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i13;

import 'application/address/list/address_list_bloc.dart' as _i32;
import 'application/address/map/address_map_bloc.dart' as _i33;
import 'application/auth/auth_bloc.dart' as _i48;
import 'application/auth/login/login_bloc.dart' as _i41;
import 'application/auth/register/register_bloc.dart' as _i44;
import 'application/auth/validate_otp/validate_otp_bloc.dart' as _i46;
import 'application/core/app_bloc.dart' as _i18;
import 'application/credit/credit_bloc.dart' as _i49;
import 'application/credit/recent_history/recent_history_bloc.dart' as _i43;
import 'application/credit/topup_credit/top_up_credit_bloc.dart' as _i45;
import 'application/credit/waiting_payment/waiting_payment_bloc.dart' as _i47;
import 'application/home/home_user_bloc/home_user_bloc.dart' as _i36;
import 'application/order/bloc/order_bloc.dart' as _i42;
import 'domain/auth/i_auth_facade.dart' as _i37;
import 'domain/core/constants/network/env.dart' as _i8;
import 'domain/core/interfaces/i_location_service.dart' as _i11;
import 'domain/core/interfaces/i_network_service.dart' as _i22;
import 'domain/core/interfaces/i_storage.dart' as _i15;
import 'domain/core/utils/locale/app_localization.dart' as _i4;
import 'domain/credit/i_credit_repository.dart' as _i39;
import 'infrastructure/auth/api_auth_facade.dart' as _i38;
import 'infrastructure/core/auth_interceptor.dart' as _i19;
import 'infrastructure/core/location_service.dart' as _i12;
import 'infrastructure/core/network_service.dart' as _i23;
import 'infrastructure/core/register_module.dart' as _i50;
import 'infrastructure/core/storage.dart' as _i16;
import 'infrastructure/credit/credit_repository.dart' as _i40;
import 'infrastructure/network/apis/auth/auth_api.dart' as _i34;
import 'infrastructure/network/apis/auth/auth_repository.dart' as _i35;
import 'infrastructure/network/apis/map/map_api.dart' as _i24;
import 'infrastructure/network/apis/map/map_repository.dart' as _i25;
import 'infrastructure/network/apis/order/order_api.dart' as _i26;
import 'infrastructure/network/apis/order/order_repository.dart' as _i27;
import 'infrastructure/network/apis/posts/post_api.dart' as _i28;
import 'infrastructure/network/apis/transaction/transaction_api.dart' as _i29;
import 'infrastructure/network/apis/user/user_api.dart' as _i30;
import 'infrastructure/network/apis/user/user_local.dart' as _i17;
import 'infrastructure/network/apis/user/user_repository.dart' as _i31;
import 'infrastructure/network/dio_client.dart' as _i21;
import 'presentation/core/app_widget.dart' as _i6;
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
  gh.lazySingleton<_i3.Alice>(() => registerModule.alice, registerFor: {_dev});
  gh.factory<_i4.AppLocalizations>(
      () => _i4.AppLocalizations(get<_i5.Locale>()));
  gh.factory<_i6.AppWidget>(() => _i6.AppWidget(alice: get<_i3.Alice>()));
  gh.lazySingleton<_i7.Connectivity>(() => registerModule.connectivity);
  gh.factory<_i8.Env>(() => _i8.EnvDev(), registerFor: {_dev});
  gh.factory<_i8.Env>(() => _i8.EnvProd(), registerFor: {_prod});
  gh.lazySingleton<_i9.GeolocatorPlatform>(
      () => registerModule.goelocatorPlatform);
  gh.lazySingleton<_i10.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i11.ILocationService>(
      () => _i12.LocationService(get<_i9.GeolocatorPlatform>()));
  gh.lazySingleton<_i13.Logger>(() => registerModule.logger);
  gh.factory<_i14.SimpleBlocObserver>(
      () => _i14.SimpleBlocObserver(get<_i13.Logger>()));
  gh.lazySingleton<_i15.IStorage>(
      () => _i16.Storage(get<_i10.HiveInterface>(), get<_i13.Logger>()));
  gh.factory<_i17.UserLocal>(() => _i17.UserLocal(get<_i15.IStorage>()));
  gh.factory<_i18.AppBloc>(() => _i18.AppBloc(get<_i15.IStorage>()));
  gh.factory<_i19.AuthInterceptor>(
      () => _i19.AuthInterceptor(get<_i15.IStorage>()));
  await gh.lazySingletonAsync<_i20.Dio>(
      () => registerModule.dio(get<_i3.Alice>(), get<_i15.IStorage>()),
      preResolve: true);
  gh.factory<_i21.DioClient>(() =>
      _i21.DioClient(get<_i20.Dio>(), get<_i13.Logger>(), get<_i8.Env>()));
  gh.lazySingleton<_i22.INetworkService>(() => _i23.NetworkService(
      get<_i20.Dio>(),
      get<_i13.Logger>(),
      get<_i15.IStorage>(),
      get<_i7.Connectivity>(),
      get<_i8.Env>()));
  gh.factory<_i24.MapApi>(() => _i24.MapApi(get<_i22.INetworkService>()));
  gh.factory<_i25.MapRepository>(() => _i25.MapRepository(get<_i24.MapApi>()));
  gh.factory<_i26.OrderApi>(
      () => _i26.OrderApi(get<_i22.INetworkService>(), get<_i15.IStorage>()));
  gh.factory<_i27.OrderRepository>(
      () => _i27.OrderRepository(get<_i26.OrderApi>()));
  gh.factory<_i28.PostApi>(() => _i28.PostApi(get<_i22.INetworkService>()));
  gh.factory<_i29.TransactionApi>(
      () => _i29.TransactionApi(get<_i22.INetworkService>()));
  gh.factory<_i30.UserApi>(
      () => _i30.UserApi(get<_i22.INetworkService>(), get<_i15.IStorage>()));
  gh.factory<_i31.UserRepository>(
      () => _i31.UserRepository(get<_i30.UserApi>(), get<_i17.UserLocal>()));
  gh.factory<_i32.AddressListBloc>(() => _i32.AddressListBloc(
      get<_i31.UserRepository>(), get<_i25.MapRepository>()));
  gh.factory<_i33.AddressMapBloc>(() => _i33.AddressMapBloc(
      get<_i31.UserRepository>(), get<_i25.MapRepository>()));
  gh.factory<_i34.AuthApi>(() => _i34.AuthApi(get<_i22.INetworkService>()));
  gh.factory<_i35.AuthRepository>(
      () => _i35.AuthRepository(get<_i34.AuthApi>()));
  gh.factory<_i36.HomeUserBloc>(() => _i36.HomeUserBloc(
      get<_i31.UserRepository>(), get<_i27.OrderRepository>()));
  gh.lazySingleton<_i37.IAuthFacade>(() => _i38.ApiAuthFacade(
      get<_i22.INetworkService>(), get<_i13.Logger>(), get<_i15.IStorage>()));
  gh.lazySingleton<_i39.ICreditRepository>(() =>
      _i40.CreditRepository(get<_i22.INetworkService>(), get<_i13.Logger>()));
  gh.factory<_i41.LoginBloc>(() => _i41.LoginBloc(get<_i37.IAuthFacade>()));
  gh.factory<_i42.OrderBloc>(() =>
      _i42.OrderBloc(get<_i27.OrderRepository>(), get<_i31.UserRepository>()));
  gh.factory<_i43.RecentHistoryBloc>(
      () => _i43.RecentHistoryBloc(get<_i39.ICreditRepository>()));
  gh.factory<_i44.RegisterBloc>(
      () => _i44.RegisterBloc(get<_i37.IAuthFacade>()));
  gh.factory<_i45.TopUpCreditBloc>(() => _i45.TopUpCreditBloc(
      get<_i39.ICreditRepository>(), get<_i15.IStorage>()));
  gh.factory<_i46.ValidateOtpBloc>(
      () => _i46.ValidateOtpBloc(get<_i37.IAuthFacade>(), get<_i13.Logger>()));
  gh.factory<_i47.WaitingPaymentBloc>(
      () => _i47.WaitingPaymentBloc(get<_i39.ICreditRepository>()));
  gh.factory<_i48.AuthBloc>(() => _i48.AuthBloc(get<_i37.IAuthFacade>()));
  gh.factory<_i49.CreditBloc>(
      () => _i49.CreditBloc(get<_i39.ICreditRepository>()));
  return get;
}

class _$RegisterModule extends _i50.RegisterModule {}
