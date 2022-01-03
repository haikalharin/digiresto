import 'package:url_launcher/url_launcher.dart';

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

  static Future runDeeplink(url,
      {required Function() onSuccess, required Function() onError}) async {
    try {
      bool launched =
          await launch(url, forceSafariVC: false, forceWebView: false);
      if (!launched) {
        onError();
      } else {
        onSuccess();
      }
    } catch (e) {
      onError();
    }
  }

  static Future<void> openMap(double latitude, double longitude,
      {required Function() onError}) async {
    String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
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
