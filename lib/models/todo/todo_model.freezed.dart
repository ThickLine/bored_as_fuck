// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoModel _$TodoModelFromJson(Map<String, dynamic> json) {
  return _TodoModel.fromJson(json);
}

/// @nodoc
mixin _$TodoModel {
  @HiveField(0)
  String? get activity => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get type => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get participants => throw _privateConstructorUsedError;
  @HiveField(3)
  double? get price => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get link => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get key => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get suggestion => throw _privateConstructorUsedError;
  @HiveField(7)
  double? get accessibility => throw _privateConstructorUsedError;
  @HiveField(8)
  bool get saved => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoModelCopyWith<TodoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoModelCopyWith<$Res> {
  factory $TodoModelCopyWith(TodoModel value, $Res Function(TodoModel) then) =
      _$TodoModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? activity,
      @HiveField(1) String? type,
      @HiveField(2) int? participants,
      @HiveField(3) double? price,
      @HiveField(4) String? link,
      @HiveField(5) String? key,
      @HiveField(6) String? suggestion,
      @HiveField(7) double? accessibility,
      @HiveField(8) bool saved});
}

/// @nodoc
class _$TodoModelCopyWithImpl<$Res> implements $TodoModelCopyWith<$Res> {
  _$TodoModelCopyWithImpl(this._value, this._then);

  final TodoModel _value;
  // ignore: unused_field
  final $Res Function(TodoModel) _then;

  @override
  $Res call({
    Object? activity = freezed,
    Object? type = freezed,
    Object? participants = freezed,
    Object? price = freezed,
    Object? link = freezed,
    Object? key = freezed,
    Object? suggestion = freezed,
    Object? accessibility = freezed,
    Object? saved = freezed,
  }) {
    return _then(_value.copyWith(
      activity: activity == freezed
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      participants: participants == freezed
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as int?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      suggestion: suggestion == freezed
          ? _value.suggestion
          : suggestion // ignore: cast_nullable_to_non_nullable
              as String?,
      accessibility: accessibility == freezed
          ? _value.accessibility
          : accessibility // ignore: cast_nullable_to_non_nullable
              as double?,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_TodoModelCopyWith<$Res> implements $TodoModelCopyWith<$Res> {
  factory _$$_TodoModelCopyWith(
          _$_TodoModel value, $Res Function(_$_TodoModel) then) =
      __$$_TodoModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? activity,
      @HiveField(1) String? type,
      @HiveField(2) int? participants,
      @HiveField(3) double? price,
      @HiveField(4) String? link,
      @HiveField(5) String? key,
      @HiveField(6) String? suggestion,
      @HiveField(7) double? accessibility,
      @HiveField(8) bool saved});
}

/// @nodoc
class __$$_TodoModelCopyWithImpl<$Res> extends _$TodoModelCopyWithImpl<$Res>
    implements _$$_TodoModelCopyWith<$Res> {
  __$$_TodoModelCopyWithImpl(
      _$_TodoModel _value, $Res Function(_$_TodoModel) _then)
      : super(_value, (v) => _then(v as _$_TodoModel));

  @override
  _$_TodoModel get _value => super._value as _$_TodoModel;

  @override
  $Res call({
    Object? activity = freezed,
    Object? type = freezed,
    Object? participants = freezed,
    Object? price = freezed,
    Object? link = freezed,
    Object? key = freezed,
    Object? suggestion = freezed,
    Object? accessibility = freezed,
    Object? saved = freezed,
  }) {
    return _then(_$_TodoModel(
      activity: activity == freezed
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      participants: participants == freezed
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as int?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      suggestion: suggestion == freezed
          ? _value.suggestion
          : suggestion // ignore: cast_nullable_to_non_nullable
              as String?,
      accessibility: accessibility == freezed
          ? _value.accessibility
          : accessibility // ignore: cast_nullable_to_non_nullable
              as double?,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoModel implements _TodoModel {
  _$_TodoModel(
      {@HiveField(0) this.activity,
      @HiveField(1) this.type,
      @HiveField(2) this.participants,
      @HiveField(3) this.price,
      @HiveField(4) this.link,
      @HiveField(5) this.key,
      @HiveField(6) this.suggestion,
      @HiveField(7) this.accessibility,
      @HiveField(8) this.saved = false});

  factory _$_TodoModel.fromJson(Map<String, dynamic> json) =>
      _$$_TodoModelFromJson(json);

  @override
  @HiveField(0)
  final String? activity;
  @override
  @HiveField(1)
  final String? type;
  @override
  @HiveField(2)
  final int? participants;
  @override
  @HiveField(3)
  final double? price;
  @override
  @HiveField(4)
  final String? link;
  @override
  @HiveField(5)
  final String? key;
  @override
  @HiveField(6)
  final String? suggestion;
  @override
  @HiveField(7)
  final double? accessibility;
  @override
  @JsonKey()
  @HiveField(8)
  final bool saved;

  @override
  String toString() {
    return 'TodoModel(activity: $activity, type: $type, participants: $participants, price: $price, link: $link, key: $key, suggestion: $suggestion, accessibility: $accessibility, saved: $saved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoModel &&
            const DeepCollectionEquality().equals(other.activity, activity) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.participants, participants) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality()
                .equals(other.suggestion, suggestion) &&
            const DeepCollectionEquality()
                .equals(other.accessibility, accessibility) &&
            const DeepCollectionEquality().equals(other.saved, saved));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(activity),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(participants),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(suggestion),
      const DeepCollectionEquality().hash(accessibility),
      const DeepCollectionEquality().hash(saved));

  @JsonKey(ignore: true)
  @override
  _$$_TodoModelCopyWith<_$_TodoModel> get copyWith =>
      __$$_TodoModelCopyWithImpl<_$_TodoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoModelToJson(this);
  }
}

abstract class _TodoModel implements TodoModel {
  factory _TodoModel(
      {@HiveField(0) final String? activity,
      @HiveField(1) final String? type,
      @HiveField(2) final int? participants,
      @HiveField(3) final double? price,
      @HiveField(4) final String? link,
      @HiveField(5) final String? key,
      @HiveField(6) final String? suggestion,
      @HiveField(7) final double? accessibility,
      @HiveField(8) final bool saved}) = _$_TodoModel;

  factory _TodoModel.fromJson(Map<String, dynamic> json) =
      _$_TodoModel.fromJson;

  @override
  @HiveField(0)
  String? get activity => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String? get type => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  int? get participants => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  double? get price => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  String? get link => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  String? get key => throw _privateConstructorUsedError;
  @override
  @HiveField(6)
  String? get suggestion => throw _privateConstructorUsedError;
  @override
  @HiveField(7)
  double? get accessibility => throw _privateConstructorUsedError;
  @override
  @HiveField(8)
  bool get saved => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TodoModelCopyWith<_$_TodoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
