import 'package:digiresto/domain/entity/outlet/order_method.dart';
import 'package:digiresto/domain/entity/outlet/outlet_detail.dart';

class Outlet {
  String? name;
  OutletDetail? detail;
  bool? isOwnerLoggedIn;
  String? merchantName;
  OrderMethod? orderMethod;

  Outlet({
    this.name,
    this.detail,
    this.isOwnerLoggedIn,
    this.merchantName,
    this.orderMethod,
  });
  factory Outlet.createOutlet(Map<String, dynamic> object) {
    return Outlet(
      name: object['name'],
      detail: OutletDetail.createOutletDetail(object['detail']),
      isOwnerLoggedIn: object['isOwnerLoggedIn'],
      merchantName: object['merchantName'],
      orderMethod: OrderMethod.createOrderMethod(object["orderMethod"]),
    );
  }
}
