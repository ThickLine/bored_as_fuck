// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecipeAdapter extends TypeAdapter<RecipeModel> {
  @override
  final int typeId = 2;

  @override
  RecipeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RecipeModel();
  }

  @override
  void write(BinaryWriter writer, RecipeModel obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecipeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeModel _$$_RecipeModelFromJson(Map<String, dynamic> json) =>
    _$_RecipeModel(
      ingredients: (json['ingredients'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      recipe: json['recipe'] as String?,
      saved: json['saved'] as bool? ?? false,
    );

Map<String, dynamic> _$$_RecipeModelToJson(_$_RecipeModel instance) =>
    <String, dynamic>{
      'ingredients': instance.ingredients,
      'recipe': instance.recipe,
      'saved': instance.saved,
    };
