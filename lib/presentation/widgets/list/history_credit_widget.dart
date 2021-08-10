import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/utils/utils.dart';
import 'package:digiresto/presentation/widgets/order_method_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HistoryCreditWidget extends StatefulWidget {
  final List<dynamic> data;
  final Axis scrollDirection;
  final height;
  final void Function(Map<String, dynamic>) runAction;
  final void Function() loadMoreAction;
  const HistoryCreditWidget(
      {Key? key,
      required this.data,
      this.scrollDirection = Axis.vertical,
      this.height,
      required this.runAction,
      required this.loadMoreAction})
      : super(key: key);

  @override
  _HistoryCreditWidgetState createState() => _HistoryCreditWidgetState();
}

class _HistoryCreditWidgetState extends State<HistoryCreditWidget> {
  final ScrollController _scrollController = new ScrollController();
//  UserStore? _userStore;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        widget.loadMoreAction();
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    //   _userStore = Provider.of<UserStore>(context);
  }

  @override
  Widget build(BuildContext context) {
    OrderMethodPopup _orderMethodPopup = new OrderMethodPopup();
    return Container(
        height: widget.height,
        child: ListView.builder(
            controller: _scrollController,
            scrollDirection: widget.scrollDirection,
            shrinkWrap: true,
            itemCount: widget.data.length,
            itemBuilder: (BuildContext context, int index) {
              String amount =
                  widget.data[index].amount.split(RegExp(r"(\.+)"))[0];
              String textAmount = amount.contains('-') ? "-" : "";
              textAmount +=
                  "Rp. " + Utils.formatRupiah(amount.replaceFirst('-', ''));
              return GestureDetector(
                onTap: () => {},
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      height: 50,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.only(top: 5),
                                width: MediaQuery.of(context).size.width - 160,
                                //child: Text(widget.data[index].transactionDate,
                                child: Text(
                                    Utils.formatddMMMyyyy(
                                        widget.data[index].transactionDate),
                                    softWrap: false,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontFamily: "roboto",
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    textAlign: TextAlign.left),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(widget.data[index].transferTypeName,
                                    softWrap: false,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontFamily: "roboto",
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    textAlign: TextAlign.left),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: Text(textAmount,
                                softWrap: false,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontFamily: "roboto",
                                  color: amount.contains('-')
                                      ? AppColors.red
                                      : Colors.green,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.right),
                          ),
                        ],
                      ),
                      //child: Center(child: Text('Entry ${data[index].id.toString()}')),
                    ),
                    Container(
                        height: 1,
                        width: double.infinity,
                        color: AppColors.greyStroke)
                  ],
                ),
              );
            }));
  }
}
