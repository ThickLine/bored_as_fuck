// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemModel _$$_ItemModelFromJson(Map<String, dynamic> json) => _$_ItemModel(
      saved: json['saved'] as bool?,
      activity: json['activity'] as String?,
    );

Map<String, dynamic> _$$_ItemModelToJson(_$_ItemModel instance) =>
    <String, dynamic>{
      'saved': instance.saved,
      'activity': instance.activity,
    };

_$_ActivityModel _$$_ActivityModelFromJson(Map<String, dynamic> json) =>
    _$_ActivityModel(
      activity: json['activity'] as String?,
      type: json['type'] as String?,
      participants: json['participants'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      link: json['link'] as String?,
      key: json['key'] as String?,
      accessibility: (json['accessibility'] as num?)?.toDouble(),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_ActivityModelToJson(_$_ActivityModel instance) =>
    <String, dynamic>{
      'activity': instance.activity,
      'type': instance.type,
      'participants': instance.participants,
      'price': instance.price,
      'link': instance.link,
      'key': instance.key,
      'accessibility': instance.accessibility,
      'error': instance.error,
    };
