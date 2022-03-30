import 'package:baf/app/app.logger.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:stack_appodeal_flutter/stack_appodeal_flutter.dart';

class AppoDealService {
  final log = getLogger('AppoDealService');

  String get key => dotenv.env['APPODEALKEY'] ?? "";

  Future<void> initialization() async {
    Appodeal.disableNetwork("admob");
    await ConsentManager.requestConsentInfoUpdate(key);
    var shouldShow = await ConsentManager.shouldShowConsentDialog();
    var isLoaded = await ConsentManager.consentFormIsLoaded();
    if (shouldShow == ShouldShow.TRUE) await ConsentManager.loadConsentForm();
    if (isLoaded == true) await ConsentManager.showAsDialogConsentForm();

    await loadService();
  }

  Future<void> loadService() async {
    Appodeal.setTesting(kReleaseMode ? false : true); //only not release mode
    Appodeal.setLogLevel(Appodeal.LogLevelVerbose);
    Appodeal.setAutoCache(Appodeal.INTERSTITIAL, false);
    Appodeal.setAutoCache(Appodeal.REWARDED_VIDEO, false);
    Appodeal.setUseSafeArea(true);

    Appodeal.initialize(
      key,
      [
        Appodeal.REWARDED_VIDEO,
        Appodeal.INTERSTITIAL,
        Appodeal.BANNER,
        Appodeal.MREC
      ],
      boolConsent: false,
    );
  }
}
