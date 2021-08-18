import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/constants/font.dart';
import 'package:digiresto/domain/core/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_api_headers/google_api_headers.dart';
import 'package:google_maps_webservice/places.dart';

class AutoCompleteAddress {
  static TextEditingController textEditingController = TextEditingController();

  static Widget defaultWidget({Function(PlaceDetails)? onSuccess}) {
    return PlacesAutocompleteField(
      controller: textEditingController,
      hint: '',
      leading: Icon(
        Icons.search_outlined,
        size: 14,
        color: AppColors.greyField,
      ),
      trailing: Icon(
        Icons.close,
        size: 16,
        color: AppColors.greyField,
      ),
      trailingOnTap: () {
        textEditingController.text = "";
      },
      types: [],
      radius: 1000000,
      apiKey: Strings.mGoogleApiKey,
      onError: (e) {
        print(e);
      },
      onSelected: (p) async {
        var data = await displayPrediction(p);
        onSuccess!(data);
      },
      strictbounds: false,
      mode: Mode.overlay,
      language: "en",
      inputDecoration: InputDecoration(
        contentPadding:
            EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
        hintText: '        Masukkan alamat',
        hintStyle: AppFont.textGreyField12Regular.copyWith(),
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
      ),
      components: [Component(Component.country, "id")],
    );
  }

  static Future<PlaceDetails> displayPrediction(Prediction p) async {
    // get detail (lat/lng)
    GoogleMapsPlaces _places = GoogleMapsPlaces(
      apiKey: Strings.mGoogleApiKey,
      apiHeaders: await GoogleApiHeaders().getHeaders(),
    );
    PlacesDetailsResponse detail =
        await _places.getDetailsByPlaceId(p.placeId!);
    return detail.result;
  }
}
