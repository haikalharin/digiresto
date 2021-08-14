// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i14;
import 'package:geolocator/geolocator.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i10;
import 'package:hive_flutter/hive_flutter.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i11;

import 'application/address/list/address_list_bloc.dart' as _i26;
import 'application/address/map/address_map_bloc.dart' as _i27;
import 'application/home/home_user_bloc/home_user_bloc.dart' as _i30;
import 'domain/core/i_storage.dart' as _i8;
import 'domain/core/interfaces/i_location_service.dart' as _i5;
import 'domain/core/interfaces/i_network_service.dart' as _i16;
import 'domain/core/interfaces/i_storage.dart' as _i18;
import 'infrastructure/core/location_service.dart' as _i6;
import 'infrastructure/core/network_service.dart' as _i17;
import 'infrastructure/core/register_module.dart' as _i31;
import 'infrastructure/core/storage.dart' as _i9;
import 'infrastructure/network/apis/auth/auth_api.dart' as _i28;
import 'infrastructure/network/apis/auth/auth_repository.dart' as _i29;
import 'infrastructure/network/apis/map/map_api.dart' as _i19;
import 'infrastructure/network/apis/map/map_repository.dart' as _i20;
import 'infrastructure/network/apis/order/order_api.dart' as _i21;
import 'infrastructure/network/apis/order/order_repository.dart' as _i22;
import 'infrastructure/network/apis/transaction/transaction_api.dart' as _i23;
import 'infrastructure/network/apis/user/user_api.dart' as _i24;
import 'infrastructure/network/apis/user/user_local.dart' as _i13;
import 'infrastructure/network/apis/user/user_repository.dart' as _i25;
import 'infrastructure/network/dio_client.dart' as _i15;
import 'simple_bloc_delegate.dart' as _i12;

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
  gh.factory<_i12.SimpleBlocObserver>(
      () => _i12.SimpleBlocObserver(get<_i11.Logger>()));
  gh.factory<String>(() => registerModule.baseUrlDev,
      instanceName: 'baseUrl', registerFor: {_dev});
  gh.factory<String>(() => registerModule.baseUrl,
      instanceName: 'baseUrl', registerFor: {_prod});
  gh.factory<_i13.UserLocal>(() => _i13.UserLocal());
  gh.lazySingleton<_i14.Dio>(
      () => registerModule.dio(get<String>(instanceName: 'baseUrl')));
  gh.factory<_i15.DioClient>(() => _i15.DioClient(get<_i14.Dio>()));
  gh.lazySingleton<_i16.INetworkService>(() => _i17.NetworkService(
      get<_i14.Dio>(),
      get<_i11.Logger>(),
      get<_i18.IStorage>(),
      get<_i3.Connectivity>()));
  gh.factory<_i19.MapApi>(() => _i19.MapApi(get<_i15.DioClient>()));
  gh.factory<_i20.MapRepository>(() => _i20.MapRepository(get<_i19.MapApi>()));
  gh.factory<_i21.OrderApi>(() => _i21.OrderApi(get<_i15.DioClient>()));
  gh.factory<_i22.OrderRepository>(
      () => _i22.OrderRepository(get<_i21.OrderApi>()));
  gh.factory<_i23.TransactionApi>(
      () => _i23.TransactionApi(get<_i15.DioClient>()));
  gh.factory<_i24.UserApi>(() => _i24.UserApi(get<_i15.DioClient>()));
  gh.factory<_i25.UserRepository>(
      () => _i25.UserRepository(get<_i24.UserApi>(), get<_i13.UserLocal>()));
  gh.factory<_i26.AddressListBloc>(() => _i26.AddressListBloc(
      get<_i25.UserRepository>(), get<_i20.MapRepository>()));
  gh.factory<_i27.AddressMapBloc>(() => _i27.AddressMapBloc(
      get<_i25.UserRepository>(), get<_i20.MapRepository>()));
  gh.factory<_i28.AuthApi>(() => _i28.AuthApi(get<_i15.DioClient>()));
  gh.factory<_i29.AuthRepository>(
      () => _i29.AuthRepository(get<_i28.AuthApi>()));
  gh.factory<_i30.HomeUserBloc>(() => _i30.HomeUserBloc(
      get<_i25.UserRepository>(), get<_i22.OrderRepository>()));
  return get;
}

class _$RegisterModule extends _i31.RegisterModule {}
