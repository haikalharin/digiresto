import 'package:digiresto/domain/entity/order/detail_outlet_response.dart';

class OrderSelectPaymentMethodViewArgument {
  final DetailOutletDataResponse outlet;
  final String salestype;
  OrderSelectPaymentMethodViewArgument({
    required this.outlet,
    required this.salestype,
  });
}
