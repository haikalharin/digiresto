import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:boilerplate/data/network/constants/endpoints.dart';
class OutletList {
  String id;
  String name;
  String outletId;
  String cashierId;
  String deviceId;
  String assignId;
  Map<String,dynamic> quinos;
  Map<String,dynamic> moka;
  Map<String,dynamic> detail;
  String roundingDigit;
  String roundingType;
  Map<String,dynamic> orderMethod;
  String createdDate;
  bool isDelete;
  bool isNonSku;
  bool isLive;
  bool isOwnerLoggedIn;
  Map<String,dynamic> distance;
  String  merchantName;
  String merchantId;
  String category;
  String callbackUrl;
  List<dynamic>  merchantTags;
  String outletName;
  String merchantCategory;
  List<dynamic> merchantKeywords;
  String merchantLogo;
  OutletList({this.id,this.name,this.outletId,this.cashierId,this.deviceId,this.assignId,this.quinos,this.moka,this.detail,this.roundingDigit,this.roundingType,this.orderMethod,this.isDelete,this.isNonSku,this.isLive,this.distance,this.merchantName,this.category,this.callbackUrl,this.merchantTags,this.outletName,this.merchantCategory,this.merchantKeywords,this.merchantLogo,this.createdDate,this.merchantId,this.isOwnerLoggedIn});
  factory OutletList.createOutletList(Map<String,dynamic> object){
    return OutletList(
        id : object['_id'],
        assignId : object['assignId'].toString(),
        callbackUrl : object['callbackUrl'],
        cashierId : object['cashierId'].toString(),
        category : object['category'],
        createdDate : object['created_date'],
        detail : object['detail'],
        deviceId : object['deviceId'].toString(),
        distance : object['distance'],
        isDelete : object['is_delete'],
        isLive : object['isLive'],
        isNonSku : object['isNonSku'],
        merchantCategory : object['merchantCategory'],
        merchantId : object['merchantId'].toString(),
        merchantKeywords : object['merchantKeywords'],
        merchantLogo : object['merchantLogo'],
        merchantName : object['merchantName'],
        merchantTags : object['merchantTags'],
        moka : object['moka'],
        name : object['name'],
        orderMethod : object['orderMethod'],
        outletId : object['outletId'].toString(),
        outletName : object['outletName'],
        //quinos : object['quinos'] ?? {},
        isOwnerLoggedIn : object['isOwnerLoggedIn'],
        // roundingDigit : object['roundingDigit'],
        // roundingType : object['roundingType'],
    );
  }
}