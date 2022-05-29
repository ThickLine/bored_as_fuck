// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'counter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CounterModel _$CounterModelFromJson(Map<String, dynamic> json) {
  return _CounterModel.fromJson(json);
}

/// @nodoc
mixin _$CounterModel {
  int get minValue => throw _privateConstructorUsedError;
  int get maxValue => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CounterModelCopyWith<CounterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterModelCopyWith<$Res> {
  factory $CounterModelCopyWith(
          CounterModel value, $Res Function(CounterModel) then) =
      _$CounterModelCopyWithImpl<$Res>;
  $Res call({int minValue, int maxValue, int value});
}

/// @nodoc
class _$CounterModelCopyWithImpl<$Res> implements $CounterModelCopyWith<$Res> {
  _$CounterModelCopyWithImpl(this._value, this._then);

  final CounterModel _value;
  // ignore: unused_field
  final $Res Function(CounterModel) _then;

  @override
  $Res call({
    Object? minValue = freezed,
    Object? maxValue = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      minValue: minValue == freezed
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as int,
      maxValue: maxValue == freezed
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as int,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_CounterModelCopyWith<$Res>
    implements $CounterModelCopyWith<$Res> {
  factory _$$_CounterModelCopyWith(
          _$_CounterModel value, $Res Function(_$_CounterModel) then) =
      __$$_CounterModelCopyWithImpl<$Res>;
  @override
  $Res call({int minValue, int maxValue, int value});
}

/// @nodoc
class __$$_CounterModelCopyWithImpl<$Res>
    extends _$CounterModelCopyWithImpl<$Res>
    implements _$$_CounterModelCopyWith<$Res> {
  __$$_CounterModelCopyWithImpl(
      _$_CounterModel _value, $Res Function(_$_CounterModel) _then)
      : super(_value, (v) => _then(v as _$_CounterModel));

  @override
  _$_CounterModel get _value => super._value as _$_CounterModel;

  @override
  $Res call({
    Object? minValue = freezed,
    Object? maxValue = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_CounterModel(
      minValue: minValue == freezed
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as int,
      maxValue: maxValue == freezed
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as int,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CounterModel implements _CounterModel {
  _$_CounterModel({this.minValue = 1, this.maxValue = 10, this.value = 1});

  factory _$_CounterModel.fromJson(Map<String, dynamic> json) =>
      _$$_CounterModelFromJson(json);

  @override
  @JsonKey()
  final int minValue;
  @override
  @JsonKey()
  final int maxValue;
  @override
  @JsonKey()
  final int value;

  @override
  String toString() {
    return 'CounterModel(minValue: $minValue, maxValue: $maxValue, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CounterModel &&
            const DeepCollectionEquality().equals(other.minValue, minValue) &&
            const DeepCollectionEquality().equals(other.maxValue, maxValue) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(minValue),
      const DeepCollectionEquality().hash(maxValue),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_CounterModelCopyWith<_$_CounterModel> get copyWith =>
      __$$_CounterModelCopyWithImpl<_$_CounterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CounterModelToJson(this);
  }
}

abstract class _CounterModel implements CounterModel {
  factory _CounterModel(
      {final int minValue,
      final int maxValue,
      final int value}) = _$_CounterModel;

  factory _CounterModel.fromJson(Map<String, dynamic> json) =
      _$_CounterModel.fromJson;

  @override
  int get minValue => throw _privateConstructorUsedError;
  @override
  int get maxValue => throw _privateConstructorUsedError;
  @override
  int get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CounterModelCopyWith<_$_CounterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
