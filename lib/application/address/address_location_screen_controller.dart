import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/entity/map/geocode.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddressLocationScreenController extends GetxController {
  final cancelText = 'Cancel';
  Rxn<GoogleMapController> mapController = Rxn<GoogleMapController>();
  Rxn<LatLng> lastMapPosition = Rxn<LatLng>();
  ImageIcon marker = ImageIcon(AssetImage(AppAssets.iconMarker),
      size: 36, color: AppColors.red);
  ImageIcon markerMove = ImageIcon(AssetImage(AppAssets.iconMarkerMove),
      size: 36, color: AppColors.red);
  Rx<bool> isMarkerMove = false.obs;
  Rx<bool> isMarkerClicked = false.obs;
  Rxn<Geocode> geocode = Rxn<Geocode>();
  RxBool isDefault = false.obs;
}
