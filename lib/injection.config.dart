// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i22;
import 'package:dio/dio.dart' as _i19;
import 'package:flutter/material.dart' as _i4;
import 'package:geolocator/geolocator.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i12;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i13;

import 'application/address/list/address_list_bloc.dart' as _i31;
import 'application/address/map/address_map_bloc.dart' as _i32;
import 'application/auth/auth_bloc.dart' as _i42;
import 'application/auth/login/login_bloc.dart' as _i38;
import 'application/auth/register/register_bloc.dart' as _i40;
import 'application/auth/validate_otp/validate_otp_bloc.dart' as _i41;
import 'application/core/app_bloc.dart' as _i16;
import 'application/home/home_user_bloc/home_user_bloc.dart' as _i35;
import 'application/order/order_bloc.dart' as _i39;
import 'domain/auth/i_auth_facade.dart' as _i36;
import 'domain/core/constants/network/env.dart' as _i6;
import 'domain/core/interfaces/i_location_service.dart' as _i7;
import 'domain/core/interfaces/i_network_service.dart' as _i20;
import 'domain/core/interfaces/i_storage.dart' as _i10;
import 'domain/core/utils/locale/app_localization.dart' as _i3;
import 'infrastructure/auth/api_auth_facade.dart' as _i37;
import 'infrastructure/core/auth_interceptor.dart' as _i17;
import 'infrastructure/core/location_service.dart' as _i8;
import 'infrastructure/core/network_service.dart' as _i21;
import 'infrastructure/core/storage.dart' as _i11;
import 'infrastructure/network/apis/auth/auth_api.dart' as _i33;
import 'infrastructure/network/apis/auth/auth_repository.dart' as _i34;
import 'infrastructure/network/apis/map/map_api.dart' as _i23;
import 'infrastructure/network/apis/map/map_repository.dart' as _i24;
import 'infrastructure/network/apis/order/order_api.dart' as _i25;
import 'infrastructure/network/apis/order/order_repository.dart' as _i26;
import 'infrastructure/network/apis/posts/post_api.dart' as _i27;
import 'infrastructure/network/apis/transaction/transaction_api.dart' as _i28;
import 'infrastructure/network/apis/user/user_api.dart' as _i29;
import 'infrastructure/network/apis/user/user_local.dart' as _i15;
import 'infrastructure/network/apis/user/user_repository.dart' as _i30;
import 'infrastructure/network/dio_client.dart' as _i18;
import 'presentation/core/app_widget.dart' as _i5;
import 'simple_bloc_delegate.dart' as _i14;

const String _prod = 'prod';
const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AppLocalizations>(
      () => _i3.AppLocalizations(get<_i4.Locale>()));
  gh.factory<_i5.AppWidget>(() => _i5.AppWidget(alice: get<dynamic>()));
  gh.factory<_i6.Env>(() => _i6.EnvProd(), registerFor: {_prod});
  gh.factory<_i6.Env>(() => _i6.EnvDev(), registerFor: {_dev});
  gh.lazySingleton<_i7.ILocationService>(
      () => _i8.LocationService(get<_i9.GeolocatorPlatform>()));
  gh.lazySingleton<_i10.IStorage>(
      () => _i11.Storage(get<_i12.HiveInterface>(), get<_i13.Logger>()));
  gh.factory<_i14.SimpleBlocObserver>(
      () => _i14.SimpleBlocObserver(get<_i13.Logger>()));
  gh.factory<_i15.UserLocal>(() => _i15.UserLocal(get<_i10.IStorage>()));
  gh.factory<_i16.AppBloc>(() => _i16.AppBloc(get<_i10.IStorage>()));
  gh.factory<_i17.AuthInterceptor>(
      () => _i17.AuthInterceptor(get<_i10.IStorage>()));
  gh.factory<_i18.DioClient>(() =>
      _i18.DioClient(get<_i19.Dio>(), get<_i13.Logger>(), get<_i6.Env>()));
  gh.lazySingleton<_i20.INetworkService>(() => _i21.NetworkService(
      get<_i19.Dio>(),
      get<_i13.Logger>(),
      get<_i10.IStorage>(),
      get<_i22.Connectivity>(),
      get<_i6.Env>()));
  gh.factory<_i23.MapApi>(() => _i23.MapApi(get<_i20.INetworkService>()));
  gh.factory<_i24.MapRepository>(() => _i24.MapRepository(get<_i23.MapApi>()));
  gh.factory<_i25.OrderApi>(
      () => _i25.OrderApi(get<_i20.INetworkService>(), get<_i10.IStorage>()));
  gh.factory<_i26.OrderRepository>(
      () => _i26.OrderRepository(get<_i25.OrderApi>()));
  gh.factory<_i27.PostApi>(() => _i27.PostApi(get<_i20.INetworkService>()));
  gh.factory<_i28.TransactionApi>(
      () => _i28.TransactionApi(get<_i20.INetworkService>()));
  gh.factory<_i29.UserApi>(
      () => _i29.UserApi(get<_i20.INetworkService>(), get<_i10.IStorage>()));
  gh.factory<_i30.UserRepository>(
      () => _i30.UserRepository(get<_i29.UserApi>(), get<_i15.UserLocal>()));
  gh.factory<_i31.AddressListBloc>(() => _i31.AddressListBloc(
      get<_i30.UserRepository>(), get<_i24.MapRepository>()));
  gh.factory<_i32.AddressMapBloc>(() => _i32.AddressMapBloc(
      get<_i30.UserRepository>(), get<_i24.MapRepository>()));
  gh.factory<_i33.AuthApi>(() => _i33.AuthApi(get<_i20.INetworkService>()));
  gh.factory<_i34.AuthRepository>(
      () => _i34.AuthRepository(get<_i33.AuthApi>()));
  gh.factory<_i35.HomeUserBloc>(() => _i35.HomeUserBloc(
      get<_i30.UserRepository>(), get<_i26.OrderRepository>()));
  gh.lazySingleton<_i36.IAuthFacade>(() => _i37.ApiAuthFacade(
      get<_i20.INetworkService>(), get<_i13.Logger>(), get<_i10.IStorage>()));
  gh.factory<_i38.LoginBloc>(() => _i38.LoginBloc(get<_i36.IAuthFacade>()));
  gh.factory<_i39.OrderBloc>(() =>
      _i39.OrderBloc(get<_i26.OrderRepository>(), get<_i30.UserRepository>()));
  gh.factory<_i40.RegisterBloc>(
      () => _i40.RegisterBloc(get<_i36.IAuthFacade>()));
  gh.factory<_i41.ValidateOtpBloc>(
      () => _i41.ValidateOtpBloc(get<_i36.IAuthFacade>(), get<_i13.Logger>()));
  gh.factory<_i42.AuthBloc>(() => _i42.AuthBloc(get<_i36.IAuthFacade>()));
  return get;
}
