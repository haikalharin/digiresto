// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i5;
import 'package:dio/dio.dart' as _i17;
import 'package:flutter/material.dart' as _i4;
import 'package:geolocator/geolocator.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i12;
import 'package:hive_flutter/hive_flutter.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i13;

import 'application/address/list/address_list_bloc.dart' as _i29;
import 'application/address/map/address_map_bloc.dart' as _i30;
import 'application/home/home_user_bloc/home_user_bloc.dart' as _i33;
import 'application/order/order_bloc.dart' as _i14;
import 'domain/core/i_storage.dart' as _i10;
import 'domain/core/interfaces/i_location_service.dart' as _i7;
import 'domain/core/interfaces/i_network_service.dart' as _i19;
import 'domain/core/interfaces/i_storage.dart' as _i21;
import 'domain/core/utils/locale/app_localization.dart' as _i3;
import 'infrastructure/core/location_service.dart' as _i8;
import 'infrastructure/core/network_service.dart' as _i20;
import 'infrastructure/core/register_module.dart' as _i34;
import 'infrastructure/core/storage.dart' as _i11;
import 'infrastructure/network/apis/auth/auth_api.dart' as _i31;
import 'infrastructure/network/apis/auth/auth_repository.dart' as _i32;
import 'infrastructure/network/apis/map/map_api.dart' as _i22;
import 'infrastructure/network/apis/map/map_repository.dart' as _i23;
import 'infrastructure/network/apis/order/order_api.dart' as _i24;
import 'infrastructure/network/apis/order/order_repository.dart' as _i25;
import 'infrastructure/network/apis/transaction/transaction_api.dart' as _i26;
import 'infrastructure/network/apis/user/user_api.dart' as _i27;
import 'infrastructure/network/apis/user/user_local.dart' as _i16;
import 'infrastructure/network/apis/user/user_repository.dart' as _i28;
import 'infrastructure/network/dio_client.dart' as _i18;
import 'simple_bloc_delegate.dart' as _i15;

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
  gh.lazySingleton<_i6.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i7.ILocationService>(
      () => _i8.LocationService(get<_i9.GeolocatorPlatform>()));
  gh.lazySingleton<_i10.IStorage>(
      () => _i11.Storage(get<_i12.HiveInterface>()));
  gh.lazySingleton<_i13.Logger>(() => registerModule.logger);
  gh.factory<_i14.OrderBloc>(() => _i14.OrderBloc());
  gh.factory<_i15.SimpleBlocObserver>(
      () => _i15.SimpleBlocObserver(get<_i13.Logger>()));
  gh.factory<String>(() => registerModule.baseUrlDev,
      instanceName: 'baseUrl', registerFor: {_dev});
  gh.factory<String>(() => registerModule.baseUrl,
      instanceName: 'baseUrl', registerFor: {_prod});
  gh.factory<_i16.UserLocal>(() => _i16.UserLocal());
  gh.lazySingleton<_i17.Dio>(
      () => registerModule.dio(get<String>(instanceName: 'baseUrl')));
  gh.factory<_i18.DioClient>(() => _i18.DioClient(get<_i17.Dio>()));
  gh.lazySingleton<_i19.INetworkService>(() => _i20.NetworkService(
      get<_i17.Dio>(),
      get<_i13.Logger>(),
      get<_i21.IStorage>(),
      get<_i5.Connectivity>()));
  gh.factory<_i22.MapApi>(() => _i22.MapApi(get<_i18.DioClient>()));
  gh.factory<_i23.MapRepository>(() => _i23.MapRepository(get<_i22.MapApi>()));
  gh.factory<_i24.OrderApi>(() => _i24.OrderApi(get<_i18.DioClient>()));
  gh.factory<_i25.OrderRepository>(
      () => _i25.OrderRepository(get<_i24.OrderApi>()));
  gh.factory<_i26.TransactionApi>(
      () => _i26.TransactionApi(get<_i18.DioClient>()));
  gh.factory<_i27.UserApi>(() => _i27.UserApi(get<_i18.DioClient>()));
  gh.factory<_i28.UserRepository>(
      () => _i28.UserRepository(get<_i27.UserApi>(), get<_i16.UserLocal>()));
  gh.factory<_i29.AddressListBloc>(() => _i29.AddressListBloc(
      get<_i28.UserRepository>(), get<_i23.MapRepository>()));
  gh.factory<_i30.AddressMapBloc>(() => _i30.AddressMapBloc(
      get<_i28.UserRepository>(), get<_i23.MapRepository>()));
  gh.factory<_i31.AuthApi>(() => _i31.AuthApi(get<_i18.DioClient>()));
  gh.factory<_i32.AuthRepository>(
      () => _i32.AuthRepository(get<_i31.AuthApi>()));
  gh.factory<_i33.HomeUserBloc>(() => _i33.HomeUserBloc(
      get<_i28.UserRepository>(), get<_i25.OrderRepository>()));
  return get;
}

class _$RegisterModule extends _i34.RegisterModule {}
