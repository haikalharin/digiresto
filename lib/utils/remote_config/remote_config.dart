
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

class GetRemoteConfig{
  static Future<RemoteConfig> setupRemoteConfig() async {
    await Firebase.initializeApp();
    final RemoteConfig remoteConfig = await RemoteConfig.instance;
    // Allow a fetch every millisecond. Default is 12 hours.
    remoteConfig
        .setConfigSettings(RemoteConfigSettings(minimumFetchIntervalMillis: 1));
    remoteConfig.setDefaults(<String, dynamic>{
      'welcome': '',
      'about_app': '',
      'customer_service': '',
    });
    return remoteConfig;
  }
}