import 'package:baf/app/app.logger.dart';
import 'package:baf/models/item/item_model.dart';

class SaveService {
  final log = getLogger('SaveService');

  List<ItemModel> _itemList = [];

  List<ItemModel> get itemList => _itemList;

  void addItemToList(ItemModel item) {
    _itemList.add(item);
  }

  void removeItemFromList(ItemModel item) {
    _itemList.remove(item);
  }
}
