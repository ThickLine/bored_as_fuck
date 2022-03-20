import 'package:baf/app/app.locator.dart';
import 'package:baf/app/app.logger.dart';
import 'package:baf/app/app.router.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/models/activity/activity_model.dart';
import 'package:baf/models/config/config_model.dart';
import 'package:baf/services/activity_service.dart';
import 'package:baf/services/counter_service.dart';
import 'package:baf/services/save_service.dart';
import 'package:baf/views/about/about_view.dart';
import 'package:baf/views/saved/saved_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ConfigViewModel extends ReactiveViewModel {
  final log = getLogger('ConfigViewModel');
  final _navigationService = locator<NavigationService>();
  final _activityService = locator<ActivityService>();
  final _counterService = locator<CounterService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _saveService = locator<SaveService>();

  int? _statusIndex;

  int? get statusIndex => _statusIndex;
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

  ConfigModel get config => _activityService.config;
  bool get isSaved => _saveService.itemList.isNotEmpty ? true : false;
  @override
  List<ReactiveServiceMixin> get reactiveServices => [_activityService];

  Future<void> init() async {
    addCategoriesFromString();
    notifyListeners();
  }

  Future<void> resetConfig() async {
    await _activityService.resetConfig();
    _statusIndex;
    addCategoriesFromString();
    _counterService.resetCount();
    notifyListeners();
  }

  void onPriceSliderValues(
      {int? handlerIndex, double? lowerValue, double? upperValue}) {
    _activityService.setPriceSliderValues(
        handlerIndex: handlerIndex,
        lowerValue: lowerValue,
        upperValue: upperValue);
    notifyListeners();
  }

  void onAccessibilitySliderValues(
      {int? handlerIndex, double? lowerValue, double? upperValue}) {
    _activityService.setAccessibilitySliderValues(
        handlerIndex: handlerIndex,
        lowerValue: lowerValue,
        upperValue: upperValue);
    notifyListeners();
  }

  void onCatogoriesSelect(int i, bool c) async {
    ConfigModel _config = config;
    if (c == false) {
      _statusIndex = null;
      _config = _config.copyWith(type: null);
    }
    if (c == true) {
      _statusIndex = i;
      _config = _config.copyWith(type: categoriesList[i]);
    }
    _activityService.updateConfig(_config);
    notifyListeners();
  }

  void addCategoriesFromString() {
    if (config.type == null) return;
    _statusIndex = categoriesList.indexOf(config.type!);
  }

  void onParticipant(int data) {
    _activityService.setParticipant(data);
  }

  Future<void> onRoute() async {
    await _activityService.updateConfig(config);
    ActivityModel res = await _activityService.fetchActivity();

    return _navigationService.clearTillFirstAndShow(Routes.itemView,
        arguments: ItemViewArguments(activity: res));
  }

  Future<void> onSavedRoute() async {
    return await _navigationService.navigateWithTransition(const SavedView(),
        transition: "cupertino", duration: kPageDuration);
  }

  Future<void> onAboutRoute() async {
    return await _navigationService.navigateWithTransition(const AboutView(),
        transition: "cupertino", duration: kPageDuration);
  }

  Future<void> onBottomsheetClose() async {
    return _bottomSheetService.completeSheet(SheetResponse(confirmed: false));
  }
}
