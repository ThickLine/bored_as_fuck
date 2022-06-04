import 'package:baf/app/app.locator.dart';
import 'package:baf/app/app.logger.dart';
import 'package:baf/core/enum/systemwide_enums.dart';
import 'package:baf/models/activity/activity_model.dart';
import 'package:baf/services/save_service.dart';
import 'package:baf/services/todo_service.dart';
import 'package:intl/intl.dart';
import 'package:localization/localization.dart';
import 'package:share_plus/share_plus.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../models/todo/config/config_model.dart';
import '../../models/todo/todo_model.dart';

const String busyObjectKey = 'todo-key';

class TodoViewModel extends BaseViewModel {
  final log = getLogger('TodoViewModel');
  final _bottomSheetService = locator<BottomSheetService>();
  final _todoService = locator<TodoService>();
  final _saveService = locator<SaveService>();

  TodoModel _todo = TodoModel();

  TodoModel get todo => _todo;

  ConfigModel _config =
      ConfigModel(price: PriceModel(), accessibility: AccessibilityModel());

  ConfigModel get config => _config;

  Future<void> init(TodoModel? data) async {
    if (data != null) _todo = data;
    if (data == null) await createRandom();
  }

  // Create random todo
  Future<void> createRandom() async {
    await fetchActivity(config);
    notifyListeners();
  }

  /// Fetch todo activity
  Future<void> fetchActivity(ConfigModel data) async {
    _todo = await runBusyFuture(_todoService.fetchActivity(data),
        busyObject: busyObjectKey);
  }

//  Opens config sheet
  void onGenerator() async {
    var res = await _bottomSheetService.showCustomSheet(
        variant: BottomSheetType.TODO_SHEET,
        takesInput: true,
        isScrollControlled: true,
        enterBottomSheetDuration: const Duration(milliseconds: 500),
        data: config);

    if (res?.confirmed == true) {
      await fetchActivity(res?.data);
      _config = res?.data;
    }
  }

  /// Save item to activity service
  Future<void> onSavedItem() async {
    _todo = todo.copyWith(saved: true);
    ActivityModel activity = ActivityModel(
        activity: todo,
        title: todo.activity,
        description: todo.suggestion?.substring(0, 25),
        type: ActivityType.TODO);

    _saveService.addItemToList(activity);
    notifyListeners();
  }

  /// Share or copy [todo] to clipboard
  Future<void> onShare() async {
    Share.share("${todo.activity}!  ${todo.suggestion}",
        subject: "share_text".i18n());
  }

  /// [String] format double to currency string
  String formattedCurrency({double? number, String symbol = "€"}) {
    final formatter = NumberFormat.currency(
        locale: "en",
        customPattern: '#.### \u00a4',
        symbol: symbol,
        decimalDigits: 2);
    return formatter.format(number);
  }
}
