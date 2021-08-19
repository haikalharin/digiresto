// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:alice/alice.dart' as _i3;
import 'package:connectivity_plus/connectivity_plus.dart' as _i5;
import 'package:dio/dio.dart' as _i17;
import 'package:geolocator/geolocator.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i11;

import 'application/address/list/address_list_bloc.dart' as _i29;
import 'application/address/map/address_map_bloc.dart' as _i30;
import 'application/auth/auth_bloc.dart' as _i39;
import 'application/auth/login/login_bloc.dart' as _i36;
import 'application/auth/register/register_bloc.dart' as _i37;
import 'application/auth/validate_otp/validate_otp_bloc.dart' as _i38;
import 'application/core/app_bloc.dart' as _i16;
import 'application/home/home_user_bloc/home_user_bloc.dart' as _i33;
import 'domain/auth/i_auth_facade.dart' as _i34;
import 'domain/core/constants/network/env.dart' as _i6;
import 'domain/core/interfaces/i_location_service.dart' as _i9;
import 'domain/core/interfaces/i_network_service.dart' as _i19;
import 'domain/core/interfaces/i_storage.dart' as _i13;
import 'infrastructure/auth/api_auth_facade.dart' as _i35;
import 'infrastructure/core/location_service.dart' as _i10;
import 'infrastructure/core/network_service.dart' as _i20;
import 'infrastructure/core/register_module.dart' as _i40;
import 'infrastructure/core/storage.dart' as _i14;
import 'infrastructure/network/apis/auth/auth_api.dart' as _i31;
import 'infrastructure/network/apis/auth/auth_repository.dart' as _i32;
import 'infrastructure/network/apis/map/map_api.dart' as _i21;
import 'infrastructure/network/apis/map/map_repository.dart' as _i22;
import 'infrastructure/network/apis/order/order_api.dart' as _i23;
import 'infrastructure/network/apis/order/order_repository.dart' as _i24;
import 'infrastructure/network/apis/posts/post_api.dart' as _i25;
import 'infrastructure/network/apis/transaction/transaction_api.dart' as _i26;
import 'infrastructure/network/apis/user/user_api.dart' as _i27;
import 'infrastructure/network/apis/user/user_local.dart' as _i15;
import 'infrastructure/network/apis/user/user_repository.dart' as _i28;
import 'infrastructure/network/dio_client.dart' as _i18;
import 'presentation/core/app_widget.dart' as _i4;
import 'simple_bloc_delegate.dart' as _i12;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Alice>(() => registerModule.alice, registerFor: {_dev});
  gh.factory<_i4.AppWidget>(() => _i4.AppWidget(alice: get<_i3.Alice>()));
  gh.lazySingleton<_i5.Connectivity>(() => registerModule.connectivity);
  gh.factory<_i6.Env>(() => _i6.EnvDev(), registerFor: {_dev});
  gh.factory<_i6.Env>(() => _i6.EnvProd(), registerFor: {_prod});
  gh.lazySingleton<_i7.GeolocatorPlatform>(
      () => registerModule.goelocatorPlatform);
  gh.lazySingleton<_i8.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i9.ILocationService>(
      () => _i10.LocationService(get<_i7.GeolocatorPlatform>()));
  gh.lazySingleton<_i11.Logger>(() => registerModule.logger);
  gh.factory<_i12.SimpleBlocObserver>(
      () => _i12.SimpleBlocObserver(get<_i11.Logger>()));
  gh.lazySingleton<_i13.IStorage>(
      () => _i14.Storage(get<_i8.HiveInterface>(), get<_i11.Logger>()));
  gh.factory<_i15.UserLocal>(() => _i15.UserLocal(get<_i13.IStorage>()));
  gh.factory<_i16.AppBloc>(() => _i16.AppBloc(get<_i13.IStorage>()));
  await gh.lazySingletonAsync<_i17.Dio>(
      () => registerModule.dio(get<_i3.Alice>(), get<_i13.IStorage>()),
      preResolve: true);
  gh.factory<_i18.DioClient>(() =>
      _i18.DioClient(get<_i17.Dio>(), get<_i11.Logger>(), get<_i6.Env>()));
  gh.lazySingleton<_i19.INetworkService>(() => _i20.NetworkService(
      get<_i17.Dio>(),
      get<_i11.Logger>(),
      get<_i13.IStorage>(),
      get<_i5.Connectivity>(),
      get<_i6.Env>()));
  gh.factory<_i21.MapApi>(() => _i21.MapApi(get<_i19.INetworkService>()));
  gh.factory<_i22.MapRepository>(() => _i22.MapRepository(get<_i21.MapApi>()));
  gh.factory<_i23.OrderApi>(
      () => _i23.OrderApi(get<_i19.INetworkService>(), get<_i13.IStorage>()));
  gh.factory<_i24.OrderRepository>(
      () => _i24.OrderRepository(get<_i23.OrderApi>()));
  gh.factory<_i25.PostApi>(() => _i25.PostApi(get<_i18.DioClient>()));
  gh.factory<_i26.TransactionApi>(
      () => _i26.TransactionApi(get<_i18.DioClient>()));
  gh.factory<_i27.UserApi>(
      () => _i27.UserApi(get<_i19.INetworkService>(), get<_i13.IStorage>()));
  gh.factory<_i28.UserRepository>(
      () => _i28.UserRepository(get<_i27.UserApi>(), get<_i15.UserLocal>()));
  gh.factory<_i29.AddressListBloc>(() => _i29.AddressListBloc(
      get<_i28.UserRepository>(), get<_i22.MapRepository>()));
  gh.factory<_i30.AddressMapBloc>(() => _i30.AddressMapBloc(
      get<_i28.UserRepository>(), get<_i22.MapRepository>()));
  gh.factory<_i31.AuthApi>(() => _i31.AuthApi(get<_i18.DioClient>()));
  gh.factory<_i32.AuthRepository>(
      () => _i32.AuthRepository(get<_i31.AuthApi>()));
  gh.factory<_i33.HomeUserBloc>(() => _i33.HomeUserBloc(
      get<_i28.UserRepository>(), get<_i24.OrderRepository>()));
  gh.lazySingleton<_i34.IAuthFacade>(() => _i35.ApiAuthFacade(
      get<_i19.INetworkService>(), get<_i11.Logger>(), get<_i13.IStorage>()));
  gh.factory<_i36.LoginBloc>(() => _i36.LoginBloc(get<_i34.IAuthFacade>()));
  gh.factory<_i37.RegisterBloc>(
      () => _i37.RegisterBloc(get<_i34.IAuthFacade>()));
  gh.factory<_i38.ValidateOtpBloc>(
      () => _i38.ValidateOtpBloc(get<_i34.IAuthFacade>(), get<_i11.Logger>()));
  gh.factory<_i39.AuthBloc>(() => _i39.AuthBloc(get<_i34.IAuthFacade>()));
  return get;
}

class _$RegisterModule extends _i40.RegisterModule {}
