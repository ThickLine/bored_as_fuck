import 'package:baf/app/app.locator.dart';
import 'package:baf/app/app.logger.dart';
import 'package:baf/app/app.router.dart';
import 'package:baf/models/activity/activity_model.dart';
import 'package:baf/models/config/config_model.dart';
import 'package:baf/services/activity_service.dart';
import 'package:baf/views/about/about_view.dart';
import 'package:baf/views/item/item_view.dart';
import 'package:baf/views/saved/saved_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ConfigViewModel extends BaseViewModel {
  final log = getLogger('ConfigViewModel');
  final _navigationService = locator<NavigationService>();
  final _activityService = locator<ActivityService>();

  int? _statusIndex;
  ConfigModel _config =
      ConfigModel(price: PriceModel(), accessibility: AccessibilityModel());

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

  ConfigModel get config => _config;

  Future<void> init() async {
    _config = _activityService.config;
    addCategoriesFromString();
    notifyListeners();
  }

  void setPriceSliderValues(
      {int? handlerIndex, double? lowerValue, double? upperValue}) {
    _config = config.copyWith.price!(min: lowerValue, max: upperValue);
    notifyListeners();
  }

  void setAccessibilitySliderValues(
      {int? handlerIndex, double? lowerValue, double? upperValue}) {
    _config = config.copyWith.accessibility!(min: lowerValue, max: upperValue);
    notifyListeners();
  }

  void onCatogoriesSelect(int i) async {
    _statusIndex = i;
    _config = config.copyWith(type: categoriesList[i]);
    notifyListeners();
  }

  void addCategoriesFromString() {
    if (config.type == null) return;
    _statusIndex = categoriesList.indexOf(config.type!);
  }

  void onParticipant(double data) async {
    _config = config.copyWith(participant: data);
    notifyListeners();
  }

  Future<void> onRoute() async {
    await _activityService.updateConfig(config);
    ActivityModel res = await _activityService.fetchActivity();

    return _navigationService.clearTillFirstAndShow(Routes.itemView,
        arguments: ItemViewArguments(activity: res));
  }

  Future<void> onSavedRoute() async {
    return await _navigationService.navigateWithTransition(const SavedView(),
        transition: "cupertino", duration: const Duration(milliseconds: 500));
  }

  Future<void> onAboutRoute() async {
    return await _navigationService.navigateWithTransition(const AboutView(),
        transition: "cupertino", duration: const Duration(milliseconds: 500));
  }
}
