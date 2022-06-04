import 'package:baf/app/app.locator.dart';
import 'package:baf/models/activity/activity_model.dart';
import 'package:baf/services/save_service.dart';
import 'package:localization/localization.dart';
import 'package:share_plus/share_plus.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SavedViewModel extends BaseViewModel {
  final _saveService = locator<SaveService>();
  final _dialogService = locator<DialogService>();

  List<ActivityModel> get list => _saveService.itemList;

  Future<bool> onDeleteItem() async {
    var res = await _dialogService.showConfirmationDialog(
        title: "delete_item_title".i18n(),
        description: "delete_item_description".i18n(),
        cancelTitle: "generate_cancel".i18n(),
        confirmationTitle: "generate_confirm".i18n());

    return res?.confirmed ?? false;
  }

  Future<void> deleteItem(ActivityModel data) async {
    _saveService.removeItemFromList(data);
  }

  Future<void> onShare(ActivityModel data) async {
    Share.share("${data.title}!  ${data.description}",
        subject: "share_text".i18n());
  }
}
