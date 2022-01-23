import 'package:baf/app/app.locator.dart';
import 'package:baf/app/app.logger.dart';
import 'package:baf/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ConfigViewModel extends BaseViewModel {
  final log = getLogger('ConfigViewModel');
  final _navigationService = locator<NavigationService>();

  double _lowerValue = 0;
  double _upperValue = 0;
  int _statusIndex = 7;

  double get lowerValue => _lowerValue;
  double get upperValue => _upperValue;
  int get statusIndex => _statusIndex;
  List<String> get categoriesList => [
        "education",
        "recreational",
        "social",
        "diy",
        "charity",
        "cooking",
        "relaxation",
        "music",
        "busywork"
      ];

  void setSliderValues(
      {int? handlerIndex, dynamic lowerValue, dynamic upperValue}) {
    _lowerValue = lowerValue;
    _upperValue = upperValue;
    notifyListeners();
  }

  void onCatogoriesSelect(int i) async {
    _statusIndex = i;
    notifyListeners();
  }

  Future<void> onRoute() async {
    return _navigationService.navigateTo(Routes.itemView);
  }

  Future<void> onSavedRoute() async {
    return _navigationService.navigateTo(Routes.savedView);
  }
}
