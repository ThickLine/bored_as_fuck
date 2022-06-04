// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoryAdapter extends TypeAdapter<StoryModel> {
  @override
  final int typeId = 3;

  @override
  StoryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoryModel(
      topic: fields[0] as String?,
      saved: fields[1] as bool,
      count: fields[2] as String?,
      story: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, StoryModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.topic)
      ..writeByte(1)
      ..write(obj.saved)
      ..writeByte(2)
      ..write(obj.count)
      ..writeByte(3)
      ..write(obj.story);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoryModel _$$_StoryModelFromJson(Map<String, dynamic> json) =>
    _$_StoryModel(
      topic: json['topic'] as String?,
      saved: json['saved'] as bool? ?? false,
      count: json['count'] as String? ?? "1",
      story: json['story'] as String?,
    );

Map<String, dynamic> _$$_StoryModelToJson(_$_StoryModel instance) =>
    <String, dynamic>{
      'topic': instance.topic,
      'saved': instance.saved,
      'count': instance.count,
      'story': instance.story,
    };
