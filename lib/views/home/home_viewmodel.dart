import 'package:baf/app/app.locator.dart';

import 'package:baf/views/config/config_view.dart';

import 'package:stacked/stacked.dart';
import 'package:baf/app/app.logger.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends IndexTrackingViewModel {
  final log = getLogger('MainViewModel');
  final _navigationService = locator<NavigationService>();

  // Route to setting screen
  Future onRoute() async {
    return _navigationService.replaceWithTransition(const ConfigView(),
        transition: "cupertino", duration: const Duration(seconds: 2));

    // Routes.configView
  }
}
