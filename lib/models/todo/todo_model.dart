import 'package:baf/models/todo/config/config_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@freezed
@HiveType(typeId: 4, adapterName: 'TodoAdapter')
class TodoModel with _$TodoModel {
  factory TodoModel({
    String? activity,
    String? type,
    int? participants,
    double? price,
    String? link,
    String? key,
    String? suggestion,
    double? accessibility,
    @Default(false) bool saved,
  }) = _TodoModel;

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);
}
