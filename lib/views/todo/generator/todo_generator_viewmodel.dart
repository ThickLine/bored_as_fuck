import 'package:baf/app/app.logger.dart';
import 'package:baf/core/constants/todo_constant.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/models/activity/activity_model.dart';
import 'package:baf/models/todo/config/config_model.dart';
import 'package:baf/services/activity_service.dart';
import 'package:baf/services/counter_service.dart';
import 'package:baf/services/save_service.dart';
import 'package:baf/services/todo_service.dart';
import 'package:baf/views/about/about_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class TodoGeneratorViewModel extends BaseViewModel {
  final log = getLogger('TodoGeneratorViewModel');

  final _navigationService = locator<NavigationService>();
  final _activityService = locator<ActivityService>();
  final _counterService = locator<CounterService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _todoService = locator<TodoService>();
  final _saveService = locator<SaveService>();

  int? _statusIndex;
  ConfigModel _form =
      ConfigModel(price: PriceModel(), accessibility: AccessibilityModel());

  int? get statusIndex => _statusIndex;
  List<String> get categoriesList => Todo.CATEGORIES;
  ConfigModel get form => _form;

  bool get isSaved => _saveService.itemList.isNotEmpty ? true : false;

  Future<void> init(ConfigModel? data) async {
    _form = data ?? ConfigModel();
    log.wtf(form);
    addCategoriesFromString();
  }

  Future<void> resetConfig() async {
    _form =
        ConfigModel(price: PriceModel(), accessibility: AccessibilityModel());
    _statusIndex;
    addCategoriesFromString();
    _counterService.resetCount();
    notifyListeners();
  }

  void onPriceSliderValues(
      {int? handlerIndex, double? lowerValue, double? upperValue}) {
    log.wtf(lowerValue);
    log.wtf(upperValue);
    _form = form.copyWith.price!(min: lowerValue, max: upperValue);
    notifyListeners();
  }

  void onAccessibilitySliderValues(
      {int? handlerIndex, double? lowerValue, double? upperValue}) {
    _form = form.copyWith.accessibility!(min: lowerValue, max: upperValue);
    notifyListeners();
  }

  void onCatogoriesSelect(int i, bool c) async {
    if (c == false) {
      _statusIndex = null;
      _form = form.copyWith(type: null);
    }
    if (c == true) {
      _statusIndex = i;
      _form = form.copyWith(type: categoriesList[i]);
    }

    notifyListeners();
  }

  void addCategoriesFromString() {
    if (form.type == null) return;
    _statusIndex = categoriesList.indexOf(form.type!);
    log.wtf(categoriesList.indexOf(form.type!));
    notifyListeners();
  }

  void onParticipant(int data) {
    _form = form.copyWith(participant: data);
  }

  Future<void> onGenerator() async {
    return _bottomSheetService
        .completeSheet(SheetResponse(confirmed: true, data: form));
  }
}
