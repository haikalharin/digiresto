import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/utils/ctoast/ctoast.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaymentInfoCopy extends StatelessWidget {
  final name;
  final value;
  final useDevider;
  final warning;
  final useWarning;

  const PaymentInfoCopy(
      {Key? key,
      this.name,
      this.value,
      this.useDevider = true,
      this.warning,
      this.useWarning = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  name,
                ],
              ),
              Container(
                padding: EdgeInsets.all(5),
                height: 50,
                width: MediaQuery.of(context).size.width / 3,
                child: CustomButton(
                  onPressed: () {
                    print("copy");
                    Clipboard.setData(new ClipboardData(text: value)).then((_) {
                      Ctoast.show("copied to clipboard");
                    });
                  },
                  color: Colors.white,
                  child: Text("Salin",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.red)),
                ),
              ),
            ],
          ),
          useDevider
              ? Divider(
                  color: Colors.grey,
                )
              : Container(),
          useWarning ? warning : Container()
        ],
      ),
    );
  }
}
