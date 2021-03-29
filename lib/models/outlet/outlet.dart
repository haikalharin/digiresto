import 'package:boilerplate/models/outlet/outlet_detail.dart';

class Outlet {
  String name;
  OutletDetail detail;

  Outlet({
    this.name,
    this.detail,
  });
  factory Outlet.createOutlet(Map<String, dynamic> object) {
    return Outlet(
      name: object['name'],
      detail: OutletDetail.createOutletDetail(object['detail']),
    );
  }
}
