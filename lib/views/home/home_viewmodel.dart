import 'package:baf/app/app.locator.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/services/shared_preferences_service.dart';

import 'package:baf/views/config/config_view.dart';

import 'package:stacked/stacked.dart';
import 'package:baf/app/app.logger.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends IndexTrackingViewModel {
  final log = getLogger('MainViewModel');
  final _navigationService = locator<NavigationService>();
  final _sharedPreferencesService = locator<SharedPreferencesService>();

  Future<void> onSaveHomeRoute() async {
    var prefs = _sharedPreferencesService;
    prefs.saveData(key: "isHome", value: true);
  }

  // Route to setting screen
  Future onRoute() async {
    await onSaveHomeRoute();
    return _navigationService.replaceWithTransition(const ConfigView(),
        transition: "cupertino", duration: kPageDuration);
  }
}
