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

import 'application/address/list/address_list_bloc.dart' as _i30;
import 'application/address/map/address_map_bloc.dart' as _i31;
import 'application/auth/auth_bloc.dart' as _i39;
import 'application/auth/login/login_bloc.dart' as _i35;
import 'application/auth/register/register_bloc.dart' as _i37;
import 'application/auth/validate_otp/validate_otp_bloc.dart' as _i38;
import 'application/core/app_bloc.dart' as _i19;
import 'application/home/home_user_bloc/home_user_bloc.dart' as _i32;
import 'application/order/order_bloc.dart' as _i36;
import 'domain/auth/i_auth_facade.dart' as _i33;
import 'domain/core/interfaces/i_location_service.dart' as _i8;
import 'domain/core/interfaces/i_network_service.dart' as _i22;
import 'domain/core/interfaces/i_storage.dart' as _i14;
import 'domain/core/utils/locale/app_localization.dart' as _i3;
import 'infrastructure/auth/api_auth_facade.dart' as _i34;
import 'infrastructure/core/location_service.dart' as _i9;
import 'infrastructure/core/network_service.dart' as _i23;
import 'infrastructure/core/register_module.dart' as _i40;
import 'infrastructure/core/storage.dart' as _i15;
import 'infrastructure/network/apis/auth/auth_api.dart' as _i20;
import 'infrastructure/network/apis/auth/auth_repository.dart' as _i21;
import 'infrastructure/network/apis/map/map_api.dart' as _i24;
import 'infrastructure/network/apis/map/map_repository.dart' as _i25;
import 'infrastructure/network/apis/order/order_api.dart' as _i26;
import 'infrastructure/network/apis/order/order_repository.dart' as _i27;
import 'infrastructure/network/apis/posts/post_api.dart' as _i16;
import 'infrastructure/network/apis/transaction/transaction_api.dart' as _i17;
import 'infrastructure/network/apis/user/user_api.dart' as _i28;
import 'infrastructure/network/apis/user/user_local.dart' as _i18;
import 'infrastructure/network/apis/user/user_repository.dart' as _i29;
import 'infrastructure/network/dio_client.dart' as _i13;
import 'simple_bloc_delegate.dart' as _i11;

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
  gh.factory<_i11.SimpleBlocObserver>(
      () => _i11.SimpleBlocObserver(get<_i10.Logger>()));
  gh.factory<String>(() => registerModule.baseUrl,
      instanceName: 'baseUrl', registerFor: {_prod});
  gh.factory<String>(() => registerModule.baseUrlDev,
      instanceName: 'baseUrl', registerFor: {_dev});
  gh.lazySingleton<_i12.Dio>(
      () => registerModule.dio(get<String>(instanceName: 'baseUrl')));
  gh.factory<_i13.DioClient>(
      () => _i13.DioClient(get<_i12.Dio>(), get<_i10.Logger>()));
  gh.lazySingleton<_i14.IStorage>(
      () => _i15.Storage(get<_i7.HiveInterface>(), get<_i10.Logger>()));
  gh.factory<_i16.PostApi>(() => _i16.PostApi(get<_i13.DioClient>()));
  gh.factory<_i17.TransactionApi>(
      () => _i17.TransactionApi(get<_i13.DioClient>()));
  gh.factory<_i18.UserLocal>(() => _i18.UserLocal(get<_i14.IStorage>()));
  gh.factory<_i19.AppBloc>(() => _i19.AppBloc(get<_i14.IStorage>()));
  gh.factory<_i20.AuthApi>(() => _i20.AuthApi(get<_i13.DioClient>()));
  gh.factory<_i21.AuthRepository>(
      () => _i21.AuthRepository(get<_i20.AuthApi>()));
  gh.lazySingleton<_i22.INetworkService>(() => _i23.NetworkService(
      get<_i12.Dio>(),
      get<_i10.Logger>(),
      get<_i14.IStorage>(),
      get<_i5.Connectivity>()));
  gh.factory<_i24.MapApi>(() => _i24.MapApi(get<_i22.INetworkService>()));
  gh.factory<_i25.MapRepository>(() => _i25.MapRepository(get<_i24.MapApi>()));
  gh.factory<_i26.OrderApi>(
      () => _i26.OrderApi(get<_i22.INetworkService>(), get<_i14.IStorage>()));
  gh.factory<_i27.OrderRepository>(
      () => _i27.OrderRepository(get<_i26.OrderApi>()));
  gh.factory<_i28.UserApi>(
      () => _i28.UserApi(get<_i22.INetworkService>(), get<_i14.IStorage>()));
  gh.factory<_i29.UserRepository>(
      () => _i29.UserRepository(get<_i28.UserApi>(), get<_i18.UserLocal>()));
  gh.factory<_i30.AddressListBloc>(() => _i30.AddressListBloc(
      get<_i29.UserRepository>(), get<_i25.MapRepository>()));
  gh.factory<_i31.AddressMapBloc>(() => _i31.AddressMapBloc(
      get<_i29.UserRepository>(), get<_i25.MapRepository>()));
  gh.factory<_i32.HomeUserBloc>(() => _i32.HomeUserBloc(
      get<_i29.UserRepository>(), get<_i27.OrderRepository>()));
  gh.lazySingleton<_i33.IAuthFacade>(() => _i34.ApiAuthFacade(
      get<_i22.INetworkService>(), get<_i10.Logger>(), get<_i14.IStorage>()));
  gh.factory<_i35.LoginBloc>(() => _i35.LoginBloc(get<_i33.IAuthFacade>()));
  gh.factory<_i36.OrderBloc>(() => _i36.OrderBloc(get<_i27.OrderRepository>()));
  gh.factory<_i37.RegisterBloc>(
      () => _i37.RegisterBloc(get<_i33.IAuthFacade>()));
  gh.factory<_i38.ValidateOtpBloc>(
      () => _i38.ValidateOtpBloc(get<_i33.IAuthFacade>()));
  gh.factory<_i39.AuthBloc>(() => _i39.AuthBloc(get<_i33.IAuthFacade>()));
  return get;
}

class _$RegisterModule extends _i40.RegisterModule {}
