import 'package:baf/app/app.locator.dart';
import 'package:baf/app/app.router.dart';
import 'package:baf/models/activity/activity_model.dart';
import 'package:baf/services/save_service.dart';
import 'package:share_plus/share_plus.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SavedViewModel extends BaseViewModel {
  final _saveService = locator<SaveService>();
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();

  List<ActivityModel> get list => _saveService.itemList;

  Future<bool> onDeleteItem() async {
    var res = await _dialogService.showConfirmationDialog(
        title: "Delete item",
        description: "Are you sure you want to delete this item?",
        cancelTitle: "Cancel",
        confirmationTitle: "Confirm");

    return res?.confirmed ?? false;
  }

  Future<void> deleteItem(ActivityModel data) async {
    _saveService.removeItemFromList(data);
  }

  Future<void> onShare(ActivityModel data) async {
    Share.share("${data.activity}!  ${data.suggestion}",
        subject: "Hey, 'Bored as F' found me this.");
  }

  Future<void> onRoute(ActivityModel item) async {
    return _navigationService.clearTillFirstAndShow(Routes.itemView,
        arguments: ItemViewArguments(activity: item));
  }
}
