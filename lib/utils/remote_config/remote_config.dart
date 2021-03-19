
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

/*firebase - remote config configuration*/
class GetRemoteConfig{
  static Future<RemoteConfig> setupRemoteConfig() async {
    await Firebase.initializeApp();
    final RemoteConfig remoteConfig = await RemoteConfig.instance;
    // Allow a fetch every millisecond. Default is 12 hours.
    remoteConfig
        .setConfigSettings(RemoteConfigSettings(minimumFetchIntervalMillis: 1));
    remoteConfig.setDefaults(<String, dynamic>{
      'welcome': 'welcome data',
      'about_app': 'about data',
      'customer_service': 'cs data',
    });
    remoteConfig.fetch(expiration: const Duration(seconds: 0));
    remoteConfig.activateFetched();
    return remoteConfig;
  }
}

// new IconButton(
// icon: new Icon(Icons.arrow_back_outlined,
// color: Colors.black, size: 28.0),
// //onPressed: () => Navigator.of(context).pop(),
// onPressed:   () async {
// try {
// // Using default duration to force fetching from remote server.
// await remoteConfig.fetch(expiration: const Duration(seconds: 0));
// await remoteConfig.activateFetched();
// print(remoteConfig.getString("welcome"));
// } on FetchThrottledException catch (exception) {
// // Fetch throttled.
// print(exception);
// } catch (exception) {
// print(
// 'Unable to fetch remote config. Cached or default values will be '
// 'used');
// }
// }
// ),