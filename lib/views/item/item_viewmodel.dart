import 'package:baf/app/app.locator.dart';
import 'package:baf/app/app.logger.dart';
import 'package:baf/core/enum/systemwide_enums.dart';
import 'package:baf/models/activity/activity_model.dart';
import 'package:baf/services/activity_service.dart';
import 'package:baf/services/save_service.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ItemViewModel extends BaseViewModel {
  final log = getLogger('ConfigViewModel');
  final _bottomSheetService = locator<BottomSheetService>();
  final _activityService = locator<ActivityService>();
  final _snackBarService = locator<SnackbarService>();
  final _saveService = locator<SaveService>();

  ActivityModel? _activity;
  bool _isActiveActivity = false;
  ActivityModel? get activity => _activity;
  bool get isActiveActivity => _isActiveActivity;

  Future<void> init(ActivityModel data) async {
    _activity = data;
    notifyListeners();
  }

  void onConfig() async {
    var res = await _bottomSheetService.showCustomSheet(
        variant: BottomSheetType.CONFIG_SHEET,
        isScrollControlled: true,
        enterBottomSheetDuration: const Duration(milliseconds: 500));
    if (res?.confirmed == true) {}
  }

  void onActivity() async {
    _isActiveActivity = true;
    notifyListeners();
  }

  Future<void> onSavedItem() async {
    if (activity == null) return;
    _activity = activity!.copyWith(saved: true);
    _saveService.addItemToList(activity!);
  }

  Future<void> onLoadNext() async {
    _activity = await _activityService.fetchActivity();
    notifyListeners();
  }

  Future<void> onShare() async {
    Share.share("${activity?.activity}!  ${activity?.suggestion}",
        subject: 'Hey, Bored as F found me this.');
  }

  void onCopyText() {
    _snackBarService.showCustomSnackBar(
      variant: SnackbarType.SUCCESS,
      message: "Copied to clipboard",
      title: "Success",
    );
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
