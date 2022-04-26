import 'dart:async';

import 'package:baf/app/app.logger.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:stack_appodeal_flutter/stack_appodeal_flutter.dart';

class AppoDealService {
  final log = getLogger('AppoDealService');

  String get key => dotenv.env['APPODEALKEY'] ?? "";

  Future<bool> isInitAppoDeal() async {
    return await initialization();
  }

  Future<bool> initialization() async {
    log.wtf(
        "Initialization AppoDealService aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
    await ConsentManager.requestConsentInfoUpdate(key);
    var shouldShow = await ConsentManager.shouldShowConsentDialog();
    var isLoaded = await ConsentManager.consentFormIsLoaded();
    if (shouldShow == ShouldShow.TRUE) await ConsentManager.loadConsentForm();
    // log.wtf("ConsentManager $shouldShow");
    // log.wtf("ConsentManager $isLoaded");

    if (isLoaded == true) await ConsentManager.showAsDialogConsentForm();
    ConsentManager.setConsentInfoUpdateListener(
        (onConsentInfoUpdated, consent) => {log.wtf("ConsentManager $consent")},
        (onFailedToUpdateConsentInfo, error) =>
            {log.wtf("ConsentManager $error")});

    if (shouldShow == ShouldShow.FALSE) {
      await loadService();
      return true;
    }

    return false;
  }

  Future<void> loadService() async {
    Appodeal.disableNetwork("admob");
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
