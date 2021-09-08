// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:alice/alice.dart' as _i3;
import 'package:connectivity_plus/connectivity_plus.dart' as _i7;
import 'package:dio/dio.dart' as _i22;
import 'package:flutter/material.dart' as _i5;
import 'package:geolocator/geolocator.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i10;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i13;

import 'application/address/list/address_list_bloc.dart' as _i40;
import 'application/address/map/address_map_bloc.dart' as _i41;
import 'application/auth/auth_bloc.dart' as _i58;
import 'application/auth/login/login_bloc.dart' as _i50;
import 'application/auth/register/register_bloc.dart' as _i53;
import 'application/auth/validate_otp/validate_otp_bloc.dart' as _i56;
import 'application/core/app_bloc.dart' as _i20;
import 'application/credit/credit_bloc.dart' as _i59;
import 'application/credit/recent_history/recent_history_bloc.dart' as _i52;
import 'application/credit/topup_credit/top_up_credit_bloc.dart' as _i54;
import 'application/credit/waiting_payment/waiting_payment_bloc.dart' as _i57;
import 'application/home/home_user_bloc/home_user_bloc.dart' as _i45;
import 'application/order/bloc/order_bloc.dart' as _i51;
import 'application/profile/edit_profile/edit_profile_bloc.dart' as _i44;
import 'application/profile/order_details/order_details_bloc.dart' as _i31;
import 'application/profile/order_history/order_history_bloc.dart' as _i32;
import 'application/profile/profile_bloc.dart' as _i35;
import 'application/transaction/bloc/transaction_bloc/transaction_bloc.dart'
    as _i55;
import 'domain/auth/i_auth_facade.dart' as _i46;
import 'domain/core/constants/network/env.dart' as _i8;
import 'domain/core/interfaces/i_location_service.dart' as _i11;
import 'domain/core/interfaces/i_network_service.dart' as _i24;
import 'domain/core/interfaces/i_storage.dart' as _i16;
import 'domain/core/utils/locale/app_localization.dart' as _i4;
import 'domain/credit/i_credit_repository.dart' as _i48;
import 'domain/profile/i_profile_repository.dart' as _i26;
import 'infrastructure/auth/api_auth_facade.dart' as _i47;
import 'infrastructure/core/auth_interceptor.dart' as _i21;
import 'infrastructure/core/location_service.dart' as _i12;
import 'infrastructure/core/network_service.dart' as _i25;
import 'infrastructure/core/register_module.dart' as _i60;
import 'infrastructure/core/storage.dart' as _i17;
import 'infrastructure/credit/credit_repository.dart' as _i49;
import 'infrastructure/network/apis/auth/auth_api.dart' as _i42;
import 'infrastructure/network/apis/auth/auth_repository.dart' as _i43;
import 'infrastructure/network/apis/map/map_api.dart' as _i28;
import 'infrastructure/network/apis/map/map_repository.dart' as _i29;
import 'infrastructure/network/apis/order/order_api.dart' as _i30;
import 'infrastructure/network/apis/order/order_local.dart' as _i18;
import 'infrastructure/network/apis/order/order_repository.dart' as _i33;
import 'infrastructure/network/apis/posts/post_api.dart' as _i34;
import 'infrastructure/network/apis/transaction/transaction_api.dart' as _i36;
import 'infrastructure/network/apis/transaction/transaction_repository.dart'
    as _i37;
import 'infrastructure/network/apis/user/user_api.dart' as _i38;
import 'infrastructure/network/apis/user/user_local.dart' as _i19;
import 'infrastructure/network/apis/user/user_repository.dart' as _i39;
import 'infrastructure/network/dio_client.dart' as _i23;
import 'infrastructure/profile/profile_repository.dart' as _i27;
import 'presentation/core/app_widget.dart' as _i6;
import 'presentation/profile/address/address_page.dart' as _i14;
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
  gh.factory<_i8.Env>(() => _i8.EnvDev(), registerFor: {_dev});
  gh.factory<_i8.Env>(() => _i8.EnvProd(), registerFor: {_prod});
  gh.lazySingleton<_i9.GeolocatorPlatform>(
      () => registerModule.goelocatorPlatform);
  gh.lazySingleton<_i10.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i11.ILocationService>(
      () => _i12.LocationService(get<_i9.GeolocatorPlatform>()));
  gh.lazySingleton<_i13.Logger>(() => registerModule.logger);
  gh.factory<_i14.ProfileAddressWidget>(
      () => _i14.ProfileAddressWidget(get<_i11.ILocationService>()));
  gh.factory<_i15.SimpleBlocObserver>(
      () => _i15.SimpleBlocObserver(get<_i13.Logger>()));
  gh.lazySingleton<_i16.IStorage>(
      () => _i17.Storage(get<_i10.HiveInterface>(), get<_i13.Logger>()));
  gh.factory<_i18.OrderLocal>(() => _i18.OrderLocal(get<_i16.IStorage>()));
  gh.factory<_i19.UserLocal>(() => _i19.UserLocal(get<_i16.IStorage>()));
  gh.factory<_i20.AppBloc>(() => _i20.AppBloc(get<_i16.IStorage>()));
  gh.factory<_i21.AuthInterceptor>(
      () => _i21.AuthInterceptor(get<_i16.IStorage>()));
  await gh.lazySingletonAsync<_i22.Dio>(
      () => registerModule.dio(get<_i3.Alice>(), get<_i16.IStorage>()),
      preResolve: true);
  gh.factory<_i23.DioClient>(() =>
      _i23.DioClient(get<_i22.Dio>(), get<_i13.Logger>(), get<_i8.Env>()));
  gh.lazySingleton<_i24.INetworkService>(() => _i25.NetworkService(
      get<_i22.Dio>(),
      get<_i13.Logger>(),
      get<_i16.IStorage>(),
      get<_i7.Connectivity>(),
      get<_i8.Env>()));
  gh.lazySingleton<_i26.IProfileRepository>(() =>
      _i27.ProfileRepository(get<_i24.INetworkService>(), get<_i13.Logger>()));
  gh.factory<_i28.MapApi>(() => _i28.MapApi(get<_i24.INetworkService>()));
  gh.factory<_i29.MapRepository>(() => _i29.MapRepository(get<_i28.MapApi>()));
  gh.factory<_i30.OrderApi>(
      () => _i30.OrderApi(get<_i24.INetworkService>(), get<_i16.IStorage>()));
  gh.factory<_i31.OrderDetailsBloc>(
      () => _i31.OrderDetailsBloc(get<_i26.IProfileRepository>()));
  gh.factory<_i32.OrderHistoryBloc>(
      () => _i32.OrderHistoryBloc(get<_i26.IProfileRepository>()));
  gh.factory<_i33.OrderRepository>(
      () => _i33.OrderRepository(get<_i30.OrderApi>(), get<_i18.OrderLocal>()));
  gh.factory<_i34.PostApi>(() => _i34.PostApi(get<_i24.INetworkService>()));
  gh.factory<_i35.ProfileBloc>(
      () => _i35.ProfileBloc(get<_i26.IProfileRepository>()));
  gh.factory<_i36.TransactionApi>(
      () => _i36.TransactionApi(get<_i24.INetworkService>()));
  gh.factory<_i37.TransactionRepository>(
      () => _i37.TransactionRepository(get<_i36.TransactionApi>()));
  gh.factory<_i38.UserApi>(
      () => _i38.UserApi(get<_i24.INetworkService>(), get<_i16.IStorage>()));
  gh.factory<_i39.UserRepository>(
      () => _i39.UserRepository(get<_i38.UserApi>(), get<_i19.UserLocal>()));
  gh.factory<_i40.AddressListBloc>(() => _i40.AddressListBloc(
      get<_i39.UserRepository>(), get<_i29.MapRepository>()));
  gh.factory<_i41.AddressMapBloc>(() => _i41.AddressMapBloc(
      get<_i39.UserRepository>(), get<_i29.MapRepository>()));
  gh.factory<_i42.AuthApi>(() => _i42.AuthApi(get<_i24.INetworkService>()));
  gh.factory<_i43.AuthRepository>(
      () => _i43.AuthRepository(get<_i42.AuthApi>()));
  gh.factory<_i44.EditProfileBloc>(
      () => _i44.EditProfileBloc(get<_i26.IProfileRepository>()));
  gh.factory<_i45.HomeUserBloc>(() => _i45.HomeUserBloc(
      get<_i39.UserRepository>(), get<_i33.OrderRepository>()));
  gh.lazySingleton<_i46.IAuthFacade>(() => _i47.ApiAuthFacade(
      get<_i24.INetworkService>(),
      get<_i13.Logger>(),
      get<_i16.IStorage>(),
      get<_i26.IProfileRepository>()));
  gh.lazySingleton<_i48.ICreditRepository>(() =>
      _i49.CreditRepository(get<_i24.INetworkService>(), get<_i13.Logger>()));
  gh.factory<_i50.LoginBloc>(() => _i50.LoginBloc(get<_i46.IAuthFacade>()));
  gh.factory<_i51.OrderBloc>(() =>
      _i51.OrderBloc(get<_i33.OrderRepository>(), get<_i39.UserRepository>()));
  gh.factory<_i52.RecentHistoryBloc>(
      () => _i52.RecentHistoryBloc(get<_i48.ICreditRepository>()));
  gh.factory<_i53.RegisterBloc>(
      () => _i53.RegisterBloc(get<_i46.IAuthFacade>()));
  gh.factory<_i54.TopUpCreditBloc>(() => _i54.TopUpCreditBloc(
      get<_i48.ICreditRepository>(), get<_i16.IStorage>()));
  gh.factory<_i55.TransactionBloc>(
      () => _i55.TransactionBloc(get<_i37.TransactionRepository>()));
  gh.factory<_i56.ValidateOtpBloc>(
      () => _i56.ValidateOtpBloc(get<_i46.IAuthFacade>(), get<_i13.Logger>()));
  gh.factory<_i57.WaitingPaymentBloc>(
      () => _i57.WaitingPaymentBloc(get<_i48.ICreditRepository>()));
  gh.factory<_i58.AuthBloc>(() => _i58.AuthBloc(get<_i46.IAuthFacade>()));
  gh.factory<_i59.CreditBloc>(
      () => _i59.CreditBloc(get<_i48.ICreditRepository>()));
  return get;
}

class _$RegisterModule extends _i60.RegisterModule {}
