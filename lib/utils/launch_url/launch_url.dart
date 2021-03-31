import 'package:url_launcher/url_launcher.dart';
/*This feature is used to run URLs on cellphones (iOS / Android)*/
class LaunchUrl{
  static Future run(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static Future call(phone) async {
    String url = "tel:+$phone";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not call $url';
    }
  }
}
