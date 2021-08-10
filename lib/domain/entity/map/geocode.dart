class Geocode {
  String? formattedAddress;

  Geocode({this.formattedAddress});
  factory Geocode.createGeocode(Map<String, dynamic> object) {
    return Geocode(
      formattedAddress: object['formatted_address'],
    );
  }
}
