import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Utils {
  static String formatSalesType(String type) {
    switch (type) {
      case "dineIn":
        return I10n.current.landing_dine_in;
      case "takeAway":
        return I10n.current.landing_take_away;
      case "onlineDriver":
        return I10n.current.landing_delivery;
      case "driveThru":
        return I10n.current.landing_drive_thru;
      default:
        return "";
    }
  }

  static String formatRupiah(String? balance) {
    if (balance == "0" ||
        balance == null ||
        balance == "" ||
        balance == "null") {
      return "0";
    } else {
      final formatter = new NumberFormat("#,###", "ID");
      var tmpBalance = double.parse(balance).toString();
      var intBalance =
          int.parse(tmpBalance.substring(0, tmpBalance.length - 2));
      return formatter.format(intBalance).toString();
    }
  }

  static String formatddMMMyyyy(String date) {
    DateTime now = DateTime.parse(date);
    String formattedDate = DateFormat('dd MMMM yyyy', "ID").format(now);
    return formattedDate;
  }

  static String formatddMMMyyyyHis(String date) {
    DateTime now = DateTime.parse(date);
    String formattedDate =
        DateFormat('dd MMMM yyyy, HH:mm:ss', "ID").format(now);
    return formattedDate;
  }

  static String formatFullIndonesia(String date) {
    DateTime now = DateTime.parse(date);
    String formattedDate =
        DateFormat('EEEE,dd MMMM yyyy, HH:mm', "ID").format(now);
    return formattedDate;
  }
}
