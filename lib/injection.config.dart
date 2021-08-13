// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i12;
import 'package:geolocator/geolocator.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i8;

import 'application/auth/login/login_bloc.dart' as _i31;
import 'application/auth/register/register_bloc.dart' as _i9;
import 'application/auth/validate_otp/validate_otp_bloc.dart' as _i32;
import 'application/home/home_user_bloc/home_user_bloc.dart' as _i26;
import 'domain/auth/i_auth_facade.dart' as _i29;
import 'domain/core/interfaces/i_location_service.dart' as _i6;
import 'domain/core/interfaces/i_network_service.dart' as _i27;
import 'domain/core/interfaces/i_storage.dart' as _i14;
import 'infrastructure/auth/api_auth_facade.dart' as _i30;
import 'infrastructure/core/location_service.dart' as _i7;
import 'infrastructure/core/network_service.dart' as _i28;
import 'infrastructure/core/register_module.dart' as _i33;
import 'infrastructure/core/storage.dart' as _i15;
import 'infrastructure/network/apis/auth/auth_api.dart' as _i24;
import 'infrastructure/network/apis/auth/auth_repository.dart' as _i25;
import 'infrastructure/network/apis/map/map_api.dart' as _i16;
import 'infrastructure/network/apis/map/map_repository.dart' as _i17;
import 'infrastructure/network/apis/order/order_api.dart' as _i18;
import 'infrastructure/network/apis/order/order_repository.dart' as _i19;
import 'infrastructure/network/apis/posts/post_api.dart' as _i20;
import 'infrastructure/network/apis/transaction/transaction_api.dart' as _i21;
import 'infrastructure/network/apis/user/user_api.dart' as _i22;
import 'infrastructure/network/apis/user/user_repository.dart' as _i23;
import 'infrastructure/network/dio_client.dart' as _i13;
import 'infrastructure/network/rest_client.dart' as _i10;
import 'simple_bloc_delegate.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i9.RegisterBloc>(() => _i9.RegisterBloc());
  gh.factory<_i10.RestClient>(() => _i10.RestClient());
  gh.factory<_i11.SimpleBlocObserver>(
      () => _i11.SimpleBlocObserver(get<_i8.Logger>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.lazySingleton<_i12.Dio>(
      () => registerModule.dio(get<String>(instanceName: 'baseUrl')));
  gh.factory<_i13.DioClient>(
      () => _i13.DioClient(get<_i12.Dio>(), get<_i8.Logger>()));
  gh.lazySingleton<_i14.IStorage>(
      () => _i15.Storage(get<_i5.HiveInterface>(), get<_i8.Logger>()));
  gh.factory<_i16.MapApi>(() => _i16.MapApi(get<_i13.DioClient>()));
  gh.factory<_i17.MapRepository>(() => _i17.MapRepository(get<_i16.MapApi>()));
  gh.factory<_i18.OrderApi>(() => _i18.OrderApi(get<_i13.DioClient>()));
  gh.factory<_i19.OrderRepository>(
      () => _i19.OrderRepository(get<_i18.OrderApi>()));
  gh.factory<_i20.PostApi>(() => _i20.PostApi(get<_i13.DioClient>()));
  gh.factory<_i21.TransactionApi>(
      () => _i21.TransactionApi(get<_i13.DioClient>()));
  gh.factory<_i22.UserApi>(() => _i22.UserApi(get<_i13.DioClient>()));
  gh.factory<_i23.UserRepository>(
      () => _i23.UserRepository(get<_i22.UserApi>()));
  gh.factory<_i24.AuthApi>(() => _i24.AuthApi(get<_i13.DioClient>()));
  gh.factory<_i25.AuthRepository>(
      () => _i25.AuthRepository(get<_i24.AuthApi>()));
  gh.factory<_i26.HomeUserBloc>(() => _i26.HomeUserBloc(
      get<_i23.UserRepository>(), get<_i19.OrderRepository>()));
  gh.lazySingleton<_i27.INetworkService>(() => _i28.NetworkService(
      get<_i12.Dio>(),
      get<_i8.Logger>(),
      get<_i14.IStorage>(),
      get<_i3.Connectivity>()));
  gh.lazySingleton<_i29.IAuthFacade>(() =>
      _i30.AuthRepository(get<_i27.INetworkService>(), get<_i8.Logger>()));
  gh.factory<_i31.LoginBloc>(() => _i31.LoginBloc(get<_i29.IAuthFacade>()));
  gh.factory<_i32.ValidateOtpBloc>(
      () => _i32.ValidateOtpBloc(get<_i29.IAuthFacade>()));
  return get;
}

class _$RegisterModule extends _i33.RegisterModule {}
