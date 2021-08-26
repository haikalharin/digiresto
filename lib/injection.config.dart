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

import 'application/address/list/address_list_bloc.dart' as _i30;
import 'application/address/map/address_map_bloc.dart' as _i31;
import 'application/auth/auth_bloc.dart' as _i45;
import 'application/auth/login/login_bloc.dart' as _i39;
import 'application/auth/register/register_bloc.dart' as _i41;
import 'application/auth/validate_otp/validate_otp_bloc.dart' as _i43;
import 'application/core/app_bloc.dart' as _i16;
import 'application/credit/credit_bloc.dart' as _i46;
import 'application/credit/recent_history/recent_history_bloc.dart' as _i40;
import 'application/credit/topup_credit/top_up_credit_bloc.dart' as _i42;
import 'application/credit/waiting_payment/waiting_payment_bloc.dart' as _i44;
import 'application/home/home_user_bloc/home_user_bloc.dart' as _i34;
import 'domain/auth/i_auth_facade.dart' as _i35;
import 'domain/core/constants/network/env.dart' as _i6;
import 'domain/core/interfaces/i_location_service.dart' as _i9;
import 'domain/core/interfaces/i_network_service.dart' as _i20;
import 'domain/core/interfaces/i_storage.dart' as _i13;
import 'domain/credit/i_credit_repository.dart' as _i37;
import 'infrastructure/auth/api_auth_facade.dart' as _i36;
import 'infrastructure/core/auth_interceptor.dart' as _i17;
import 'infrastructure/core/location_service.dart' as _i10;
import 'infrastructure/core/network_service.dart' as _i21;
import 'infrastructure/core/register_module.dart' as _i47;
import 'infrastructure/core/storage.dart' as _i14;
import 'infrastructure/credit/credit_repository.dart' as _i38;
import 'infrastructure/network/apis/auth/auth_api.dart' as _i32;
import 'infrastructure/network/apis/auth/auth_repository.dart' as _i33;
import 'infrastructure/network/apis/map/map_api.dart' as _i22;
import 'infrastructure/network/apis/map/map_repository.dart' as _i23;
import 'infrastructure/network/apis/order/order_api.dart' as _i24;
import 'infrastructure/network/apis/order/order_repository.dart' as _i25;
import 'infrastructure/network/apis/posts/post_api.dart' as _i26;
import 'infrastructure/network/apis/transaction/transaction_api.dart' as _i27;
import 'infrastructure/network/apis/user/user_api.dart' as _i28;
import 'infrastructure/network/apis/user/user_local.dart' as _i15;
import 'infrastructure/network/apis/user/user_repository.dart' as _i29;
import 'infrastructure/network/dio_client.dart' as _i19;
import 'presentation/core/app_widget.dart' as _i4;
import 'simple_bloc_delegate.dart' as _i12;

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
  gh.factory<_i4.AppWidget>(() => _i4.AppWidget(alice: get<_i3.Alice>()));
  gh.lazySingleton<_i5.Connectivity>(() => registerModule.connectivity);
  gh.factory<_i6.Env>(() => _i6.EnvDev(), registerFor: {_dev});
  gh.factory<_i6.Env>(() => _i6.EnvProd(), registerFor: {_prod});
  gh.lazySingleton<_i7.GeolocatorPlatform>(
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
  gh.factory<_i19.DioClient>(() =>
      _i19.DioClient(get<_i18.Dio>(), get<_i11.Logger>(), get<_i6.Env>()));
  gh.lazySingleton<_i20.INetworkService>(() => _i21.NetworkService(
      get<_i18.Dio>(),
      get<_i11.Logger>(),
      get<_i13.IStorage>(),
      get<_i5.Connectivity>(),
      get<_i6.Env>()));
  gh.factory<_i22.MapApi>(() => _i22.MapApi(get<_i20.INetworkService>()));
  gh.factory<_i23.MapRepository>(() => _i23.MapRepository(get<_i22.MapApi>()));
  gh.factory<_i24.OrderApi>(
      () => _i24.OrderApi(get<_i20.INetworkService>(), get<_i13.IStorage>()));
  gh.factory<_i25.OrderRepository>(
      () => _i25.OrderRepository(get<_i24.OrderApi>()));
  gh.factory<_i26.PostApi>(() => _i26.PostApi(get<_i19.DioClient>()));
  gh.factory<_i27.TransactionApi>(
      () => _i27.TransactionApi(get<_i19.DioClient>()));
  gh.factory<_i28.UserApi>(
      () => _i28.UserApi(get<_i20.INetworkService>(), get<_i13.IStorage>()));
  gh.factory<_i29.UserRepository>(
      () => _i29.UserRepository(get<_i28.UserApi>(), get<_i15.UserLocal>()));
  gh.factory<_i30.AddressListBloc>(() => _i30.AddressListBloc(
      get<_i29.UserRepository>(), get<_i23.MapRepository>()));
  gh.factory<_i31.AddressMapBloc>(() => _i31.AddressMapBloc(
      get<_i29.UserRepository>(), get<_i23.MapRepository>()));
  gh.factory<_i32.AuthApi>(() => _i32.AuthApi(get<_i19.DioClient>()));
  gh.factory<_i33.AuthRepository>(
      () => _i33.AuthRepository(get<_i32.AuthApi>()));
  gh.factory<_i34.HomeUserBloc>(() => _i34.HomeUserBloc(
      get<_i29.UserRepository>(), get<_i25.OrderRepository>()));
  gh.lazySingleton<_i35.IAuthFacade>(() => _i36.ApiAuthFacade(
      get<_i20.INetworkService>(), get<_i11.Logger>(), get<_i13.IStorage>()));
  gh.lazySingleton<_i37.ICreditRepository>(() =>
      _i38.CreditRepository(get<_i20.INetworkService>(), get<_i11.Logger>()));
  gh.factory<_i39.LoginBloc>(() => _i39.LoginBloc(get<_i35.IAuthFacade>()));
  gh.factory<_i40.RecentHistoryBloc>(
      () => _i40.RecentHistoryBloc(get<_i37.ICreditRepository>()));
  gh.factory<_i41.RegisterBloc>(
      () => _i41.RegisterBloc(get<_i35.IAuthFacade>()));
  gh.factory<_i42.TopUpCreditBloc>(() => _i42.TopUpCreditBloc(
      get<_i37.ICreditRepository>(), get<_i13.IStorage>()));
  gh.factory<_i43.ValidateOtpBloc>(
      () => _i43.ValidateOtpBloc(get<_i35.IAuthFacade>(), get<_i11.Logger>()));
  gh.factory<_i44.WaitingPaymentBloc>(
      () => _i44.WaitingPaymentBloc(get<_i37.ICreditRepository>()));
  gh.factory<_i45.AuthBloc>(() => _i45.AuthBloc(get<_i35.IAuthFacade>()));
  gh.factory<_i46.CreditBloc>(
      () => _i46.CreditBloc(get<_i37.ICreditRepository>()));
  return get;
}

class _$RegisterModule extends _i47.RegisterModule {}
