class DetailOutlet {
  Map<String,dynamic>  merchant;
  Map<String,dynamic>  outlet;
  List<dynamic> category;
  List<dynamic> product;
  List<dynamic> productPromoList;

  DetailOutlet({this.merchant,this.outlet,this.category,this.product,this.productPromoList});
  factory DetailOutlet.createDetailOutlet(Map<String,dynamic> object){
    return DetailOutlet(
      merchant: object['merchant'],
      outlet: object['outlet'],
      category: object['category'],
      product: object['product'],
      productPromoList: object['productPromoList'],
    );
  }
}