import 'package:url_launcher/url_launcher.dart';

/*This feature is used to run URLs on cellphones (iOS / Android)*/
class LaunchUrl {
  static Future run(url,
      {required Function() onSuccess, required Function() onError}) async {
    try {
      if (await canLaunch(url)) {
        await launch(url).whenComplete(() => onSuccess());
      } else {
        onError();
        throw 'Could not launch $url';
      }
    } catch (e) {
      onError();
    }
  }

  static Future call(phone) async {
    String tmp = "###" + phone.toString();
    String idFormatTmp = tmp.replaceAll("###08", "###628");
    String idFormat = idFormatTmp.replaceAll("###", "");
    String url = "tel:+$idFormat";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not call $url';
    }
  }
}
