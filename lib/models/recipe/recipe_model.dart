import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'recipe_model.freezed.dart';
part 'recipe_model.g.dart';

@unfreezed
@HiveType(typeId: 2, adapterName: 'RecipeAdapter')
class RecipeModel with _$RecipeModel {
  factory RecipeModel({
    @HiveField(0) List<String>? ingredients,
    @HiveField(1) String? recipe,
    @HiveField(2) @Default(false) bool saved,
  }) = _RecipeModel;

  factory RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeModelFromJson(json);
}
