// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i11;
import 'package:geolocator/geolocator.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i8;

import 'application/address/list/address_list_bloc.dart' as _i27;
import 'application/address/map/address_map_bloc.dart' as _i28;
import 'application/auth/auth_bloc.dart' as _i35;
import 'application/auth/login/login_bloc.dart' as _i32;
import 'application/auth/register/register_bloc.dart' as _i33;
import 'application/auth/validate_otp/validate_otp_bloc.dart' as _i34;
import 'application/home/home_user_bloc/home_user_bloc.dart' as _i29;
import 'domain/auth/i_auth_facade.dart' as _i30;
import 'domain/core/interfaces/i_location_service.dart' as _i6;
import 'domain/core/interfaces/i_network_service.dart' as _i19;
import 'domain/core/interfaces/i_storage.dart' as _i13;
import 'infrastructure/auth/api_auth_facade.dart' as _i31;
import 'infrastructure/core/location_service.dart' as _i7;
import 'infrastructure/core/network_service.dart' as _i20;
import 'infrastructure/core/register_module.dart' as _i36;
import 'infrastructure/core/storage.dart' as _i14;
import 'infrastructure/network/apis/auth/auth_api.dart' as _i17;
import 'infrastructure/network/apis/auth/auth_repository.dart' as _i18;
import 'infrastructure/network/apis/map/map_api.dart' as _i21;
import 'infrastructure/network/apis/map/map_repository.dart' as _i22;
import 'infrastructure/network/apis/order/order_api.dart' as _i23;
import 'infrastructure/network/apis/order/order_repository.dart' as _i24;
import 'infrastructure/network/apis/posts/post_api.dart' as _i15;
import 'infrastructure/network/apis/transaction/transaction_api.dart' as _i16;
import 'infrastructure/network/apis/user/user_api.dart' as _i25;
import 'infrastructure/network/apis/user/user_local.dart' as _i10;
import 'infrastructure/network/apis/user/user_repository.dart' as _i26;
import 'infrastructure/network/dio_client.dart' as _i12;
import 'simple_bloc_delegate.dart' as _i9;

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
  gh.lazySingleton<_i4.GeolocatorPlatform>(
      () => registerModule.goelocatorPlatform);
  gh.lazySingleton<_i5.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i6.ILocationService>(
      () => _i7.LocationService(get<_i4.GeolocatorPlatform>()));
  gh.lazySingleton<_i8.Logger>(() => registerModule.logger);
  gh.factory<_i9.SimpleBlocObserver>(
      () => _i9.SimpleBlocObserver(get<_i8.Logger>()));
  gh.factory<String>(() => registerModule.baseUrlDev,
      instanceName: 'baseUrl', registerFor: {_dev});
  gh.factory<String>(() => registerModule.baseUrl,
      instanceName: 'baseUrl', registerFor: {_prod});
  gh.factory<_i10.UserLocal>(() => _i10.UserLocal());
  gh.lazySingleton<_i11.Dio>(
      () => registerModule.dio(get<String>(instanceName: 'baseUrl')));
  gh.factory<_i12.DioClient>(
      () => _i12.DioClient(get<_i11.Dio>(), get<_i8.Logger>()));
  gh.lazySingleton<_i13.IStorage>(
      () => _i14.Storage(get<_i5.HiveInterface>(), get<_i8.Logger>()));
  gh.factory<_i15.PostApi>(() => _i15.PostApi(get<_i12.DioClient>()));
  gh.factory<_i16.TransactionApi>(
      () => _i16.TransactionApi(get<_i12.DioClient>()));
  gh.factory<_i17.AuthApi>(() => _i17.AuthApi(get<_i12.DioClient>()));
  gh.factory<_i18.AuthRepository>(
      () => _i18.AuthRepository(get<_i17.AuthApi>()));
  gh.lazySingleton<_i19.INetworkService>(() => _i20.NetworkService(
      get<_i11.Dio>(),
      get<_i8.Logger>(),
      get<_i13.IStorage>(),
      get<_i3.Connectivity>()));
  gh.factory<_i21.MapApi>(() => _i21.MapApi(get<_i19.INetworkService>()));
  gh.factory<_i22.MapRepository>(() => _i22.MapRepository(get<_i21.MapApi>()));
  gh.factory<_i23.OrderApi>(() => _i23.OrderApi(get<_i19.INetworkService>()));
  gh.factory<_i24.OrderRepository>(
      () => _i24.OrderRepository(get<_i23.OrderApi>()));
  gh.factory<_i25.UserApi>(
      () => _i25.UserApi(get<_i19.INetworkService>(), get<_i13.IStorage>()));
  gh.factory<_i26.UserRepository>(
      () => _i26.UserRepository(get<_i25.UserApi>(), get<_i10.UserLocal>()));
  gh.factory<_i27.AddressListBloc>(() => _i27.AddressListBloc(
      get<_i26.UserRepository>(), get<_i22.MapRepository>()));
  gh.factory<_i28.AddressMapBloc>(() => _i28.AddressMapBloc(
      get<_i26.UserRepository>(), get<_i22.MapRepository>()));
  gh.factory<_i29.HomeUserBloc>(() => _i29.HomeUserBloc(
      get<_i26.UserRepository>(), get<_i24.OrderRepository>()));
  gh.lazySingleton<_i30.IAuthFacade>(() => _i31.ApiAuthFacade(
      get<_i19.INetworkService>(), get<_i8.Logger>(), get<_i13.IStorage>()));
  gh.factory<_i32.LoginBloc>(() => _i32.LoginBloc(get<_i30.IAuthFacade>()));
  gh.factory<_i33.RegisterBloc>(
      () => _i33.RegisterBloc(get<_i30.IAuthFacade>()));
  gh.factory<_i34.ValidateOtpBloc>(
      () => _i34.ValidateOtpBloc(get<_i30.IAuthFacade>()));
  gh.factory<_i35.AuthBloc>(() => _i35.AuthBloc(get<_i30.IAuthFacade>()));
  return get;
}

class _$RegisterModule extends _i36.RegisterModule {}
