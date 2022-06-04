// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemAdapter extends TypeAdapter<ItemModel> {
  @override
  final int typeId = 0;

  @override
  ItemModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ItemModel(
      items: (fields[0] as List?)?.cast<ActivityModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, ItemModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.items);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ActivityAdapter extends TypeAdapter<ActivityModel> {
  @override
  final int typeId = 1;

  @override
  ActivityModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ActivityModel(
      title: fields[0] as String?,
      description: fields[1] as String?,
      type: fields[2] as ActivityType?,
      activity: fields[3] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, ActivityModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.activity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ActivityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemModel _$$_ItemModelFromJson(Map<String, dynamic> json) => _$_ItemModel(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ActivityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ItemModelToJson(_$_ItemModel instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$_ActivityModel _$$_ActivityModelFromJson(Map<String, dynamic> json) =>
    _$_ActivityModel(
      title: json['title'] as String?,
      description: json['description'] as String?,
      type: $enumDecodeNullable(_$ActivityTypeEnumMap, json['type']),
      activity: json['activity'],
    );

Map<String, dynamic> _$$_ActivityModelToJson(_$_ActivityModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'type': _$ActivityTypeEnumMap[instance.type],
      'activity': instance.activity,
    };

const _$ActivityTypeEnumMap = {
  ActivityType.STORY: 'STORY',
  ActivityType.RECIPE: 'RECIPE',
  ActivityType.TODO: 'TODO',
  ActivityType.SAVE: 'SAVE',
  ActivityType.ABOUT: 'ABOUT',
};
