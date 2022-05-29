import 'package:baf/app/app.logger.dart';
import 'package:baf/hive/boxes_hive.dart';
import 'package:baf/models/activity/activity_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SaveService {
  final log = getLogger('SaveService');

  List<ActivityModel> _itemList = [];

  List<ActivityModel> get itemList => _itemList;
  ItemModel get item => ItemModel(items: itemList);

  Future<void> initItem() async {
    Box<ItemModel> box = Boxes.getFile();
    var list = box.get("myActivity");
    _itemList = list?.items ?? [];
  }

  Future<void> addItemToList(ActivityModel item) async {
    _itemList.add(item);
    await saveToHive();
  }

  Future<void> saveToHive() async {
    Box<ItemModel> box = Boxes.getFile();
    box.put("myActivity", item);
  }

  void removeItemFromList(ActivityModel item) {
    _itemList.remove(item);
  }
}
