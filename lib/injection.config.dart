// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:alice/alice.dart' as _i3;
import 'package:connectivity_plus/connectivity_plus.dart' as _i7;
import 'package:dio/dio.dart' as _i21;
import 'package:flutter/material.dart' as _i5;
import 'package:geolocator/geolocator.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i11;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i14;

import 'application/address/list/address_list_bloc.dart' as _i33;
import 'application/address/map/address_map_bloc.dart' as _i34;
import 'application/auth/auth_bloc.dart' as _i50;
import 'application/auth/login/login_bloc.dart' as _i42;
import 'application/auth/register/register_bloc.dart' as _i46;
import 'application/auth/validate_otp/validate_otp_bloc.dart' as _i48;
import 'application/core/app_bloc.dart' as _i19;
import 'application/credit/credit_bloc.dart' as _i51;
import 'application/credit/recent_history/recent_history_bloc.dart' as _i45;
import 'application/credit/topup_credit/top_up_credit_bloc.dart' as _i47;
import 'application/credit/waiting_payment/waiting_payment_bloc.dart' as _i49;
import 'application/home/home_user_bloc/home_user_bloc.dart' as _i37;
import 'application/order/bloc/order_bloc.dart' as _i43;
import 'application/profile/edit_profile/edit_profile_bloc.dart' as _i8;
import 'application/profile/profile_bloc.dart' as _i44;
import 'domain/auth/i_auth_facade.dart' as _i38;
import 'domain/core/constants/network/env.dart' as _i9;
import 'domain/core/interfaces/i_location_service.dart' as _i12;
import 'domain/core/interfaces/i_network_service.dart' as _i23;
import 'domain/core/interfaces/i_storage.dart' as _i16;
import 'domain/core/utils/locale/app_localization.dart' as _i4;
import 'domain/credit/i_credit_repository.dart' as _i40;
import 'infrastructure/auth/api_auth_facade.dart' as _i39;
import 'infrastructure/core/auth_interceptor.dart' as _i20;
import 'infrastructure/core/location_service.dart' as _i13;
import 'infrastructure/core/network_service.dart' as _i24;
import 'infrastructure/core/register_module.dart' as _i52;
import 'infrastructure/core/storage.dart' as _i17;
import 'infrastructure/credit/credit_repository.dart' as _i41;
import 'infrastructure/network/apis/auth/auth_api.dart' as _i35;
import 'infrastructure/network/apis/auth/auth_repository.dart' as _i36;
import 'infrastructure/network/apis/map/map_api.dart' as _i25;
import 'infrastructure/network/apis/map/map_repository.dart' as _i26;
import 'infrastructure/network/apis/order/order_api.dart' as _i27;
import 'infrastructure/network/apis/order/order_repository.dart' as _i28;
import 'infrastructure/network/apis/posts/post_api.dart' as _i29;
import 'infrastructure/network/apis/transaction/transaction_api.dart' as _i30;
import 'infrastructure/network/apis/user/user_api.dart' as _i31;
import 'infrastructure/network/apis/user/user_local.dart' as _i18;
import 'infrastructure/network/apis/user/user_repository.dart' as _i32;
import 'infrastructure/network/dio_client.dart' as _i22;
import 'presentation/core/app_widget.dart' as _i6;
import 'simple_bloc_delegate.dart' as _i15;

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
  gh.factory<_i4.AppLocalizations>(
      () => _i4.AppLocalizations(get<_i5.Locale>()));
  gh.factory<_i6.AppWidget>(() => _i6.AppWidget(alice: get<_i3.Alice>()));
  gh.lazySingleton<_i7.Connectivity>(() => registerModule.connectivity);
  gh.factory<_i8.EditProfileBloc>(() => _i8.EditProfileBloc());
  gh.factory<_i9.Env>(() => _i9.EnvDev(), registerFor: {_dev});
  gh.factory<_i9.Env>(() => _i9.EnvProd(), registerFor: {_prod});
  gh.lazySingleton<_i10.GeolocatorPlatform>(
      () => registerModule.goelocatorPlatform);
  gh.lazySingleton<_i11.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i12.ILocationService>(
      () => _i13.LocationService(get<_i10.GeolocatorPlatform>()));
  gh.lazySingleton<_i14.Logger>(() => registerModule.logger);
  gh.factory<_i15.SimpleBlocObserver>(
      () => _i15.SimpleBlocObserver(get<_i14.Logger>()));
  gh.lazySingleton<_i16.IStorage>(
      () => _i17.Storage(get<_i11.HiveInterface>(), get<_i14.Logger>()));
  gh.factory<_i18.UserLocal>(() => _i18.UserLocal(get<_i16.IStorage>()));
  gh.factory<_i19.AppBloc>(() => _i19.AppBloc(get<_i16.IStorage>()));
  gh.factory<_i20.AuthInterceptor>(
      () => _i20.AuthInterceptor(get<_i16.IStorage>()));
  await gh.lazySingletonAsync<_i21.Dio>(
      () => registerModule.dio(get<_i3.Alice>(), get<_i16.IStorage>()),
      preResolve: true);
  gh.factory<_i22.DioClient>(() =>
      _i22.DioClient(get<_i21.Dio>(), get<_i14.Logger>(), get<_i9.Env>()));
  gh.lazySingleton<_i23.INetworkService>(() => _i24.NetworkService(
      get<_i21.Dio>(),
      get<_i14.Logger>(),
      get<_i16.IStorage>(),
      get<_i7.Connectivity>(),
      get<_i9.Env>()));
  gh.factory<_i25.MapApi>(() => _i25.MapApi(get<_i23.INetworkService>()));
  gh.factory<_i26.MapRepository>(() => _i26.MapRepository(get<_i25.MapApi>()));
  gh.factory<_i27.OrderApi>(
      () => _i27.OrderApi(get<_i23.INetworkService>(), get<_i16.IStorage>()));
  gh.factory<_i28.OrderRepository>(
      () => _i28.OrderRepository(get<_i27.OrderApi>()));
  gh.factory<_i29.PostApi>(() => _i29.PostApi(get<_i23.INetworkService>()));
  gh.factory<_i30.TransactionApi>(
      () => _i30.TransactionApi(get<_i23.INetworkService>()));
  gh.factory<_i31.UserApi>(
      () => _i31.UserApi(get<_i23.INetworkService>(), get<_i16.IStorage>()));
  gh.factory<_i32.UserRepository>(
      () => _i32.UserRepository(get<_i31.UserApi>(), get<_i18.UserLocal>()));
  gh.factory<_i33.AddressListBloc>(() => _i33.AddressListBloc(
      get<_i32.UserRepository>(), get<_i26.MapRepository>()));
  gh.factory<_i34.AddressMapBloc>(() => _i34.AddressMapBloc(
      get<_i32.UserRepository>(), get<_i26.MapRepository>()));
  gh.factory<_i35.AuthApi>(() => _i35.AuthApi(get<_i23.INetworkService>()));
  gh.factory<_i36.AuthRepository>(
      () => _i36.AuthRepository(get<_i35.AuthApi>()));
  gh.factory<_i37.HomeUserBloc>(() => _i37.HomeUserBloc(
      get<_i32.UserRepository>(), get<_i28.OrderRepository>()));
  gh.lazySingleton<_i38.IAuthFacade>(() => _i39.ApiAuthFacade(
      get<_i23.INetworkService>(), get<_i14.Logger>(), get<_i16.IStorage>()));
  gh.lazySingleton<_i40.ICreditRepository>(() =>
      _i41.CreditRepository(get<_i23.INetworkService>(), get<_i14.Logger>()));
  gh.factory<_i42.LoginBloc>(() => _i42.LoginBloc(get<_i38.IAuthFacade>()));
  gh.factory<_i43.OrderBloc>(() =>
      _i43.OrderBloc(get<_i28.OrderRepository>(), get<_i32.UserRepository>()));
  gh.factory<_i44.ProfileBloc>(() => _i44.ProfileBloc(get<_i38.IAuthFacade>()));
  gh.factory<_i45.RecentHistoryBloc>(
      () => _i45.RecentHistoryBloc(get<_i40.ICreditRepository>()));
  gh.factory<_i46.RegisterBloc>(
      () => _i46.RegisterBloc(get<_i38.IAuthFacade>()));
  gh.factory<_i47.TopUpCreditBloc>(() => _i47.TopUpCreditBloc(
      get<_i40.ICreditRepository>(), get<_i16.IStorage>()));
  gh.factory<_i48.ValidateOtpBloc>(
      () => _i48.ValidateOtpBloc(get<_i38.IAuthFacade>(), get<_i14.Logger>()));
  gh.factory<_i49.WaitingPaymentBloc>(
      () => _i49.WaitingPaymentBloc(get<_i40.ICreditRepository>()));
  gh.factory<_i50.AuthBloc>(() => _i50.AuthBloc(get<_i38.IAuthFacade>()));
  gh.factory<_i51.CreditBloc>(
      () => _i51.CreditBloc(get<_i40.ICreditRepository>()));
  return get;
}

class _$RegisterModule extends _i52.RegisterModule {}
