class Geocode {
  String? formattedAddress;
  String? latitude;
  String? longitute;

  Geocode({
    this.formattedAddress,
    this.latitude,
    this.longitute,
  });
  factory Geocode.createGeocode(Map<String, dynamic> object) {
    return Geocode(
      latitude: object["latitude"].toString(),
      longitute: object["longitude"].toString(),
      formattedAddress: object['formatted_address'],
    );
  }
}
