import 'dart:async';

import 'package:baf/app/app.logger.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:stack_appodeal_flutter/stack_appodeal_flutter.dart';

class AppoDealService {
  final log = getLogger('AppoDealService');

  bool _isConsented = false;
  bool get isConsented => _isConsented;
  String get key => dotenv.env['APPODEALKEY'] ?? "";

  Future<void> loadConsentForm() async {
    await ConsentManager.requestConsentInfoUpdate(key);
    var isLoaded = await ConsentManager.consentFormIsLoaded();
    await ConsentManager.loadConsentForm();
    if (isLoaded == true) await ConsentManager.showAsDialogConsentForm();

    ConsentManager.setConsentInfoUpdateListener(
        (onConsentInfoUpdated, consent) async => {
              _isConsented = true,
              initialization(),
            },
        (onFailedToUpdateConsentInfo, error) =>
            {log.wtf("ConsentManager $error")});
  }

  Future<void> initialization() async {
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
      boolConsent: isConsented,
    );
    // GDPR Form
    var shouldShow = await ConsentManager.shouldShowConsentDialog();
    if (shouldShow == ShouldShow.FALSE && isConsented == true) return;
    final periodicTimer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) async {
        // log.wtf('appo: $isConsented');
        // log.wtf('appo: $shouldShow');
        await loadConsentForm();
        shouldShow = await ConsentManager.shouldShowConsentDialog();
        if (shouldShow != ShouldShow.TRUE) {
          timer.cancel();
        }
      },
    );

    if (shouldShow != ShouldShow.TRUE) {
      periodicTimer.cancel();
    }
  }
}
