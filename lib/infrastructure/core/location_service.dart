import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:digiresto/domain/core/exceptions/location_exception.dart';
import 'package:digiresto/domain/core/interfaces/i_location_service.dart';

@LazySingleton(as: ILocationService)
class LocationService implements ILocationService {
  final GeolocatorPlatform geolocator;
  const LocationService(this.geolocator);
  @override
  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      throw LocationServiceDisabled();
    }

    permission = await geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        throw LocationPermissionDenied();
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      throw LocationPermissionDeniedForever();
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return geolocator.getCurrentPosition().timeout(const Duration(seconds: 10),
        onTimeout: () async {
      return geolocator.getCurrentPosition(
          forceAndroidLocationManager: true,
          timeLimit: const Duration(seconds: 300));
    });
  }
}
