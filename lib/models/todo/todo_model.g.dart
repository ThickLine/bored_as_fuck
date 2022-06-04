// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TodoAdapter extends TypeAdapter<TodoModel> {
  @override
  final int typeId = 4;

  @override
  TodoModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TodoModel(
      activity: fields[0] as String?,
      type: fields[1] as String?,
      participants: fields[2] as int?,
      price: fields[3] as double?,
      link: fields[4] as String?,
      key: fields[5] as String?,
      suggestion: fields[6] as String?,
      accessibility: fields[7] as double?,
      saved: fields[8] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, TodoModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.activity)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.participants)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.link)
      ..writeByte(5)
      ..write(obj.key)
      ..writeByte(6)
      ..write(obj.suggestion)
      ..writeByte(7)
      ..write(obj.accessibility)
      ..writeByte(8)
      ..write(obj.saved);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoModel _$$_TodoModelFromJson(Map<String, dynamic> json) => _$_TodoModel(
      activity: json['activity'] as String?,
      type: json['type'] as String?,
      participants: json['participants'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      link: json['link'] as String?,
      key: json['key'] as String?,
      suggestion: json['suggestion'] as String?,
      accessibility: (json['accessibility'] as num?)?.toDouble(),
      saved: json['saved'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TodoModelToJson(_$_TodoModel instance) =>
    <String, dynamic>{
      'activity': instance.activity,
      'type': instance.type,
      'participants': instance.participants,
      'price': instance.price,
      'link': instance.link,
      'key': instance.key,
      'suggestion': instance.suggestion,
      'accessibility': instance.accessibility,
      'saved': instance.saved,
    };
