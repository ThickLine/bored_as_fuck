import 'dart:async';
import 'package:baf/app/app.locator.dart';
import 'package:baf/app/app.logger.dart';
import 'package:baf/app/app.router.dart';
import 'package:baf/services/appodeal_service.dart';
import 'package:baf/services/save_service.dart';
import 'package:baf/services/shared_preferences_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartUpViewModel extends BaseViewModel {
  final log = getLogger('StartUpViewModel');
  final _navigationService = locator<NavigationService>();
  final _saveService = locator<SaveService>();
  final _appoDealService = locator<AppoDealService>();
  final _sharedPreferencesService = locator<SharedPreferencesService>();

  Future<void> init() async {
    var prefs = _sharedPreferencesService;
    await _saveService.initItem();
    // Load AppoDeal
    Timer? timer;
    timer = Timer.periodic(const Duration(seconds: 1), (_) async {
      var res = await _appoDealService.initialization();
      if (res == true) timer!.cancel();
    });

    bool? isHome = await prefs.getData(key: "isHome");
    if (isHome != null && isHome == true) {
      return _navigationService.pushNamedAndRemoveUntil(Routes.configView);
    }

    return _navigationService.pushNamedAndRemoveUntil(Routes.homeView);
  }

  /// Here you can set startup delay Shoudn't exceed more than [3 sec]
  Future handleMove() async {
    Duration duration = const Duration(milliseconds: 3500);
    return Timer(duration, init);
  }
}
