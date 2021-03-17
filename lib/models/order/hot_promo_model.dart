class HotPromo {

  int outletId;
  int promoId;
  bool isHotPromo;
  String promoBanner;
  String promoIcon;
  String promoDesc;
  String promoName;
  int promoProductId;
  String promoCode;
  String path;
  String callbackUrl;
  Map<String, dynamic>  merchant;
  Map<String, dynamic>  outlet;
  Map<String,dynamic> distance;
  HotPromo({this.outletId,this.promoId,this.isHotPromo,this.promoBanner,this.promoIcon,this.promoDesc,this.promoName,this.promoProductId, this.promoCode,this.path,this.callbackUrl,this.merchant,this.outlet,this.distance});
  factory HotPromo.createHotPromo(Map<String,dynamic> object){
    return HotPromo(
      outletId: object['outletId'],
      promoId: object['promoId'],
      isHotPromo: object['isHotPromo'],
      promoBanner: object['promoBanner'],
      promoIcon: object['promoIcon'],
      promoDesc: object['promoDesc'],
      promoName: object['promoName'],
      promoProductId: object['promoProductId'],
      promoCode: object['promoCode'],
      path: object['path'],
      callbackUrl: object['callbackUrl'],
      distance: object['distance'],
      merchant: object['merchant'],
      outlet: object['outlet'],
    );
  }
}