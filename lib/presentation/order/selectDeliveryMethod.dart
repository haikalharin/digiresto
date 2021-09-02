import 'package:digiresto/application/order/bloc/order_bloc.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/formatting/rupiah.dart';
import 'package:digiresto/domain/entity/order/delivery_method_response.dart';
import 'package:digiresto/domain/entity/order/param/delivery_inquiry_param.dart';
import 'package:digiresto/domain/order/order_select_delivery_method_view_argument.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class SelectDeliveryMethodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OrderSelectDeliveryMethodViewArgument args =
        Get.arguments as OrderSelectDeliveryMethodViewArgument;
    Get.context!.read<OrderBloc>().add(OrderEvent.deliveryInquiry(
        DeliveryInquiryParam(
            body: DeliveryInquiryBodyParam(
                customer: DeliveryInquiryBodyCustomerParam(location: []),
                weight: args.itemWeight),
            queryString: DeliveryInquiryQueryParam(
                outletName: args.outlet.endpointName))));
    return BlocConsumer<OrderBloc, OrderState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                iconTheme: IconThemeData(
                  color: Colors.black,
                ),
                leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                title: Text(
                  'Pesan Antar',
                  style: TextStyle(
                    fontFamily: "roboto",
                    color: Colors.black,
                  ),
                ),
                centerTitle: true,
                backgroundColor: Colors.white,
              ),
              body: state.maybeMap(deliveryInquirySuccess: (r) {
                return ListView.separated(
                  shrinkWrap: true,
                  itemCount: r.response.length,
                  itemBuilder: (context, index) =>
                      _buildProviderList(r.response[index]),
                  separatorBuilder: (context, index) => SizedBox(height: 5),
                );
              }, orElse: () {
                return Container();
              }));
        });
  }

  Widget _buildProviderList(DeliveryMethodDataResponse response) {
    return Container(
      child: Column(
        children: [
          _buildProviderTitle(response.provider),
          SizedBox(height: 5),
          ListView.separated(
            shrinkWrap: true,
            itemCount: response.shipmentMethods.length,
            itemBuilder: (context, index) =>
                _buildItemList(response.shipmentMethods[index]),
            separatorBuilder: (context, index) => SizedBox(height: 5),
          ),
        ],
      ),
    );
  }

  Widget _buildProviderTitle(String title) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Text(title,
          style: TextStyle(
            color: AppColors.red,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          )),
    );
  }

  Widget _buildItemList(DeliveryMethodDataShipmentMethodResponse response) {
    String description = response.description != null
        ? response.description.toString() + " - "
        : "";
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(response.name,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  )),
              SizedBox(height: 5),
              Text(
                  description +
                      (response.price > 0
                          ? Rupiah.format(response.price.toString())
                          : 'Free'),
                  style: TextStyle(
                    color: Colors.black,
                  )),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                //save to local
                Get.back();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                  side: BorderSide(
                    width: 1,
                    color: AppColors.red,
                  ),
                ),
              ),
              child: Text('Pilih',
                  style: TextStyle(
                    color: AppColors.red,
                    fontWeight: FontWeight.bold,
                  )))
        ],
      ),
    );
  }
}
