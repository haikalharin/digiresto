// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:alice/alice.dart' as _i3;
import 'package:connectivity_plus/connectivity_plus.dart' as _i7;
import 'package:dio/dio.dart' as _i21;
import 'package:flutter/material.dart' as _i5;
import 'package:geolocator/geolocator.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i10;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i13;

import 'application/address/list/address_list_bloc.dart' as _i33;
import 'application/address/map/address_map_bloc.dart' as _i34;
import 'application/auth/auth_bloc.dart' as _i44;
import 'application/auth/login/login_bloc.dart' as _i40;
import 'application/auth/register/register_bloc.dart' as _i42;
import 'application/auth/validate_otp/validate_otp_bloc.dart' as _i43;
import 'application/core/app_bloc.dart' as _i19;
import 'application/home/home_user_bloc/home_user_bloc.dart' as _i37;
import 'application/order/bloc/order_bloc.dart' as _i41;
import 'domain/auth/i_auth_facade.dart' as _i38;
import 'domain/core/constants/network/env.dart' as _i8;
import 'domain/core/interfaces/i_location_service.dart' as _i11;
import 'domain/core/interfaces/i_network_service.dart' as _i23;
import 'domain/core/interfaces/i_storage.dart' as _i15;
import 'domain/core/utils/locale/app_localization.dart' as _i4;
import 'infrastructure/auth/api_auth_facade.dart' as _i39;
import 'infrastructure/core/auth_interceptor.dart' as _i20;
import 'infrastructure/core/location_service.dart' as _i12;
import 'infrastructure/core/network_service.dart' as _i24;
import 'infrastructure/core/register_module.dart' as _i45;
import 'infrastructure/core/storage.dart' as _i16;
import 'infrastructure/network/apis/auth/auth_api.dart' as _i35;
import 'infrastructure/network/apis/auth/auth_repository.dart' as _i36;
import 'infrastructure/network/apis/map/map_api.dart' as _i25;
import 'infrastructure/network/apis/map/map_repository.dart' as _i26;
import 'infrastructure/network/apis/order/order_api.dart' as _i27;
import 'infrastructure/network/apis/order/order_local.dart' as _i17;
import 'infrastructure/network/apis/order/order_repository.dart' as _i28;
import 'infrastructure/network/apis/posts/post_api.dart' as _i29;
import 'infrastructure/network/apis/transaction/transaction_api.dart' as _i30;
import 'infrastructure/network/apis/user/user_api.dart' as _i31;
import 'infrastructure/network/apis/user/user_local.dart' as _i18;
import 'infrastructure/network/apis/user/user_repository.dart' as _i32;
import 'infrastructure/network/dio_client.dart' as _i22;
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
  gh.factory<_i17.OrderLocal>(() => _i17.OrderLocal(get<_i15.IStorage>()));
  gh.factory<_i18.UserLocal>(() => _i18.UserLocal(get<_i15.IStorage>()));
  gh.factory<_i19.AppBloc>(() => _i19.AppBloc(get<_i15.IStorage>()));
  gh.factory<_i20.AuthInterceptor>(
      () => _i20.AuthInterceptor(get<_i15.IStorage>()));
  await gh.lazySingletonAsync<_i21.Dio>(
      () => registerModule.dio(get<_i3.Alice>(), get<_i15.IStorage>()),
      preResolve: true);
  gh.factory<_i22.DioClient>(() =>
      _i22.DioClient(get<_i21.Dio>(), get<_i13.Logger>(), get<_i8.Env>()));
  gh.lazySingleton<_i23.INetworkService>(() => _i24.NetworkService(
      get<_i21.Dio>(),
      get<_i13.Logger>(),
      get<_i15.IStorage>(),
      get<_i7.Connectivity>(),
      get<_i8.Env>()));
  gh.factory<_i25.MapApi>(() => _i25.MapApi(get<_i23.INetworkService>()));
  gh.factory<_i26.MapRepository>(() => _i26.MapRepository(get<_i25.MapApi>()));
  gh.factory<_i27.OrderApi>(
      () => _i27.OrderApi(get<_i23.INetworkService>(), get<_i15.IStorage>()));
  gh.factory<_i28.OrderRepository>(
      () => _i28.OrderRepository(get<_i27.OrderApi>(), get<_i17.OrderLocal>()));
  gh.factory<_i29.PostApi>(() => _i29.PostApi(get<_i23.INetworkService>()));
  gh.factory<_i30.TransactionApi>(
      () => _i30.TransactionApi(get<_i23.INetworkService>()));
  gh.factory<_i31.UserApi>(
      () => _i31.UserApi(get<_i23.INetworkService>(), get<_i15.IStorage>()));
  gh.factory<_i32.UserRepository>(
      () => _i32.UserRepository(get<_i31.UserApi>(), get<_i18.UserLocal>()));
  gh.factory<_i33.AddressListBloc>(() => _i33.AddressListBloc(
      get<_i32.UserRepository>(), get<_i26.MapRepository>()));
  gh.factory<_i34.AddressMapBloc>(() => _i34.AddressMapBloc(
      get<_i32.UserRepository>(), get<_i26.MapRepository>()));
  gh.factory<_i35.AuthApi>(() => _i35.AuthApi(get<_i23.INetworkService>()));
  gh.factory<_i36.AuthRepository>(
      () => _i36.AuthRepository(get<_i35.AuthApi>()));
  gh.factory<_i37.HomeUserBloc>(() => _i37.HomeUserBloc(
      get<_i32.UserRepository>(), get<_i28.OrderRepository>()));
  gh.lazySingleton<_i38.IAuthFacade>(() => _i39.ApiAuthFacade(
      get<_i23.INetworkService>(), get<_i13.Logger>(), get<_i15.IStorage>()));
  gh.factory<_i40.LoginBloc>(() => _i40.LoginBloc(get<_i38.IAuthFacade>()));
  gh.factory<_i41.OrderBloc>(() =>
      _i41.OrderBloc(get<_i28.OrderRepository>(), get<_i32.UserRepository>()));
  gh.factory<_i42.RegisterBloc>(
      () => _i42.RegisterBloc(get<_i38.IAuthFacade>()));
  gh.factory<_i43.ValidateOtpBloc>(
      () => _i43.ValidateOtpBloc(get<_i38.IAuthFacade>(), get<_i13.Logger>()));
  gh.factory<_i44.AuthBloc>(() => _i44.AuthBloc(get<_i38.IAuthFacade>()));
  return get;
}

class _$RegisterModule extends _i45.RegisterModule {}
