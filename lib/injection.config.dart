// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:geolocator/geolocator.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i10;

import 'application/address/list/address_list_bloc.dart' as _i29;
import 'application/address/map/address_map_bloc.dart' as _i30;
import 'application/auth/auth_bloc.dart' as _i37;
import 'application/auth/login/login_bloc.dart' as _i34;
import 'application/auth/register/register_bloc.dart' as _i35;
import 'application/auth/validate_otp/validate_otp_bloc.dart' as _i36;
import 'application/core/app_bloc.dart' as _i18;
import 'application/home/home_user_bloc/home_user_bloc.dart' as _i31;
import 'domain/auth/i_auth_facade.dart' as _i32;
import 'domain/core/constants/network/env.dart' as _i5;
import 'domain/core/interfaces/i_location_service.dart' as _i8;
import 'domain/core/interfaces/i_network_service.dart' as _i21;
import 'domain/core/interfaces/i_storage.dart' as _i13;
import 'infrastructure/auth/api_auth_facade.dart' as _i33;
import 'infrastructure/core/location_service.dart' as _i9;
import 'infrastructure/core/network_service.dart' as _i22;
import 'infrastructure/core/register_module.dart' as _i38;
import 'infrastructure/core/storage.dart' as _i14;
import 'infrastructure/network/apis/auth/auth_api.dart' as _i19;
import 'infrastructure/network/apis/auth/auth_repository.dart' as _i20;
import 'infrastructure/network/apis/map/map_api.dart' as _i23;
import 'infrastructure/network/apis/map/map_repository.dart' as _i24;
import 'infrastructure/network/apis/order/order_api.dart' as _i25;
import 'infrastructure/network/apis/order/order_repository.dart' as _i26;
import 'infrastructure/network/apis/posts/post_api.dart' as _i15;
import 'infrastructure/network/apis/transaction/transaction_api.dart' as _i16;
import 'infrastructure/network/apis/user/user_api.dart' as _i27;
import 'infrastructure/network/apis/user/user_local.dart' as _i17;
import 'infrastructure/network/apis/user/user_repository.dart' as _i28;
import 'infrastructure/network/dio_client.dart' as _i12;
import 'simple_bloc_delegate.dart' as _i11;

const String _prod = 'prod';
const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Connectivity>(() => registerModule.connectivity);
  await gh.lazySingletonAsync<_i4.Dio>(() => registerModule.dio,
      preResolve: true);
  gh.factory<_i5.Env>(() => _i5.EnvProd(), registerFor: {_prod});
  gh.factory<_i5.Env>(() => _i5.EnvDev(), registerFor: {_dev});
  gh.lazySingleton<_i6.GeolocatorPlatform>(
      () => registerModule.goelocatorPlatform);
  gh.lazySingleton<_i7.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i8.ILocationService>(
      () => _i9.LocationService(get<_i6.GeolocatorPlatform>()));
  gh.lazySingleton<_i10.Logger>(() => registerModule.logger);
  gh.factory<_i11.SimpleBlocObserver>(
      () => _i11.SimpleBlocObserver(get<_i10.Logger>()));
  gh.factory<_i12.DioClient>(
      () => _i12.DioClient(get<_i4.Dio>(), get<_i10.Logger>(), get<_i5.Env>()));
  gh.lazySingleton<_i13.IStorage>(
      () => _i14.Storage(get<_i7.HiveInterface>(), get<_i10.Logger>()));
  gh.factory<_i15.PostApi>(() => _i15.PostApi(get<_i12.DioClient>()));
  gh.factory<_i16.TransactionApi>(
      () => _i16.TransactionApi(get<_i12.DioClient>()));
  gh.factory<_i17.UserLocal>(() => _i17.UserLocal(get<_i13.IStorage>()));
  gh.factory<_i18.AppBloc>(() => _i18.AppBloc(get<_i13.IStorage>()));
  gh.factory<_i19.AuthApi>(() => _i19.AuthApi(get<_i12.DioClient>()));
  gh.factory<_i20.AuthRepository>(
      () => _i20.AuthRepository(get<_i19.AuthApi>()));
  gh.lazySingleton<_i21.INetworkService>(() => _i22.NetworkService(
      get<_i4.Dio>(),
      get<_i10.Logger>(),
      get<_i13.IStorage>(),
      get<_i3.Connectivity>(),
      get<_i5.Env>()));
  gh.factory<_i23.MapApi>(() => _i23.MapApi(get<_i21.INetworkService>()));
  gh.factory<_i24.MapRepository>(() => _i24.MapRepository(get<_i23.MapApi>()));
  gh.factory<_i25.OrderApi>(
      () => _i25.OrderApi(get<_i21.INetworkService>(), get<_i13.IStorage>()));
  gh.factory<_i26.OrderRepository>(
      () => _i26.OrderRepository(get<_i25.OrderApi>()));
  gh.factory<_i27.UserApi>(
      () => _i27.UserApi(get<_i21.INetworkService>(), get<_i13.IStorage>()));
  gh.factory<_i28.UserRepository>(
      () => _i28.UserRepository(get<_i27.UserApi>(), get<_i17.UserLocal>()));
  gh.factory<_i29.AddressListBloc>(() => _i29.AddressListBloc(
      get<_i28.UserRepository>(), get<_i24.MapRepository>()));
  gh.factory<_i30.AddressMapBloc>(() => _i30.AddressMapBloc(
      get<_i28.UserRepository>(), get<_i24.MapRepository>()));
  gh.factory<_i31.HomeUserBloc>(() => _i31.HomeUserBloc(
      get<_i28.UserRepository>(), get<_i26.OrderRepository>()));
  gh.lazySingleton<_i32.IAuthFacade>(() => _i33.ApiAuthFacade(
      get<_i21.INetworkService>(), get<_i10.Logger>(), get<_i13.IStorage>()));
  gh.factory<_i34.LoginBloc>(() => _i34.LoginBloc(get<_i32.IAuthFacade>()));
  gh.factory<_i35.RegisterBloc>(
      () => _i35.RegisterBloc(get<_i32.IAuthFacade>()));
  gh.factory<_i36.ValidateOtpBloc>(
      () => _i36.ValidateOtpBloc(get<_i32.IAuthFacade>()));
  gh.factory<_i37.AuthBloc>(() => _i37.AuthBloc(get<_i32.IAuthFacade>()));
  return get;
}

class _$RegisterModule extends _i38.RegisterModule {}
