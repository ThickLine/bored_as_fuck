// ignore_for_file: constant_identifier_names

import 'package:hive/hive.dart';
part 'systemwide_enums.g.dart';

enum RequestType { POST, GET, PUT, DELETE }

enum ConnectivityStatus { Cellular, WiFi, Offline }

enum DialogType { BASIC, FORM, ERROR }

enum SnackbarType { BASE, SUCCESS, ERROR, FORM }

enum ButtonType { PRIMARY, PLAIN, ERROR }

enum ActionButtonType { OPEN, DELETE, CLOSE, ACCEPT }

@HiveType(typeId: 5, adapterName: 'ActivityTypeAdapter')
enum ActivityType {
  @HiveField(0)
  STORY,
  @HiveField(1)
  RECIPE,
  @HiveField(2)
  TODO
}

enum BottomSheetType {
  FLOATING_BOX,
  CONFIG_SHEET,
  STORY_SHEET,
  RECIPE_SHEET,
  TODO_SHEET
}

enum FileType {
  IMAGE,
  PDF,
}
