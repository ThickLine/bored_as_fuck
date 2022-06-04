import 'package:baf/models/todo/config/config_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@freezed
@HiveType(typeId: 4, adapterName: 'TodoAdapter')
class TodoModel with _$TodoModel {
  factory TodoModel({
    @HiveField(0) String? activity,
    @HiveField(1) String? type,
    @HiveField(2) int? participants,
    @HiveField(3) double? price,
    @HiveField(4) String? link,
    @HiveField(5) String? key,
    @HiveField(6) String? suggestion,
    @HiveField(7) double? accessibility,
    @HiveField(8) @Default(false) bool saved,
  }) = _TodoModel;

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);
}
