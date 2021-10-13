// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:alice/alice.dart' as _i3;
import 'package:connectivity_plus/connectivity_plus.dart' as _i5;
import 'package:dio/dio.dart' as _i20;
import 'package:geolocator/geolocator.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i11;

import 'application/address/list/address_list_bloc.dart' as _i39;
import 'application/address/map/address_map_bloc.dart' as _i40;
import 'application/auth/auth_bloc.dart' as _i59;
import 'application/auth/login/login_bloc.dart' as _i50;
import 'application/auth/register/register_bloc.dart' as _i54;
import 'application/auth/validate_otp/validate_otp_bloc.dart' as _i57;
import 'application/core/app_bloc.dart' as _i18;
import 'application/credit/credit_bloc.dart' as _i60;
import 'application/credit/recent_history/recent_history_bloc.dart' as _i53;
import 'application/credit/topup_credit/top_up_credit_bloc.dart' as _i55;
import 'application/credit/waiting_payment/waiting_payment_bloc.dart' as _i58;
import 'application/digi_locale/digi_locale_bloc.dart' as _i43;
import 'application/home/home_user_bloc/home_user_bloc.dart' as _i45;
import 'application/order/bloc/order_bloc.dart' as _i51;
import 'application/order/order_cart_screen_view_controller.dart' as _i52;
import 'application/profile/edit_profile/edit_profile_bloc.dart' as _i44;
import 'application/profile/order_details/order_details_bloc.dart' as _i30;
import 'application/profile/order_history/order_history_bloc.dart' as _i31;
import 'application/profile/profile_bloc.dart' as _i34;
import 'application/transaction/bloc/transaction_bloc/transaction_bloc.dart'
    as _i56;
import 'domain/auth/i_auth_facade.dart' as _i46;
import 'domain/core/constants/network/env.dart' as _i6;
import 'domain/core/interfaces/i_location_service.dart' as _i9;
import 'domain/core/interfaces/i_network_service.dart' as _i23;
import 'domain/core/interfaces/i_storage.dart' as _i14;
import 'domain/credit/i_credit_repository.dart' as _i48;
import 'domain/digi_locale/i_digi_locale_repository.dart' as _i21;
import 'domain/profile/i_profile_repository.dart' as _i25;
import 'infrastructure/auth/api_auth_facade.dart' as _i47;
import 'infrastructure/core/auth_interceptor.dart' as _i19;
import 'infrastructure/core/location_service.dart' as _i10;
import 'infrastructure/core/network_service.dart' as _i24;
import 'infrastructure/core/register_module.dart' as _i61;
import 'infrastructure/core/storage.dart' as _i15;
import 'infrastructure/credit/credit_repository.dart' as _i49;
import 'infrastructure/digi_locale/digi_locale_repository.dart' as _i22;
import 'infrastructure/network/apis/auth/auth_api.dart' as _i41;
import 'infrastructure/network/apis/auth/auth_repository.dart' as _i42;
import 'infrastructure/network/apis/map/map_api.dart' as _i27;
import 'infrastructure/network/apis/map/map_repository.dart' as _i28;
import 'infrastructure/network/apis/order/order_api.dart' as _i29;
import 'infrastructure/network/apis/order/order_local.dart' as _i16;
import 'infrastructure/network/apis/order/order_repository.dart' as _i32;
import 'infrastructure/network/apis/posts/post_api.dart' as _i33;
import 'infrastructure/network/apis/transaction/transaction_api.dart' as _i35;
import 'infrastructure/network/apis/transaction/transaction_repository.dart'
    as _i36;
import 'infrastructure/network/apis/user/user_api.dart' as _i37;
import 'infrastructure/network/apis/user/user_local.dart' as _i17;
import 'infrastructure/network/apis/user/user_repository.dart' as _i38;
import 'infrastructure/profile/profile_repository.dart' as _i26;
import 'presentation/core/app_widget.dart' as _i4;
import 'presentation/profile/address/address_page.dart' as _i12;
import 'simple_bloc_delegate.dart' as _i13;

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
  gh.factory<_i12.ProfileAddressWidget>(
      () => _i12.ProfileAddressWidget(get<_i9.ILocationService>()));
  gh.factory<_i13.SimpleBlocObserver>(
      () => _i13.SimpleBlocObserver(get<_i11.Logger>()));
  gh.lazySingleton<_i14.IStorage>(
      () => _i15.Storage(get<_i8.HiveInterface>(), get<_i11.Logger>()));
  gh.factory<_i16.OrderLocal>(() => _i16.OrderLocal(get<_i14.IStorage>()));
  gh.factory<_i17.UserLocal>(() => _i17.UserLocal(get<_i14.IStorage>()));
  gh.factory<_i18.AppBloc>(() => _i18.AppBloc(get<_i14.IStorage>()));
  gh.factory<_i19.AuthInterceptor>(
      () => _i19.AuthInterceptor(get<_i14.IStorage>()));
  await gh.lazySingletonAsync<_i20.Dio>(
      () => registerModule.dio(get<_i3.Alice>(), get<_i14.IStorage>()),
      preResolve: true);
  gh.lazySingleton<_i21.IDigiLocaleRepository>(
      () => _i22.DigiLocaleRepository(get<_i14.IStorage>()));
  gh.lazySingleton<_i23.INetworkService>(() => _i24.NetworkService(
      get<_i20.Dio>(),
      get<_i11.Logger>(),
      get<_i14.IStorage>(),
      get<_i5.Connectivity>(),
      get<_i6.Env>()));
  gh.lazySingleton<_i25.IProfileRepository>(() =>
      _i26.ProfileRepository(get<_i23.INetworkService>(), get<_i11.Logger>()));
  gh.factory<_i27.MapApi>(() => _i27.MapApi(get<_i23.INetworkService>()));
  gh.factory<_i28.MapRepository>(() => _i28.MapRepository(get<_i27.MapApi>()));
  gh.factory<_i29.OrderApi>(
      () => _i29.OrderApi(get<_i23.INetworkService>(), get<_i14.IStorage>()));
  gh.factory<_i30.OrderDetailsBloc>(
      () => _i30.OrderDetailsBloc(get<_i25.IProfileRepository>()));
  gh.factory<_i31.OrderHistoryBloc>(
      () => _i31.OrderHistoryBloc(get<_i25.IProfileRepository>()));
  gh.factory<_i32.OrderRepository>(
      () => _i32.OrderRepository(get<_i29.OrderApi>(), get<_i16.OrderLocal>()));
  gh.factory<_i33.PostApi>(() => _i33.PostApi(get<_i23.INetworkService>()));
  gh.factory<_i34.ProfileBloc>(
      () => _i34.ProfileBloc(get<_i25.IProfileRepository>()));
  gh.factory<_i35.TransactionApi>(
      () => _i35.TransactionApi(get<_i23.INetworkService>()));
  gh.factory<_i36.TransactionRepository>(
      () => _i36.TransactionRepository(get<_i35.TransactionApi>()));
  gh.factory<_i37.UserApi>(
      () => _i37.UserApi(get<_i23.INetworkService>(), get<_i14.IStorage>()));
  gh.factory<_i38.UserRepository>(
      () => _i38.UserRepository(get<_i37.UserApi>(), get<_i17.UserLocal>()));
  gh.factory<_i39.AddressListBloc>(() => _i39.AddressListBloc(
      get<_i38.UserRepository>(), get<_i28.MapRepository>()));
  gh.factory<_i40.AddressMapBloc>(() => _i40.AddressMapBloc(
      get<_i38.UserRepository>(), get<_i28.MapRepository>()));
  gh.factory<_i41.AuthApi>(() => _i41.AuthApi(get<_i23.INetworkService>()));
  gh.factory<_i42.AuthRepository>(
      () => _i42.AuthRepository(get<_i41.AuthApi>()));
  gh.factory<_i43.DigiLocaleBloc>(
      () => _i43.DigiLocaleBloc(get<_i21.IDigiLocaleRepository>()));
  gh.factory<_i44.EditProfileBloc>(
      () => _i44.EditProfileBloc(get<_i25.IProfileRepository>()));
  gh.factory<_i45.HomeUserBloc>(() => _i45.HomeUserBloc(
      get<_i38.UserRepository>(), get<_i32.OrderRepository>()));
  gh.lazySingleton<_i46.IAuthFacade>(() => _i47.ApiAuthFacade(
      get<_i23.INetworkService>(),
      get<_i11.Logger>(),
      get<_i14.IStorage>(),
      get<_i25.IProfileRepository>()));
  gh.lazySingleton<_i48.ICreditRepository>(() =>
      _i49.CreditRepository(get<_i23.INetworkService>(), get<_i11.Logger>()));
  gh.factory<_i50.LoginBloc>(() => _i50.LoginBloc(get<_i46.IAuthFacade>()));
  gh.factory<_i51.OrderBloc>(() =>
      _i51.OrderBloc(get<_i32.OrderRepository>(), get<_i38.UserRepository>()));
  gh.factory<_i52.OrderCartScreenViewController>(
      () => _i52.OrderCartScreenViewController(get<_i32.OrderRepository>()));
  gh.factory<_i53.RecentHistoryBloc>(
      () => _i53.RecentHistoryBloc(get<_i48.ICreditRepository>()));
  gh.factory<_i54.RegisterBloc>(
      () => _i54.RegisterBloc(get<_i46.IAuthFacade>()));
  gh.factory<_i55.TopUpCreditBloc>(() => _i55.TopUpCreditBloc(
      get<_i48.ICreditRepository>(), get<_i14.IStorage>()));
  gh.factory<_i56.TransactionBloc>(
      () => _i56.TransactionBloc(get<_i36.TransactionRepository>()));
  gh.factory<_i57.ValidateOtpBloc>(
      () => _i57.ValidateOtpBloc(get<_i46.IAuthFacade>(), get<_i11.Logger>()));
  gh.factory<_i58.WaitingPaymentBloc>(
      () => _i58.WaitingPaymentBloc(get<_i48.ICreditRepository>()));
  gh.factory<_i59.AuthBloc>(() => _i59.AuthBloc(get<_i46.IAuthFacade>()));
  gh.factory<_i60.CreditBloc>(
      () => _i60.CreditBloc(get<_i48.ICreditRepository>()));
  return get;
}

class _$RegisterModule extends _i61.RegisterModule {}
