// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i10;
import 'package:geolocator/geolocator.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i8;

import 'application/address/list/address_list_bloc.dart' as _i28;
import 'application/address/map/address_map_bloc.dart' as _i29;
import 'application/auth/auth_bloc.dart' as _i36;
import 'application/auth/login/login_bloc.dart' as _i33;
import 'application/auth/register/register_bloc.dart' as _i34;
import 'application/auth/validate_otp/validate_otp_bloc.dart' as _i35;
import 'application/core/app_bloc.dart' as _i17;
import 'application/home/home_user_bloc/home_user_bloc.dart' as _i30;
import 'domain/auth/i_auth_facade.dart' as _i31;
import 'domain/core/interfaces/i_location_service.dart' as _i6;
import 'domain/core/interfaces/i_network_service.dart' as _i20;
import 'domain/core/interfaces/i_storage.dart' as _i12;
import 'infrastructure/auth/api_auth_facade.dart' as _i32;
import 'infrastructure/core/location_service.dart' as _i7;
import 'infrastructure/core/network_service.dart' as _i21;
import 'infrastructure/core/register_module.dart' as _i37;
import 'infrastructure/core/storage.dart' as _i13;
import 'infrastructure/network/apis/auth/auth_api.dart' as _i18;
import 'infrastructure/network/apis/auth/auth_repository.dart' as _i19;
import 'infrastructure/network/apis/map/map_api.dart' as _i22;
import 'infrastructure/network/apis/map/map_repository.dart' as _i23;
import 'infrastructure/network/apis/order/order_api.dart' as _i24;
import 'infrastructure/network/apis/order/order_repository.dart' as _i25;
import 'infrastructure/network/apis/posts/post_api.dart' as _i14;
import 'infrastructure/network/apis/transaction/transaction_api.dart' as _i15;
import 'infrastructure/network/apis/user/user_api.dart' as _i26;
import 'infrastructure/network/apis/user/user_local.dart' as _i16;
import 'infrastructure/network/apis/user/user_repository.dart' as _i27;
import 'infrastructure/network/dio_client.dart' as _i11;
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
  gh.lazySingleton<_i10.Dio>(
      () => registerModule.dio(get<String>(instanceName: 'baseUrl')));
  gh.factory<_i11.DioClient>(
      () => _i11.DioClient(get<_i10.Dio>(), get<_i8.Logger>()));
  gh.lazySingleton<_i12.IStorage>(
      () => _i13.Storage(get<_i5.HiveInterface>(), get<_i8.Logger>()));
  gh.factory<_i14.PostApi>(() => _i14.PostApi(get<_i11.DioClient>()));
  gh.factory<_i15.TransactionApi>(
      () => _i15.TransactionApi(get<_i11.DioClient>()));
  gh.factory<_i16.UserLocal>(() => _i16.UserLocal(get<_i12.IStorage>()));
  gh.factory<_i17.AppBloc>(() => _i17.AppBloc(get<_i12.IStorage>()));
  gh.factory<_i18.AuthApi>(() => _i18.AuthApi(get<_i11.DioClient>()));
  gh.factory<_i19.AuthRepository>(
      () => _i19.AuthRepository(get<_i18.AuthApi>()));
  gh.lazySingleton<_i20.INetworkService>(() => _i21.NetworkService(
      get<_i10.Dio>(),
      get<_i8.Logger>(),
      get<_i12.IStorage>(),
      get<_i3.Connectivity>()));
  gh.factory<_i22.MapApi>(() => _i22.MapApi(get<_i20.INetworkService>()));
  gh.factory<_i23.MapRepository>(() => _i23.MapRepository(get<_i22.MapApi>()));
  gh.factory<_i24.OrderApi>(
      () => _i24.OrderApi(get<_i20.INetworkService>(), get<_i12.IStorage>()));
  gh.factory<_i25.OrderRepository>(
      () => _i25.OrderRepository(get<_i24.OrderApi>()));
  gh.factory<_i26.UserApi>(
      () => _i26.UserApi(get<_i20.INetworkService>(), get<_i12.IStorage>()));
  gh.factory<_i27.UserRepository>(
      () => _i27.UserRepository(get<_i26.UserApi>(), get<_i16.UserLocal>()));
  gh.factory<_i28.AddressListBloc>(() => _i28.AddressListBloc(
      get<_i27.UserRepository>(), get<_i23.MapRepository>()));
  gh.factory<_i29.AddressMapBloc>(() => _i29.AddressMapBloc(
      get<_i27.UserRepository>(), get<_i23.MapRepository>()));
  gh.factory<_i30.HomeUserBloc>(() => _i30.HomeUserBloc(
      get<_i27.UserRepository>(), get<_i25.OrderRepository>()));
  gh.lazySingleton<_i31.IAuthFacade>(() => _i32.ApiAuthFacade(
      get<_i20.INetworkService>(), get<_i8.Logger>(), get<_i12.IStorage>()));
  gh.factory<_i33.LoginBloc>(() => _i33.LoginBloc(get<_i31.IAuthFacade>()));
  gh.factory<_i34.RegisterBloc>(
      () => _i34.RegisterBloc(get<_i31.IAuthFacade>()));
  gh.factory<_i35.ValidateOtpBloc>(
      () => _i35.ValidateOtpBloc(get<_i31.IAuthFacade>()));
  gh.factory<_i36.AuthBloc>(() => _i36.AuthBloc(get<_i31.IAuthFacade>()));
  return get;
}

class _$RegisterModule extends _i37.RegisterModule {}
