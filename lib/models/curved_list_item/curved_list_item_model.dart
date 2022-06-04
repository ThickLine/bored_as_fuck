import 'package:baf/core/enum/systemwide_enums.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'curved_list_item_model.freezed.dart';
part 'curved_list_item_model.g.dart';

@freezed
class CurvedListItemModel with _$CurvedListItemModel {
  factory CurvedListItemModel({
    String? title,
    String? subtitle,
    ActivityType? type,
    dynamic? color,
  }) = _CurvedListItemModel;

  factory CurvedListItemModel.fromJson(Map<String, dynamic> json) =>
      _$CurvedListItemModelFromJson(json);
}
