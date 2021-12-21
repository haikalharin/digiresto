// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:code_id_alice/alice.dart' as _i3;
import 'package:code_id_alice/code_id_alice.dart' as _i5;
import 'package:connectivity_plus/connectivity_plus.dart' as _i7;
import 'package:dio/dio.dart' as _i23;
import 'package:geolocator/geolocator.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i10;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i13;
import 'package:onesignal_flutter/onesignal_flutter.dart' as _i14;

import 'application/address/list/address_list_bloc.dart' as _i45;
import 'application/address/map/address_map_bloc.dart' as _i46;
import 'application/auth/auth_bloc.dart' as _i72;
import 'application/auth/login/login_bloc.dart' as _i61;
import 'application/auth/register/register_bloc.dart' as _i67;
import 'application/auth/validate_otp/validate_otp_bloc.dart' as _i70;
import 'application/catering/catering_bloc.dart' as _i74;
import 'application/core/app_bloc.dart' as _i21;
import 'application/credit/credit_bloc.dart' as _i75;
import 'application/credit/recent_history/recent_history_bloc.dart' as _i66;
import 'application/credit/topup_credit/top_up_credit_bloc.dart' as _i68;
import 'application/credit/waiting_payment/waiting_payment_bloc.dart' as _i71;
import 'application/digi_locale/digi_locale_bloc.dart' as _i49;
import 'application/home/home_user_bloc/home_user_bloc.dart' as _i77;
import 'application/home_new/bloc/home_bloc.dart' as _i76;
import 'application/home_new/outlet/outlet_bloc.dart' as _i64;
import 'application/landing/bottom_tab_cubit.dart' as _i73;
import 'application/notification/notification_bloc.dart' as _i36;
import 'application/order/bloc/order_bloc.dart' as _i62;
import 'application/order/order_cart_screen_view_controller.dart' as _i63;
import 'application/profile/edit_profile/edit_profile_bloc.dart' as _i50;
import 'application/profile/order_details/order_details_bloc.dart' as _i38;
import 'application/profile/order_history/order_history_bloc.dart' as _i39;
import 'application/profile/profile_bloc.dart' as _i65;
import 'application/promo_voucher/promo_voucher_bloc.dart' as _i40;
import 'application/transaction/bloc/transaction_bloc/transaction_bloc.dart'
    as _i69;
import 'domain/auth/i_auth_facade.dart' as _i51;
import 'domain/catering/i_catering_repository.dart' as _i53;
import 'domain/core/constants/network/env.dart' as _i8;
import 'domain/core/interfaces/i_location_service.dart' as _i11;
import 'domain/core/interfaces/i_network_service.dart' as _i26;
import 'domain/core/interfaces/i_storage.dart' as _i17;
import 'domain/credit/i_credit_repository.dart' as _i55;
import 'domain/digi_locale/i_digi_locale_repository.dart' as _i24;
import 'domain/home/i_home_repository.dart' as _i57;
import 'domain/notification/i_notification_repository.dart' as _i28;
import 'domain/order/i_order_repository.dart' as _i59;
import 'domain/profile/i_profile_repository.dart' as _i30;
import 'domain/promo_voucher/i_promo_voucher_repository.dart' as _i32;
import 'infrastructure/auth/api_auth_facade.dart' as _i52;
import 'infrastructure/core/auth_interceptor.dart' as _i22;
import 'infrastructure/core/location_service.dart' as _i12;
import 'infrastructure/core/network_service.dart' as _i27;
import 'infrastructure/core/outlet_category_catering_repository.dart' as _i54;
import 'infrastructure/core/register_module.dart' as _i78;
import 'infrastructure/core/storage.dart' as _i18;
import 'infrastructure/credit/credit_repository.dart' as _i56;
import 'infrastructure/digi_locale/digi_locale_repository.dart' as _i25;
import 'infrastructure/home/home_repository.dart' as _i58;
import 'infrastructure/network/apis/auth/auth_api.dart' as _i47;
import 'infrastructure/network/apis/auth/auth_repository.dart' as _i48;
import 'infrastructure/network/apis/map/map_api.dart' as _i34;
import 'infrastructure/network/apis/map/map_repository.dart' as _i35;
import 'infrastructure/network/apis/transaction/transaction_api.dart' as _i41;
import 'infrastructure/network/apis/transaction/transaction_repository.dart'
    as _i42;
import 'infrastructure/network/apis/user/user_api.dart' as _i43;
import 'infrastructure/network/apis/user/user_local.dart' as _i20;
import 'infrastructure/network/apis/user/user_repository.dart' as _i44;
import 'infrastructure/notification/notification_repository.dart' as _i29;
import 'infrastructure/order/order_api.dart' as _i37;
import 'infrastructure/order/order_local.dart' as _i19;
import 'infrastructure/order/order_repository.dart' as _i60;
import 'infrastructure/profile/profile_repository.dart' as _i31;
import 'infrastructure/promo_voucher/promo_voucher_repository.dart' as _i33;
import 'presentation/core/app_widget.dart' as _i4;
import 'presentation/landing/bottom_tab_view.dart' as _i6;
import 'presentation/profile/address/address_page.dart' as _i15;
import 'simple_bloc_delegate.dart' as _i16;

const String _prod = 'prod';
const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Alice>(() => registerModule.alice, registerFor: {_prod});
  gh.lazySingleton<_i3.Alice>(() => registerModule.aliceDev,
      registerFor: {_dev});
  gh.factory<_i4.AppWidget>(() => _i4.AppWidget(alice: get<_i5.Alice>()));
  gh.lazySingleton<_i6.BottomTabView>(() => _i6.BottomTabView());
  gh.lazySingleton<_i7.Connectivity>(() => registerModule.connectivity);
  gh.factory<_i8.Env>(() => _i8.EnvProd(), registerFor: {_prod});
  gh.lazySingleton<_i9.GeolocatorPlatform>(
      () => registerModule.goelocatorPlatform);
  gh.lazySingleton<_i10.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i11.ILocationService>(
      () => _i12.LocationService(get<_i9.GeolocatorPlatform>()));
  gh.lazySingleton<_i13.Logger>(() => registerModule.logger);
  gh.lazySingleton<_i14.OneSignal>(() => registerModule.oneSignal);
  gh.factory<_i15.ProfileAddressWidget>(() => _i15.ProfileAddressWidget());
  gh.factory<_i16.SimpleBlocObserver>(
      () => _i16.SimpleBlocObserver(get<_i13.Logger>()));
  gh.lazySingleton<_i17.IStorage>(
      () => _i18.Storage(get<_i10.HiveInterface>(), get<_i13.Logger>()));
  gh.factory<_i19.OrderLocal>(
      () => _i19.OrderLocal(get<_i17.IStorage>(), get<_i13.Logger>()));
  gh.factory<_i20.UserLocal>(() => _i20.UserLocal(get<_i17.IStorage>()));
  gh.factory<_i21.AppBloc>(() => _i21.AppBloc(get<_i17.IStorage>()));
  gh.factory<_i22.AuthInterceptor>(
      () => _i22.AuthInterceptor(get<_i17.IStorage>()));
  await gh.lazySingletonAsync<_i23.Dio>(
      () => registerModule.dio(get<_i17.IStorage>()),
      registerFor: {_prod},
      preResolve: true);
  await gh.lazySingletonAsync<_i23.Dio>(
      () => registerModule.dioDev(get<_i3.Alice>(), get<_i17.IStorage>()),
      registerFor: {_dev},
      preResolve: true);
  gh.factory<_i8.Env>(() => _i8.EnvDev(get<_i17.IStorage>()),
      registerFor: {_dev});
  gh.lazySingleton<_i24.IDigiLocaleRepository>(
      () => _i25.DigiLocaleRepository(get<_i17.IStorage>()));
  gh.lazySingleton<_i26.INetworkService>(() => _i27.NetworkService(
      get<_i23.Dio>(),
      get<_i13.Logger>(),
      get<_i17.IStorage>(),
      get<_i7.Connectivity>(),
      get<_i8.Env>()));
  gh.lazySingleton<_i28.INotificationRepository>(() =>
      _i29.NotificationRepository(
          get<_i14.OneSignal>(),
          get<_i26.INetworkService>(),
          get<_i17.IStorage>(),
          get<_i13.Logger>()));
  gh.lazySingleton<_i30.IProfileRepository>(() => _i31.ProfileRepository(
      get<_i26.INetworkService>(), get<_i17.IStorage>(), get<_i13.Logger>()));
  gh.lazySingleton<_i32.IPromoVoucherRepository>(() =>
      _i33.PromoVoucherRepository(
          get<_i26.INetworkService>(), get<_i13.Logger>()));
  gh.factory<_i34.MapApi>(() => _i34.MapApi(get<_i26.INetworkService>(),
      get<_i11.ILocationService>(), get<_i13.Logger>()));
  gh.factory<_i35.MapRepository>(() => _i35.MapRepository(get<_i34.MapApi>()));
  gh.factory<_i36.NotificationBloc>(
      () => _i36.NotificationBloc(get<_i28.INotificationRepository>()));
  gh.factory<_i37.OrderApi>(
      () => _i37.OrderApi(get<_i26.INetworkService>(), get<_i17.IStorage>()));
  gh.factory<_i38.OrderDetailsBloc>(
      () => _i38.OrderDetailsBloc(get<_i30.IProfileRepository>()));
  gh.factory<_i39.OrderHistoryBloc>(
      () => _i39.OrderHistoryBloc(get<_i30.IProfileRepository>()));
  gh.factory<_i40.PromoVoucherBloc>(
      () => _i40.PromoVoucherBloc(get<_i32.IPromoVoucherRepository>()));
  gh.factory<_i41.TransactionApi>(
      () => _i41.TransactionApi(get<_i26.INetworkService>()));
  gh.factory<_i42.TransactionRepository>(
      () => _i42.TransactionRepository(get<_i41.TransactionApi>()));
  gh.factory<_i43.UserApi>(
      () => _i43.UserApi(get<_i26.INetworkService>(), get<_i17.IStorage>()));
  gh.factory<_i44.UserRepository>(
      () => _i44.UserRepository(get<_i43.UserApi>(), get<_i20.UserLocal>()));
  gh.factory<_i45.AddressListBloc>(() => _i45.AddressListBloc(
      get<_i44.UserRepository>(), get<_i35.MapRepository>()));
  gh.factory<_i46.AddressMapBloc>(() => _i46.AddressMapBloc(
      get<_i44.UserRepository>(), get<_i35.MapRepository>()));
  gh.factory<_i47.AuthApi>(() => _i47.AuthApi(get<_i26.INetworkService>()));
  gh.factory<_i48.AuthRepository>(
      () => _i48.AuthRepository(get<_i47.AuthApi>()));
  gh.factory<_i49.DigiLocaleBloc>(
      () => _i49.DigiLocaleBloc(get<_i24.IDigiLocaleRepository>()));
  gh.factory<_i50.EditProfileBloc>(
      () => _i50.EditProfileBloc(get<_i30.IProfileRepository>()));
  gh.lazySingleton<_i51.IAuthFacade>(() => _i52.ApiAuthFacade(
      get<_i26.INetworkService>(),
      get<_i13.Logger>(),
      get<_i17.IStorage>(),
      get<_i30.IProfileRepository>()));
  gh.lazySingleton<_i53.ICateringRepository>(() =>
      _i54.CateringRepository(get<_i26.INetworkService>(), get<_i13.Logger>()));
  gh.lazySingleton<_i55.ICreditRepository>(() =>
      _i56.CreditRepository(get<_i26.INetworkService>(), get<_i13.Logger>()));
  gh.lazySingleton<_i57.IHomeRepository>(() => _i58.HomeRepository(
      get<_i13.Logger>(),
      get<_i26.INetworkService>(),
      get<_i17.IStorage>(),
      get<_i11.ILocationService>(),
      get<_i8.Env>()));
  gh.lazySingleton<_i59.IOrderRepository>(
      () => _i60.OrderRepository(get<_i37.OrderApi>(), get<_i19.OrderLocal>()));
  gh.factory<_i61.LoginBloc>(() => _i61.LoginBloc(get<_i51.IAuthFacade>()));
  gh.factory<_i62.OrderBloc>(() => _i62.OrderBloc(get<_i59.IOrderRepository>(),
      get<_i44.UserRepository>(), get<_i30.IProfileRepository>()));
  gh.factory<_i63.OrderCartScreenViewController>(
      () => _i63.OrderCartScreenViewController(get<_i59.IOrderRepository>()));
  gh.lazySingleton<_i64.OutletBloc>(
      () => _i64.OutletBloc(get<_i57.IHomeRepository>()));
  gh.factory<_i65.ProfileBloc>(() => _i65.ProfileBloc(get<_i51.IAuthFacade>()));
  gh.factory<_i66.RecentHistoryBloc>(
      () => _i66.RecentHistoryBloc(get<_i55.ICreditRepository>()));
  gh.factory<_i67.RegisterBloc>(
      () => _i67.RegisterBloc(get<_i51.IAuthFacade>()));
  gh.factory<_i68.TopUpCreditBloc>(() => _i68.TopUpCreditBloc(
      get<_i55.ICreditRepository>(), get<_i17.IStorage>()));
  gh.factory<_i69.TransactionBloc>(
      () => _i69.TransactionBloc(get<_i42.TransactionRepository>()));
  gh.factory<_i70.ValidateOtpBloc>(
      () => _i70.ValidateOtpBloc(get<_i51.IAuthFacade>(), get<_i13.Logger>()));
  gh.factory<_i71.WaitingPaymentBloc>(
      () => _i71.WaitingPaymentBloc(get<_i55.ICreditRepository>()));
  gh.factory<_i72.AuthBloc>(() => _i72.AuthBloc(
      get<_i51.IAuthFacade>(), get<_i28.INotificationRepository>()));
  gh.lazySingleton<_i73.BottomTabCubit>(() => _i73.BottomTabCubit(
      get<_i59.IOrderRepository>(), get<_i55.ICreditRepository>()));
  gh.factory<_i74.CateringBloc>(() => _i74.CateringBloc(
      get<_i53.ICateringRepository>(), get<_i44.UserRepository>()));
  gh.factory<_i75.CreditBloc>(
      () => _i75.CreditBloc(get<_i55.ICreditRepository>()));
  gh.lazySingleton<_i76.HomeBloc>(
      () => _i76.HomeBloc(get<_i57.IHomeRepository>()));
  gh.factory<_i77.HomeUserBloc>(() => _i77.HomeUserBloc(
      get<_i44.UserRepository>(),
      get<_i59.IOrderRepository>(),
      get<_i55.ICreditRepository>()));
  return get;
}

class _$RegisterModule extends _i78.RegisterModule {}
