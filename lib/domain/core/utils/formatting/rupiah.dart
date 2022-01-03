import 'package:intl/intl.dart';

class Rupiah {
  static String format(String number) {
    final formatter = new NumberFormat("#,###","ID");
    var tmpData = double.parse(number).toString();
    var intData = int.parse(tmpData.substring(0, tmpData.length - 2));
    
    return 'Rp ' + formatter.format(intData).toString();
  }
}
