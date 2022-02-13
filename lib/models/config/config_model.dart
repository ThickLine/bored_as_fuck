import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_model.freezed.dart';
part 'config_model.g.dart';

@freezed
class ConfigModel with _$ConfigModel {
  factory ConfigModel(
      {PriceModel? price,
      String? type,
      @Default(2) double? participant,
      AccessibilityModel? accessibility}) = _ConfigModel;

  factory ConfigModel.fromJson(Map<String, dynamic> json) =>
      _$ConfigModelFromJson(json);
}

@freezed
class PriceModel with _$PriceModel {
  factory PriceModel({
    @Default(0) double? min,
    @Default(1000) double? max,
  }) = _PriceModel;

  factory PriceModel.fromJson(Map<String, dynamic> json) =>
      _$PriceModelFromJson(json);
}

@freezed
class AccessibilityModel with _$AccessibilityModel {
  factory AccessibilityModel({
    @Default(0.0) double? min,
    @Default(0.2) double? max,
  }) = _AccessibilityModel;

  factory AccessibilityModel.fromJson(Map<String, dynamic> json) =>
      _$AccessibilityModelFromJson(json);
}
