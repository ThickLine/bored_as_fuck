import 'package:baf/models/activity/activity_model.dart';
import 'package:hive/hive.dart';

class Boxes {
  static Box<ItemModel> getFile() => Hive.box<ItemModel>("myActivity");
}
