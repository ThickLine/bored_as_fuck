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
      activity: fields[0] as String?,
      saved: fields[1] as bool,
      type: fields[2] as String?,
      participants: fields[3] as int?,
      price: fields[4] as double?,
      link: fields[5] as String?,
      key: fields[6] as String?,
      suggestion: fields[7] as String?,
      accessibility: fields[8] as double?,
      error: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ActivityModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.activity)
      ..writeByte(1)
      ..write(obj.saved)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.participants)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.link)
      ..writeByte(6)
      ..write(obj.key)
      ..writeByte(7)
      ..write(obj.suggestion)
      ..writeByte(8)
      ..write(obj.accessibility)
      ..writeByte(9)
      ..write(obj.error);
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
      activity: json['activity'] as String?,
      saved: json['saved'] as bool? ?? false,
      type: json['type'] as String?,
      participants: json['participants'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      link: json['link'] as String?,
      key: json['key'] as String?,
      suggestion: json['suggestion'] as String?,
      accessibility: (json['accessibility'] as num?)?.toDouble(),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_ActivityModelToJson(_$_ActivityModel instance) =>
    <String, dynamic>{
      'activity': instance.activity,
      'saved': instance.saved,
      'type': instance.type,
      'participants': instance.participants,
      'price': instance.price,
      'link': instance.link,
      'key': instance.key,
      'suggestion': instance.suggestion,
      'accessibility': instance.accessibility,
      'error': instance.error,
    };
