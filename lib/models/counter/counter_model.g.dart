// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CounterModel _$$_CounterModelFromJson(Map<String, dynamic> json) =>
    _$_CounterModel(
      minValue: json['minValue'] as int? ?? 0,
      maxValue: json['maxValue'] as int? ?? 10,
      value: json['value'] as int? ?? 0,
    );

Map<String, dynamic> _$$_CounterModelToJson(_$_CounterModel instance) =>
    <String, dynamic>{
      'minValue': instance.minValue,
      'maxValue': instance.maxValue,
      'value': instance.value,
    };
