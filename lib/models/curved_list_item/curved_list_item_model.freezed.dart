// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'curved_list_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurvedListItemModel _$CurvedListItemModelFromJson(Map<String, dynamic> json) {
  return _CurvedListItemModel.fromJson(json);
}

/// @nodoc
mixin _$CurvedListItemModel {
  String? get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  ActivityType? get type => throw _privateConstructorUsedError;
  dynamic? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurvedListItemModelCopyWith<CurvedListItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurvedListItemModelCopyWith<$Res> {
  factory $CurvedListItemModelCopyWith(
          CurvedListItemModel value, $Res Function(CurvedListItemModel) then) =
      _$CurvedListItemModelCopyWithImpl<$Res>;
  $Res call(
      {String? title, String? subtitle, ActivityType? type, dynamic? color});
}

/// @nodoc
class _$CurvedListItemModelCopyWithImpl<$Res>
    implements $CurvedListItemModelCopyWith<$Res> {
  _$CurvedListItemModelCopyWithImpl(this._value, this._then);

  final CurvedListItemModel _value;
  // ignore: unused_field
  final $Res Function(CurvedListItemModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? type = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ActivityType?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as dynamic?,
    ));
  }
}

/// @nodoc
abstract class _$$_CurvedListItemModelCopyWith<$Res>
    implements $CurvedListItemModelCopyWith<$Res> {
  factory _$$_CurvedListItemModelCopyWith(_$_CurvedListItemModel value,
          $Res Function(_$_CurvedListItemModel) then) =
      __$$_CurvedListItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title, String? subtitle, ActivityType? type, dynamic? color});
}

/// @nodoc
class __$$_CurvedListItemModelCopyWithImpl<$Res>
    extends _$CurvedListItemModelCopyWithImpl<$Res>
    implements _$$_CurvedListItemModelCopyWith<$Res> {
  __$$_CurvedListItemModelCopyWithImpl(_$_CurvedListItemModel _value,
      $Res Function(_$_CurvedListItemModel) _then)
      : super(_value, (v) => _then(v as _$_CurvedListItemModel));

  @override
  _$_CurvedListItemModel get _value => super._value as _$_CurvedListItemModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? type = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_CurvedListItemModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ActivityType?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as dynamic?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurvedListItemModel implements _CurvedListItemModel {
  _$_CurvedListItemModel({this.title, this.subtitle, this.type, this.color});

  factory _$_CurvedListItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_CurvedListItemModelFromJson(json);

  @override
  final String? title;
  @override
  final String? subtitle;
  @override
  final ActivityType? type;
  @override
  final dynamic? color;

  @override
  String toString() {
    return 'CurvedListItemModel(title: $title, subtitle: $subtitle, type: $type, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurvedListItemModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$$_CurvedListItemModelCopyWith<_$_CurvedListItemModel> get copyWith =>
      __$$_CurvedListItemModelCopyWithImpl<_$_CurvedListItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurvedListItemModelToJson(this);
  }
}

abstract class _CurvedListItemModel implements CurvedListItemModel {
  factory _CurvedListItemModel(
      {final String? title,
      final String? subtitle,
      final ActivityType? type,
      final dynamic? color}) = _$_CurvedListItemModel;

  factory _CurvedListItemModel.fromJson(Map<String, dynamic> json) =
      _$_CurvedListItemModel.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get subtitle => throw _privateConstructorUsedError;
  @override
  ActivityType? get type => throw _privateConstructorUsedError;
  @override
  dynamic? get color => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CurvedListItemModelCopyWith<_$_CurvedListItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
