class StaticBanner {
  String? promoName;
  String? promoDescription;
  String? promoBanner;
  String? promoUrl;

  StaticBanner(
      {this.promoName, this.promoDescription, this.promoBanner, this.promoUrl});
  factory StaticBanner.createStaticBanner(Map<String, dynamic> object) {
    return StaticBanner(
      promoName: object['promoName'],
      promoDescription: object['promoDescription'],
      promoBanner: object['promoBanner'],
      promoUrl: object['promoUrl'],
    );
  }
}
