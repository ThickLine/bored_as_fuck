// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConfigModel _$$_ConfigModelFromJson(Map<String, dynamic> json) =>
    _$_ConfigModel(
      price: json['price'] == null
          ? null
          : PriceModel.fromJson(json['price'] as Map<String, dynamic>),
      type: json['type'] as String?,
      participant: (json['participant'] as num?)?.toDouble() ?? 2,
      accessibility: json['accessibility'] == null
          ? null
          : AccessibilityModel.fromJson(
              json['accessibility'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ConfigModelToJson(_$_ConfigModel instance) =>
    <String, dynamic>{
      'price': instance.price,
      'type': instance.type,
      'participant': instance.participant,
      'accessibility': instance.accessibility,
    };

_$_PriceModel _$$_PriceModelFromJson(Map<String, dynamic> json) =>
    _$_PriceModel(
      min: (json['min'] as num?)?.toDouble() ?? 0,
      max: (json['max'] as num?)?.toDouble() ?? 1000,
    );

Map<String, dynamic> _$$_PriceModelToJson(_$_PriceModel instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };

_$_AccessibilityModel _$$_AccessibilityModelFromJson(
        Map<String, dynamic> json) =>
    _$_AccessibilityModel(
      min: (json['min'] as num?)?.toDouble() ?? 0.0,
      max: (json['max'] as num?)?.toDouble() ?? 0.2,
    );

Map<String, dynamic> _$$_AccessibilityModelToJson(
        _$_AccessibilityModel instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };
