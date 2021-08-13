// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i18;
import 'package:geolocator/geolocator.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i10;
import 'package:hive_flutter/hive_flutter.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i11;

import 'application/address/list/address_list_bloc.dart' as _i28;
import 'application/address/map/address_map_bloc.dart' as _i29;
import 'application/home/home_user_bloc/home_user_bloc.dart' as _i32;
import 'domain/core/i_network_service.dart' as _i13;
import 'domain/core/i_storage.dart' as _i8;
import 'domain/core/interfaces/i_location_service.dart' as _i5;
import 'domain/core/interfaces/i_network_service.dart' as _i20;
import 'domain/core/interfaces/i_storage.dart' as _i22;
import 'infrastructure/core/location_service.dart' as _i6;
import 'infrastructure/core/network_service.dart' as _i21;
import 'infrastructure/core/register_module.dart' as _i33;
import 'infrastructure/core/storage.dart' as _i9;
import 'infrastructure/network/apis/auth/auth_api.dart' as _i30;
import 'infrastructure/network/apis/auth/auth_repository.dart' as _i31;
import 'infrastructure/network/apis/map/map_api.dart' as _i12;
import 'infrastructure/network/apis/map/map_repository.dart' as _i14;
import 'infrastructure/network/apis/order/order_api.dart' as _i23;
import 'infrastructure/network/apis/order/order_repository.dart' as _i24;
import 'infrastructure/network/apis/transaction/transaction_api.dart' as _i25;
import 'infrastructure/network/apis/user/user_api.dart' as _i26;
import 'infrastructure/network/apis/user/user_local.dart' as _i17;
import 'infrastructure/network/apis/user/user_repository.dart' as _i27;
import 'infrastructure/network/dio_client.dart' as _i19;
import 'infrastructure/network/rest_client.dart' as _i15;
import 'simple_bloc_delegate.dart' as _i16;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Connectivity>(() => registerModule.connectivity);
  gh.lazySingleton<_i4.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i5.ILocationService>(
      () => _i6.LocationService(get<_i7.GeolocatorPlatform>()));
  gh.lazySingleton<_i8.IStorage>(() => _i9.Storage(get<_i10.HiveInterface>()));
  gh.lazySingleton<_i11.Logger>(() => registerModule.logger);
  gh.factory<_i12.MapApi>(() => _i12.MapApi.from(get<_i13.INetworkService>()));
  gh.factory<_i14.MapRepository>(() => _i14.MapRepository(get<_i12.MapApi>()));
  gh.factory<_i15.RestClient>(() => _i15.RestClient());
  gh.factory<_i16.SimpleBlocObserver>(
      () => _i16.SimpleBlocObserver(get<_i11.Logger>()));
  gh.factory<String>(() => registerModule.baseUrlDev,
      instanceName: 'baseUrl', registerFor: {_dev});
  gh.factory<String>(() => registerModule.baseUrl,
      instanceName: 'baseUrl', registerFor: {_prod});
  gh.factory<_i17.UserLocal>(() => _i17.UserLocal());
  gh.lazySingleton<_i18.Dio>(
      () => registerModule.dio(get<String>(instanceName: 'baseUrl')));
  gh.factory<_i19.DioClient>(() => _i19.DioClient(get<_i18.Dio>()));
  gh.lazySingleton<_i20.INetworkService>(() => _i21.NetworkService(
      get<_i18.Dio>(),
      get<_i11.Logger>(),
      get<_i22.IStorage>(),
      get<_i3.Connectivity>()));
  gh.factory<_i23.OrderApi>(() => _i23.OrderApi(get<_i19.DioClient>()));
  gh.factory<_i24.OrderRepository>(
      () => _i24.OrderRepository(get<_i23.OrderApi>()));
  gh.factory<_i25.TransactionApi>(
      () => _i25.TransactionApi(get<_i19.DioClient>()));
  gh.factory<_i26.UserApi>(() => _i26.UserApi(get<_i19.DioClient>()));
  gh.factory<_i27.UserRepository>(
      () => _i27.UserRepository(get<_i26.UserApi>(), get<_i17.UserLocal>()));
  gh.factory<_i28.AddressListBloc>(() => _i28.AddressListBloc(
      get<_i27.UserRepository>(), get<_i14.MapRepository>()));
  gh.factory<_i29.AddressMapBloc>(() => _i29.AddressMapBloc(
      get<_i27.UserRepository>(), get<_i14.MapRepository>()));
  gh.factory<_i30.AuthApi>(() => _i30.AuthApi(get<_i19.DioClient>()));
  gh.factory<_i31.AuthRepository>(
      () => _i31.AuthRepository(get<_i30.AuthApi>()));
  gh.factory<_i32.HomeUserBloc>(() => _i32.HomeUserBloc(
      get<_i27.UserRepository>(), get<_i24.OrderRepository>()));
  return get;
}

class _$RegisterModule extends _i33.RegisterModule {}
