class UserPromo {

  int promoID;
  String promoName;
  String promoDescription;
  String promoBanner;
  String promoDesc;
  String promoUrl;
  String promoCode;
  Map<String, dynamic>  merchant;
  Map<String,dynamic> distance;
  UserPromo({this.promoID,this.promoName,this.promoDescription,this.promoBanner,this.promoDesc,this.promoUrl,this.promoCode,this.merchant,this.distance});
  factory UserPromo.createUserPromo(Map<String,dynamic> object){
    return UserPromo(
      promoID: object['promoId'],
      promoName: object['promoName'],
      promoDescription: object['promoDescription'],
      promoBanner: object['promoBanner'],
      promoDesc: object['promoDesc'],
      promoUrl: object['promoUrl'],
      promoCode: object['promoCode'],
      merchant: object['merchant'],
      distance: object['distance'],
    );
  }
}