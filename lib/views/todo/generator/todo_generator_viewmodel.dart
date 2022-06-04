import 'package:baf/app/app.logger.dart';
import 'package:baf/core/constants/todo_constant.dart';
import 'package:baf/models/todo/config/config_model.dart';
import 'package:baf/services/counter_service.dart';
import 'package:baf/services/save_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class TodoGeneratorViewModel extends BaseViewModel {
  final log = getLogger('TodoGeneratorViewModel');
  final _counterService = locator<CounterService>();
  final _bottomSheetService = locator<BottomSheetService>();
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
    addCategoriesFromString();
  }

  // Reset form to default values
  Future<void> resetConfig() async {
    _form =
        ConfigModel(price: PriceModel(), accessibility: AccessibilityModel());
    _statusIndex;
    addCategoriesFromString();
    _counterService.resetCount();
    notifyListeners();
  }

  // Set price slider
  void onPriceSliderValues(
      {int? handlerIndex, double? lowerValue, double? upperValue}) {
    _form = form.copyWith.price!(min: lowerValue, max: upperValue);

    log.wtf(form.price);
    notifyListeners();
  }

  // Set accessibility slider
  void onAccessibilitySliderValues(
      {int? handlerIndex, double? lowerValue, double? upperValue}) {
    _form = form.copyWith.accessibility!(min: lowerValue, max: upperValue);
    notifyListeners();
  }

  // Set categories
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

  // Add categories from string
  void addCategoriesFromString() {
    if (form.type == null) return;
    _statusIndex = categoriesList.indexOf(form.type!);
    log.wtf(categoriesList.indexOf(form.type!));
    notifyListeners();
  }

  // Participant selector
  void onParticipant(int data) {
    _form = form.copyWith(participant: data);
  }

  // Return user selected data
  Future<void> onSubmit() async {
    return _bottomSheetService
        .completeSheet(SheetResponse(confirmed: true, data: form));
  }
}
