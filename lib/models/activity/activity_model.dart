import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'activity_model.freezed.dart';
part 'activity_model.g.dart';

@freezed
@HiveType(typeId: 0, adapterName: 'ItemAdapter')
class ItemModel with _$ItemModel {
  // ignore_for_file: non_constant_identifier_names
  factory ItemModel({
    @HiveField(0) List<ActivityModel>? items,
  }) = _ItemModel;

  factory ItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemModelFromJson(json);
}

@freezed
@HiveType(typeId: 1, adapterName: 'ActivityAdapter')
class ActivityModel with _$ActivityModel {
  factory ActivityModel(
      {@HiveField(0) String? activity,
      @HiveField(1) @Default(false) bool saved,
      @HiveField(2) String? type,
      @HiveField(3) int? participants,
      @HiveField(4) double? price,
      @HiveField(5) String? link,
      @HiveField(6) String? key,
      @HiveField(7) String? suggestion,
      @HiveField(8) double? accessibility,
      @HiveField(9) String? error}) = _ActivityModel;

  factory ActivityModel.fromJson(Map<String, dynamic> json) =>
      _$ActivityModelFromJson(json);
}
