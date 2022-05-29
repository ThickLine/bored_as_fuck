// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'systemwide_enums.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ActivityTypeAdapter extends TypeAdapter<ActivityType> {
  @override
  final int typeId = 5;

  @override
  ActivityType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ActivityType.STORY;
      case 1:
        return ActivityType.RECIPE;
      case 2:
        return ActivityType.TODO;
      default:
        return ActivityType.STORY;
    }
  }

  @override
  void write(BinaryWriter writer, ActivityType obj) {
    switch (obj) {
      case ActivityType.STORY:
        writer.writeByte(0);
        break;
      case ActivityType.RECIPE:
        writer.writeByte(1);
        break;
      case ActivityType.TODO:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ActivityTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
