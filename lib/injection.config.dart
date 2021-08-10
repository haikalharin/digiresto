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

import 'domain/core/interfaces/i_location_service.dart' as _i6;
import 'domain/core/interfaces/i_network_service.dart' as _i13;
import 'domain/core/interfaces/i_storage.dart' as _i11;
import 'infrastructure/core/location_service.dart' as _i7;
import 'infrastructure/core/network_service.dart' as _i14;
import 'infrastructure/core/register_module.dart' as _i15;
import 'infrastructure/core/storage.dart' as _i12;
import 'simple_bloc_delegate.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Connectivity>(() => registerModule.connectivity);
  gh.lazySingleton<_i4.GeolocatorPlatform>(() => registerModule.geolocator);
  gh.lazySingleton<_i5.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i6.ILocationService>(
      () => _i7.LocationService(get<_i4.GeolocatorPlatform>()));
  gh.lazySingleton<_i8.Logger>(() => registerModule.logger);
  gh.factory<_i9.SimpleBlocObserver>(
      () => _i9.SimpleBlocObserver(get<_i8.Logger>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.lazySingleton<_i10.Dio>(
      () => registerModule.dio(get<String>(instanceName: 'baseUrl')));
  gh.lazySingleton<_i11.IStorage>(
      () => _i12.Storage(get<_i5.HiveInterface>(), get<_i8.Logger>()));
  gh.lazySingleton<_i13.INetworkService>(() => _i14.NetworkService(
      get<_i10.Dio>(),
      get<_i8.Logger>(),
      get<_i11.IStorage>(),
      get<_i3.Connectivity>()));
  return get;
}

class _$RegisterModule extends _i15.RegisterModule {}
