// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i5;
import 'package:dio/dio.dart' as _i12;
import 'package:flutter/material.dart' as _i4;
import 'package:geolocator/geolocator.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i10;

import 'application/address/list/address_list_bloc.dart' as _i27;
import 'application/address/map/address_map_bloc.dart' as _i28;
import 'application/auth/auth_bloc.dart' as _i38;
import 'application/auth/login/login_bloc.dart' as _i34;
import 'application/auth/register/register_bloc.dart' as _i36;
import 'application/auth/validate_otp/validate_otp_bloc.dart' as _i37;
import 'application/core/app_bloc.dart' as _i16;
import 'application/home/home_user_bloc/home_user_bloc.dart' as _i31;
import 'application/order/order_bloc.dart' as _i35;
import 'domain/auth/i_auth_facade.dart' as _i32;
import 'domain/core/interfaces/i_location_service.dart' as _i8;
import 'domain/core/interfaces/i_network_service.dart' as _i17;
import 'domain/core/interfaces/i_storage.dart' as _i13;
import 'domain/core/utils/locale/app_localization.dart' as _i3;
import 'infrastructure/auth/api_auth_facade.dart' as _i33;
import 'infrastructure/core/location_service.dart' as _i9;
import 'infrastructure/core/network_service.dart' as _i18;
import 'infrastructure/core/register_module.dart' as _i39;
import 'infrastructure/core/storage.dart' as _i14;
import 'infrastructure/network/apis/auth/auth_api.dart' as _i29;
import 'infrastructure/network/apis/auth/auth_repository.dart' as _i30;
import 'infrastructure/network/apis/map/map_api.dart' as _i19;
import 'infrastructure/network/apis/map/map_repository.dart' as _i20;
import 'infrastructure/network/apis/order/order_api.dart' as _i21;
import 'infrastructure/network/apis/order/order_repository.dart' as _i22;
import 'infrastructure/network/apis/posts/post_api.dart' as _i23;
import 'infrastructure/network/apis/transaction/transaction_api.dart' as _i24;
import 'infrastructure/network/apis/user/user_api.dart' as _i25;
import 'infrastructure/network/apis/user/user_local.dart' as _i15;
import 'infrastructure/network/apis/user/user_repository.dart' as _i26;
import 'simple_bloc_delegate.dart' as _i11;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AppLocalizations>(
      () => _i3.AppLocalizations(get<_i4.Locale>()));
  gh.lazySingleton<_i5.Connectivity>(() => registerModule.connectivity);
  gh.lazySingleton<_i6.GeolocatorPlatform>(
      () => registerModule.goelocatorPlatform);
  gh.lazySingleton<_i7.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i8.ILocationService>(
      () => _i9.LocationService(get<_i6.GeolocatorPlatform>()));
  gh.lazySingleton<_i10.Logger>(() => registerModule.logger);
  gh.factory<_i11.SimpleBlocObserver>(
      () => _i11.SimpleBlocObserver(get<_i10.Logger>()));
  gh.factory<String>(() => registerModule.baseUrlDev,
      instanceName: 'baseUrl', registerFor: {_dev});
  gh.factory<String>(() => registerModule.baseUrl,
      instanceName: 'baseUrl', registerFor: {_prod});
  gh.lazySingleton<_i12.Dio>(
      () => registerModule.dio(get<String>(instanceName: 'baseUrl')));
  gh.lazySingleton<_i13.IStorage>(
      () => _i14.Storage(get<_i7.HiveInterface>(), get<_i10.Logger>()));
  gh.factory<_i15.UserLocal>(() => _i15.UserLocal(get<_i13.IStorage>()));
  gh.factory<_i16.AppBloc>(() => _i16.AppBloc(get<_i13.IStorage>()));
  gh.lazySingleton<_i17.INetworkService>(() => _i18.NetworkService(
      get<_i12.Dio>(),
      get<_i10.Logger>(),
      get<_i13.IStorage>(),
      get<_i5.Connectivity>()));
  gh.factory<_i19.MapApi>(() => _i19.MapApi(get<_i17.INetworkService>()));
  gh.factory<_i20.MapRepository>(() => _i20.MapRepository(get<_i19.MapApi>()));
  gh.factory<_i21.OrderApi>(
      () => _i21.OrderApi(get<_i17.INetworkService>(), get<_i13.IStorage>()));
  gh.factory<_i22.OrderRepository>(
      () => _i22.OrderRepository(get<_i21.OrderApi>()));
  gh.factory<_i23.PostApi>(() => _i23.PostApi(get<_i17.INetworkService>()));
  gh.factory<_i24.TransactionApi>(
      () => _i24.TransactionApi(get<_i17.INetworkService>()));
  gh.factory<_i25.UserApi>(
      () => _i25.UserApi(get<_i17.INetworkService>(), get<_i13.IStorage>()));
  gh.factory<_i26.UserRepository>(
      () => _i26.UserRepository(get<_i25.UserApi>(), get<_i15.UserLocal>()));
  gh.factory<_i27.AddressListBloc>(() => _i27.AddressListBloc(
      get<_i26.UserRepository>(), get<_i20.MapRepository>()));
  gh.factory<_i28.AddressMapBloc>(() => _i28.AddressMapBloc(
      get<_i26.UserRepository>(), get<_i20.MapRepository>()));
  gh.factory<_i29.AuthApi>(() => _i29.AuthApi(get<_i17.INetworkService>()));
  gh.factory<_i30.AuthRepository>(
      () => _i30.AuthRepository(get<_i29.AuthApi>()));
  gh.factory<_i31.HomeUserBloc>(() => _i31.HomeUserBloc(
      get<_i26.UserRepository>(), get<_i22.OrderRepository>()));
  gh.lazySingleton<_i32.IAuthFacade>(() => _i33.ApiAuthFacade(
      get<_i17.INetworkService>(), get<_i10.Logger>(), get<_i13.IStorage>()));
  gh.factory<_i34.LoginBloc>(() => _i34.LoginBloc(get<_i32.IAuthFacade>()));
  gh.factory<_i35.OrderBloc>(() =>
      _i35.OrderBloc(get<_i22.OrderRepository>(), get<_i26.UserRepository>()));
  gh.factory<_i36.RegisterBloc>(
      () => _i36.RegisterBloc(get<_i32.IAuthFacade>()));
  gh.factory<_i37.ValidateOtpBloc>(
      () => _i37.ValidateOtpBloc(get<_i32.IAuthFacade>()));
  gh.factory<_i38.AuthBloc>(() => _i38.AuthBloc(get<_i32.IAuthFacade>()));
  return get;
}

class _$RegisterModule extends _i39.RegisterModule {}
