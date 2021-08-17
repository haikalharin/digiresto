// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i5;
import 'package:dio/dio.dart' as _i13;
import 'package:flutter/material.dart' as _i4;
import 'package:geolocator/geolocator.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i10;

import 'application/address/list/address_list_bloc.dart' as _i31;
import 'application/address/map/address_map_bloc.dart' as _i32;
import 'application/auth/auth_bloc.dart' as _i39;
import 'application/auth/login/login_bloc.dart' as _i36;
import 'application/auth/register/register_bloc.dart' as _i37;
import 'application/auth/validate_otp/validate_otp_bloc.dart' as _i38;
import 'application/core/app_bloc.dart' as _i20;
import 'application/home/home_user_bloc/home_user_bloc.dart' as _i33;
import 'application/order/order_bloc.dart' as _i11;
import 'domain/auth/i_auth_facade.dart' as _i34;
import 'domain/core/interfaces/i_location_service.dart' as _i8;
import 'domain/core/interfaces/i_network_service.dart' as _i23;
import 'domain/core/interfaces/i_storage.dart' as _i15;
import 'domain/core/utils/locale/app_localization.dart' as _i3;
import 'infrastructure/auth/api_auth_facade.dart' as _i35;
import 'infrastructure/core/location_service.dart' as _i9;
import 'infrastructure/core/network_service.dart' as _i24;
import 'infrastructure/core/register_module.dart' as _i40;
import 'infrastructure/core/storage.dart' as _i16;
import 'infrastructure/network/apis/auth/auth_api.dart' as _i21;
import 'infrastructure/network/apis/auth/auth_repository.dart' as _i22;
import 'infrastructure/network/apis/map/map_api.dart' as _i25;
import 'infrastructure/network/apis/map/map_repository.dart' as _i26;
import 'infrastructure/network/apis/order/order_api.dart' as _i27;
import 'infrastructure/network/apis/order/order_repository.dart' as _i28;
import 'infrastructure/network/apis/posts/post_api.dart' as _i17;
import 'infrastructure/network/apis/transaction/transaction_api.dart' as _i18;
import 'infrastructure/network/apis/user/user_api.dart' as _i29;
import 'infrastructure/network/apis/user/user_local.dart' as _i19;
import 'infrastructure/network/apis/user/user_repository.dart' as _i30;
import 'infrastructure/network/dio_client.dart' as _i14;
import 'simple_bloc_delegate.dart' as _i12;

const String _prod = 'prod';
const String _dev = 'dev';
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
  gh.factory<_i11.OrderBloc>(() => _i11.OrderBloc());
  gh.factory<_i12.SimpleBlocObserver>(
      () => _i12.SimpleBlocObserver(get<_i10.Logger>()));
  gh.factory<String>(() => registerModule.baseUrl,
      instanceName: 'baseUrl', registerFor: {_prod});
  gh.factory<String>(() => registerModule.baseUrlDev,
      instanceName: 'baseUrl', registerFor: {_dev});
  gh.lazySingleton<_i13.Dio>(
      () => registerModule.dio(get<String>(instanceName: 'baseUrl')));
  gh.factory<_i14.DioClient>(
      () => _i14.DioClient(get<_i13.Dio>(), get<_i10.Logger>()));
  gh.lazySingleton<_i15.IStorage>(
      () => _i16.Storage(get<_i7.HiveInterface>(), get<_i10.Logger>()));
  gh.factory<_i17.PostApi>(() => _i17.PostApi(get<_i14.DioClient>()));
  gh.factory<_i18.TransactionApi>(
      () => _i18.TransactionApi(get<_i14.DioClient>()));
  gh.factory<_i19.UserLocal>(() => _i19.UserLocal(get<_i15.IStorage>()));
  gh.factory<_i20.AppBloc>(() => _i20.AppBloc(get<_i15.IStorage>()));
  gh.factory<_i21.AuthApi>(() => _i21.AuthApi(get<_i14.DioClient>()));
  gh.factory<_i22.AuthRepository>(
      () => _i22.AuthRepository(get<_i21.AuthApi>()));
  gh.lazySingleton<_i23.INetworkService>(() => _i24.NetworkService(
      get<_i13.Dio>(),
      get<_i10.Logger>(),
      get<_i15.IStorage>(),
      get<_i5.Connectivity>()));
  gh.factory<_i25.MapApi>(() => _i25.MapApi(get<_i23.INetworkService>()));
  gh.factory<_i26.MapRepository>(() => _i26.MapRepository(get<_i25.MapApi>()));
  gh.factory<_i27.OrderApi>(
      () => _i27.OrderApi(get<_i23.INetworkService>(), get<_i15.IStorage>()));
  gh.factory<_i28.OrderRepository>(
      () => _i28.OrderRepository(get<_i27.OrderApi>()));
  gh.factory<_i29.UserApi>(
      () => _i29.UserApi(get<_i23.INetworkService>(), get<_i15.IStorage>()));
  gh.factory<_i30.UserRepository>(
      () => _i30.UserRepository(get<_i29.UserApi>(), get<_i19.UserLocal>()));
  gh.factory<_i31.AddressListBloc>(() => _i31.AddressListBloc(
      get<_i30.UserRepository>(), get<_i26.MapRepository>()));
  gh.factory<_i32.AddressMapBloc>(() => _i32.AddressMapBloc(
      get<_i30.UserRepository>(), get<_i26.MapRepository>()));
  gh.factory<_i33.HomeUserBloc>(() => _i33.HomeUserBloc(
      get<_i30.UserRepository>(), get<_i28.OrderRepository>()));
  gh.lazySingleton<_i34.IAuthFacade>(() => _i35.ApiAuthFacade(
      get<_i23.INetworkService>(), get<_i10.Logger>(), get<_i15.IStorage>()));
  gh.factory<_i36.LoginBloc>(() => _i36.LoginBloc(get<_i34.IAuthFacade>()));
  gh.factory<_i37.RegisterBloc>(
      () => _i37.RegisterBloc(get<_i34.IAuthFacade>()));
  gh.factory<_i38.ValidateOtpBloc>(
      () => _i38.ValidateOtpBloc(get<_i34.IAuthFacade>()));
  gh.factory<_i39.AuthBloc>(() => _i39.AuthBloc(get<_i34.IAuthFacade>()));
  return get;
}

class _$RegisterModule extends _i40.RegisterModule {}
