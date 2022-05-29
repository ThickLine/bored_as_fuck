// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'story_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoryModel _$StoryModelFromJson(Map<String, dynamic> json) {
  return _StoryModel.fromJson(json);
}

/// @nodoc
mixin _$StoryModel {
  String? get topic => throw _privateConstructorUsedError;
  bool get saved => throw _privateConstructorUsedError;
  String? get count => throw _privateConstructorUsedError;
  String? get story => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoryModelCopyWith<StoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryModelCopyWith<$Res> {
  factory $StoryModelCopyWith(
          StoryModel value, $Res Function(StoryModel) then) =
      _$StoryModelCopyWithImpl<$Res>;
  $Res call({String? topic, bool saved, String? count, String? story});
}

/// @nodoc
class _$StoryModelCopyWithImpl<$Res> implements $StoryModelCopyWith<$Res> {
  _$StoryModelCopyWithImpl(this._value, this._then);

  final StoryModel _value;
  // ignore: unused_field
  final $Res Function(StoryModel) _then;

  @override
  $Res call({
    Object? topic = freezed,
    Object? saved = freezed,
    Object? count = freezed,
    Object? story = freezed,
  }) {
    return _then(_value.copyWith(
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String?,
      story: story == freezed
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_StoryModelCopyWith<$Res>
    implements $StoryModelCopyWith<$Res> {
  factory _$$_StoryModelCopyWith(
          _$_StoryModel value, $Res Function(_$_StoryModel) then) =
      __$$_StoryModelCopyWithImpl<$Res>;
  @override
  $Res call({String? topic, bool saved, String? count, String? story});
}

/// @nodoc
class __$$_StoryModelCopyWithImpl<$Res> extends _$StoryModelCopyWithImpl<$Res>
    implements _$$_StoryModelCopyWith<$Res> {
  __$$_StoryModelCopyWithImpl(
      _$_StoryModel _value, $Res Function(_$_StoryModel) _then)
      : super(_value, (v) => _then(v as _$_StoryModel));

  @override
  _$_StoryModel get _value => super._value as _$_StoryModel;

  @override
  $Res call({
    Object? topic = freezed,
    Object? saved = freezed,
    Object? count = freezed,
    Object? story = freezed,
  }) {
    return _then(_$_StoryModel(
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String?,
      story: story == freezed
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoryModel implements _StoryModel {
  _$_StoryModel({this.topic, this.saved = false, this.count = "1", this.story});

  factory _$_StoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_StoryModelFromJson(json);

  @override
  final String? topic;
  @override
  @JsonKey()
  final bool saved;
  @override
  @JsonKey()
  final String? count;
  @override
  final String? story;

  @override
  String toString() {
    return 'StoryModel(topic: $topic, saved: $saved, count: $count, story: $story)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoryModel &&
            const DeepCollectionEquality().equals(other.topic, topic) &&
            const DeepCollectionEquality().equals(other.saved, saved) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.story, story));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(topic),
      const DeepCollectionEquality().hash(saved),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(story));

  @JsonKey(ignore: true)
  @override
  _$$_StoryModelCopyWith<_$_StoryModel> get copyWith =>
      __$$_StoryModelCopyWithImpl<_$_StoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoryModelToJson(this);
  }
}

abstract class _StoryModel implements StoryModel {
  factory _StoryModel(
      {final String? topic,
      final bool saved,
      final String? count,
      final String? story}) = _$_StoryModel;

  factory _StoryModel.fromJson(Map<String, dynamic> json) =
      _$_StoryModel.fromJson;

  @override
  String? get topic => throw _privateConstructorUsedError;
  @override
  bool get saved => throw _privateConstructorUsedError;
  @override
  String? get count => throw _privateConstructorUsedError;
  @override
  String? get story => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StoryModelCopyWith<_$_StoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
