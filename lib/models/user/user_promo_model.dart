class UserPromo {

  int promoID;
  String promoName;
  String promoDescription;
  String promoBanner;
  String promoDesc;
  String promoUrl;
  String promoCode;

  UserPromo({this.promoID,this.promoName,this.promoDescription,this.promoBanner,this.promoDesc,this.promoUrl,this.promoCode});
  factory UserPromo.createUserPromo(Map<String,dynamic> object){
    return UserPromo(
      promoID: object['promoId'],
      promoName: object['promoName'],
      promoDescription: object['promoDescription'],
      promoBanner: object['promoBanner'],
      promoDesc: object['promoDesc'],
      promoUrl: object['promoUrl'],
      promoCode: object['promoCode'],
    );
  }
}