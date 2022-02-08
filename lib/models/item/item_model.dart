import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_model.freezed.dart';
part 'item_model.g.dart';

@freezed
class ItemModel with _$ItemModel {
  factory ItemModel({
    bool? saved,
    String? activity,
  }) = _ItemModel;

  factory ItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemModelFromJson(json);
}

@freezed
class ActivityModel with _$ActivityModel {
  factory ActivityModel(
      {String? activity,
      String? type,
      int? participants,
      double? price,
      String? link,
      String? key,
      double? accessibility,
      String? error}) = _ActivityModel;

  factory ActivityModel.fromJson(Map<String, dynamic> json) =>
      _$ActivityModelFromJson(json);
}
