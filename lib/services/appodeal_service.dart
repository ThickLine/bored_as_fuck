import 'dart:async';

import 'package:baf/app/app.logger.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:stack_appodeal_flutter/stack_appodeal_flutter.dart';

class AppoDealService {
  final log = getLogger('AppoDealService');

  final bool _isConsented = false;
  bool get isConsented => _isConsented;
  String get key => dotenv.env['APPODEALKEY'] ?? "";

  Future<void> checkConsent() async {
    ConsentManager.requestConsentInfoUpdate(key);

    ConsentManager.setConsentInfoUpdateListener(
        (onConsentInfoUpdated, consent) {
      print('PRINT: onConsentInfoUpdated $consent');
    }, (onFailedToUpdateConsentInfo, error) {
      print('PRINT: onFailedToUpdateConsentInfo $error');
    });

    var shouldShow = await ConsentManager.shouldShowConsentDialog();
    print('PRINT: shouldShow $shouldShow');

    if (shouldShow == ShouldShow.TRUE) {
      ConsentManager.loadConsentForm();

      var isLoaded = await ConsentManager.consentFormIsLoaded();
      print('PRINT: isLoaded $isLoaded');
      if (isLoaded == true) {
        // ConsentManager.showAsDialogConsentForm();
        // ConsentManager.showAsActivityConsentForm();
        await ConsentManager.showAsDialogConsentForm();

        ConsentManager.setConsentFormListener((onConsentFormLoaded) {
          print('PRINT: onConsentFormLoaded');
        }, (onConsentFormError, error) {
          print('PRINT: onConsentFormError $error');
        }, (onConsentFormOpened) {
          print('PRINT: onConsentFormOpened');
        }, (onConsentFormClosed, consent) {
          initialization();
          print('PRINT: onConsentFormClosed $consent');
        });
      }
    }
  }

  Future<void> initialization() async {
    await checkConsent();
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
  }
}
