import 'package:baf/app/app.locator.dart';
import 'package:baf/app/app.logger.dart';
import 'package:baf/core/enum/systemwide_enums.dart';
import 'package:baf/models/item/item_model.dart';
import 'package:baf/services/activity_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ItemViewModel extends BaseViewModel {
  final log = getLogger('ConfigViewModel');
  final _bottomSheetService = locator<BottomSheetService>();
  final _activityService = locator<ActivityService>();

  ActivityModel? _activity;
  ActivityModel? get activity => _activity;

  Future<void> init(ActivityModel data) async {
    _activity = data;
    notifyListeners();
  }

  void onConfig() async {
    var res = await _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.CONFIG_SHEET,
      isScrollControlled: true,
    );
    if (res?.confirmed == true) {}
  }

  Future<void> onLoadNext() async {
    _activity = await _activityService.fetchActivity();
    notifyListeners();
  }
}
