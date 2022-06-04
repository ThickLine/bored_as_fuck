// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'curved_list_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurvedListItemModel _$$_CurvedListItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_CurvedListItemModel(
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      type: $enumDecodeNullable(_$ActivityTypeEnumMap, json['type']),
      color: json['color'],
    );

Map<String, dynamic> _$$_CurvedListItemModelToJson(
        _$_CurvedListItemModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'type': _$ActivityTypeEnumMap[instance.type],
      'color': instance.color,
    };

const _$ActivityTypeEnumMap = {
  ActivityType.STORY: 'STORY',
  ActivityType.RECIPE: 'RECIPE',
  ActivityType.TODO: 'TODO',
  ActivityType.SAVE: 'SAVE',
  ActivityType.ABOUT: 'ABOUT',
};
