// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i11;
import 'package:dio/dio.dart' as _i8;
import 'package:geolocator/geolocator.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i14;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i9;

import 'application/address/list/address_list_bloc.dart' as _i27;
import 'application/address/map/address_map_bloc.dart' as _i28;
import 'application/home/home_user_bloc/home_user_bloc.dart' as _i31;
import 'domain/core/i_storage.dart' as _i12;
import 'domain/core/interfaces/i_location_service.dart' as _i3;
import 'domain/core/interfaces/i_network_service.dart' as _i6;
import 'domain/core/interfaces/i_storage.dart' as _i10;
import 'infrastructure/core/location_service.dart' as _i4;
import 'infrastructure/core/network_service.dart' as _i7;
import 'infrastructure/core/register_module.dart' as _i15;
import 'infrastructure/core/storage.dart' as _i13;
import 'infrastructure/network/apis/auth/auth_api.dart' as _i29;
import 'infrastructure/network/apis/auth/auth_repository.dart' as _i30;
import 'infrastructure/network/apis/map/map_api.dart' as _i20;
import 'infrastructure/network/apis/map/map_repository.dart' as _i21;
import 'infrastructure/network/apis/order/order_api.dart' as _i22;
import 'infrastructure/network/apis/order/order_repository.dart' as _i23;
import 'infrastructure/network/apis/transaction/transaction_api.dart' as _i24;
import 'infrastructure/network/apis/user/user_api.dart' as _i25;
import 'infrastructure/network/apis/user/user_local.dart' as _i18;
import 'infrastructure/network/apis/user/user_repository.dart' as _i26;
import 'infrastructure/network/dio_client.dart' as _i19;
import 'infrastructure/network/rest_client.dart' as _i16;
import 'simple_bloc_delegate.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.ILocationService>(
      () => _i4.LocationService(get<_i5.GeolocatorPlatform>()));
  gh.lazySingleton<_i6.INetworkService>(() => _i7.NetworkService(get<_i8.Dio>(),
      get<_i9.Logger>(), get<_i10.IStorage>(), get<_i11.Connectivity>()));
  gh.lazySingleton<_i12.IStorage>(
      () => _i13.Storage(get<_i14.HiveInterface>()));
  gh.factory<_i15.RegisterModule>(() => _i15.RegisterModule());
  gh.factory<_i16.RestClient>(() => _i16.RestClient());
  gh.factory<_i17.SimpleBlocObserver>(
      () => _i17.SimpleBlocObserver(get<_i9.Logger>()));
  gh.factory<_i18.UserLocal>(() => _i18.UserLocal(get<_i15.RegisterModule>()));
  gh.factory<_i19.DioClient>(
      () => _i19.DioClient(registerModule: get<_i15.RegisterModule>()));
  gh.factory<_i20.MapApi>(
      () => _i20.MapApi(get<_i19.DioClient>(), get<_i16.RestClient>()));
  gh.factory<_i21.MapRepository>(() => _i21.MapRepository(get<_i20.MapApi>()));
  gh.factory<_i22.OrderApi>(
      () => _i22.OrderApi(get<_i19.DioClient>(), get<_i16.RestClient>()));
  gh.factory<_i23.OrderRepository>(
      () => _i23.OrderRepository(get<_i22.OrderApi>()));
  gh.factory<_i24.TransactionApi>(
      () => _i24.TransactionApi(get<_i19.DioClient>(), get<_i16.RestClient>()));
  gh.factory<_i25.UserApi>(
      () => _i25.UserApi(get<_i19.DioClient>(), get<_i16.RestClient>()));
  gh.factory<_i26.UserRepository>(
      () => _i26.UserRepository(get<_i25.UserApi>(), get<_i18.UserLocal>()));
  gh.factory<_i27.AddressListBloc>(
      () => _i27.AddressListBloc(get<_i26.UserRepository>()));
  gh.factory<_i28.AddressMapBloc>(() => _i28.AddressMapBloc(
      get<_i26.UserRepository>(), get<_i21.MapRepository>()));
  gh.factory<_i29.AuthApi>(
      () => _i29.AuthApi(get<_i19.DioClient>(), get<_i16.RestClient>()));
  gh.factory<_i30.AuthRepository>(
      () => _i30.AuthRepository(get<_i29.AuthApi>()));
  gh.factory<_i31.HomeUserBloc>(() => _i31.HomeUserBloc(
      get<_i26.UserRepository>(), get<_i23.OrderRepository>()));
  return get;
}
