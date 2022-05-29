import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'story_model.freezed.dart';
part 'story_model.g.dart';

@freezed
@HiveType(typeId: 3, adapterName: 'StoryAdapter')
class StoryModel with _$StoryModel {
  factory StoryModel(
      {String? topic,
      @Default(false) bool saved,
      @Default("1") String? count,
      String? story}) = _StoryModel;

  factory StoryModel.fromJson(Map<String, dynamic> json) =>
      _$StoryModelFromJson(json);
}
