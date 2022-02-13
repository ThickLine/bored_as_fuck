import 'package:baf/app/app.locator.dart';
import 'package:baf/models/item/item_model.dart';
import 'package:baf/services/save_service.dart';
import 'package:stacked/stacked.dart';

class SavedViewModel extends BaseViewModel {
  final _saveService = locator<SaveService>();

  List<ItemModel> get list => _saveService.itemList;
}
