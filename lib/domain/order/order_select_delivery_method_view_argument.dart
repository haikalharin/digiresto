import 'package:digiresto/domain/entity/order/detail_outlet_response.dart';

class OrderSelectDeliveryMethodViewArgument {
  final DetailOutletDataResponse outlet;
  final int itemWeight;
  OrderSelectDeliveryMethodViewArgument({
    required this.outlet,
    required this.itemWeight,
  });
}
