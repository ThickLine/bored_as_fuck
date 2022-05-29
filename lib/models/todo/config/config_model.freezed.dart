// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConfigModel _$ConfigModelFromJson(Map<String, dynamic> json) {
  return _ConfigModel.fromJson(json);
}

/// @nodoc
mixin _$ConfigModel {
  PriceModel? get price => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get participant => throw _privateConstructorUsedError;
  AccessibilityModel? get accessibility => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigModelCopyWith<ConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigModelCopyWith<$Res> {
  factory $ConfigModelCopyWith(
          ConfigModel value, $Res Function(ConfigModel) then) =
      _$ConfigModelCopyWithImpl<$Res>;
  $Res call(
      {PriceModel? price,
      String? type,
      int? participant,
      AccessibilityModel? accessibility});

  $PriceModelCopyWith<$Res>? get price;
  $AccessibilityModelCopyWith<$Res>? get accessibility;
}

/// @nodoc
class _$ConfigModelCopyWithImpl<$Res> implements $ConfigModelCopyWith<$Res> {
  _$ConfigModelCopyWithImpl(this._value, this._then);

  final ConfigModel _value;
  // ignore: unused_field
  final $Res Function(ConfigModel) _then;

  @override
  $Res call({
    Object? price = freezed,
    Object? type = freezed,
    Object? participant = freezed,
    Object? accessibility = freezed,
  }) {
    return _then(_value.copyWith(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceModel?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      participant: participant == freezed
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as int?,
      accessibility: accessibility == freezed
          ? _value.accessibility
          : accessibility // ignore: cast_nullable_to_non_nullable
              as AccessibilityModel?,
    ));
  }

  @override
  $PriceModelCopyWith<$Res>? get price {
    if (_value.price == null) {
      return null;
    }

    return $PriceModelCopyWith<$Res>(_value.price!, (value) {
      return _then(_value.copyWith(price: value));
    });
  }

  @override
  $AccessibilityModelCopyWith<$Res>? get accessibility {
    if (_value.accessibility == null) {
      return null;
    }

    return $AccessibilityModelCopyWith<$Res>(_value.accessibility!, (value) {
      return _then(_value.copyWith(accessibility: value));
    });
  }
}

/// @nodoc
abstract class _$$_ConfigModelCopyWith<$Res>
    implements $ConfigModelCopyWith<$Res> {
  factory _$$_ConfigModelCopyWith(
          _$_ConfigModel value, $Res Function(_$_ConfigModel) then) =
      __$$_ConfigModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {PriceModel? price,
      String? type,
      int? participant,
      AccessibilityModel? accessibility});

  @override
  $PriceModelCopyWith<$Res>? get price;
  @override
  $AccessibilityModelCopyWith<$Res>? get accessibility;
}

/// @nodoc
class __$$_ConfigModelCopyWithImpl<$Res> extends _$ConfigModelCopyWithImpl<$Res>
    implements _$$_ConfigModelCopyWith<$Res> {
  __$$_ConfigModelCopyWithImpl(
      _$_ConfigModel _value, $Res Function(_$_ConfigModel) _then)
      : super(_value, (v) => _then(v as _$_ConfigModel));

  @override
  _$_ConfigModel get _value => super._value as _$_ConfigModel;

  @override
  $Res call({
    Object? price = freezed,
    Object? type = freezed,
    Object? participant = freezed,
    Object? accessibility = freezed,
  }) {
    return _then(_$_ConfigModel(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceModel?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      participant: participant == freezed
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as int?,
      accessibility: accessibility == freezed
          ? _value.accessibility
          : accessibility // ignore: cast_nullable_to_non_nullable
              as AccessibilityModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConfigModel implements _ConfigModel {
  _$_ConfigModel(
      {this.price, this.type, this.participant = 1, this.accessibility});

  factory _$_ConfigModel.fromJson(Map<String, dynamic> json) =>
      _$$_ConfigModelFromJson(json);

  @override
  final PriceModel? price;
  @override
  final String? type;
  @override
  @JsonKey()
  final int? participant;
  @override
  final AccessibilityModel? accessibility;

  @override
  String toString() {
    return 'ConfigModel(price: $price, type: $type, participant: $participant, accessibility: $accessibility)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfigModel &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.participant, participant) &&
            const DeepCollectionEquality()
                .equals(other.accessibility, accessibility));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(participant),
      const DeepCollectionEquality().hash(accessibility));

  @JsonKey(ignore: true)
  @override
  _$$_ConfigModelCopyWith<_$_ConfigModel> get copyWith =>
      __$$_ConfigModelCopyWithImpl<_$_ConfigModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConfigModelToJson(this);
  }
}

abstract class _ConfigModel implements ConfigModel {
  factory _ConfigModel(
      {final PriceModel? price,
      final String? type,
      final int? participant,
      final AccessibilityModel? accessibility}) = _$_ConfigModel;

  factory _ConfigModel.fromJson(Map<String, dynamic> json) =
      _$_ConfigModel.fromJson;

  @override
  PriceModel? get price => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  int? get participant => throw _privateConstructorUsedError;
  @override
  AccessibilityModel? get accessibility => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ConfigModelCopyWith<_$_ConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PriceModel _$PriceModelFromJson(Map<String, dynamic> json) {
  return _PriceModel.fromJson(json);
}

/// @nodoc
mixin _$PriceModel {
  double? get min => throw _privateConstructorUsedError;
  double? get max => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceModelCopyWith<PriceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceModelCopyWith<$Res> {
  factory $PriceModelCopyWith(
          PriceModel value, $Res Function(PriceModel) then) =
      _$PriceModelCopyWithImpl<$Res>;
  $Res call({double? min, double? max});
}

/// @nodoc
class _$PriceModelCopyWithImpl<$Res> implements $PriceModelCopyWith<$Res> {
  _$PriceModelCopyWithImpl(this._value, this._then);

  final PriceModel _value;
  // ignore: unused_field
  final $Res Function(PriceModel) _then;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_value.copyWith(
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_PriceModelCopyWith<$Res>
    implements $PriceModelCopyWith<$Res> {
  factory _$$_PriceModelCopyWith(
          _$_PriceModel value, $Res Function(_$_PriceModel) then) =
      __$$_PriceModelCopyWithImpl<$Res>;
  @override
  $Res call({double? min, double? max});
}

/// @nodoc
class __$$_PriceModelCopyWithImpl<$Res> extends _$PriceModelCopyWithImpl<$Res>
    implements _$$_PriceModelCopyWith<$Res> {
  __$$_PriceModelCopyWithImpl(
      _$_PriceModel _value, $Res Function(_$_PriceModel) _then)
      : super(_value, (v) => _then(v as _$_PriceModel));

  @override
  _$_PriceModel get _value => super._value as _$_PriceModel;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_$_PriceModel(
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PriceModel implements _PriceModel {
  _$_PriceModel({this.min = 0, this.max = 1000});

  factory _$_PriceModel.fromJson(Map<String, dynamic> json) =>
      _$$_PriceModelFromJson(json);

  @override
  @JsonKey()
  final double? min;
  @override
  @JsonKey()
  final double? max;

  @override
  String toString() {
    return 'PriceModel(min: $min, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceModel &&
            const DeepCollectionEquality().equals(other.min, min) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(min),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  _$$_PriceModelCopyWith<_$_PriceModel> get copyWith =>
      __$$_PriceModelCopyWithImpl<_$_PriceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceModelToJson(this);
  }
}

abstract class _PriceModel implements PriceModel {
  factory _PriceModel({final double? min, final double? max}) = _$_PriceModel;

  factory _PriceModel.fromJson(Map<String, dynamic> json) =
      _$_PriceModel.fromJson;

  @override
  double? get min => throw _privateConstructorUsedError;
  @override
  double? get max => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PriceModelCopyWith<_$_PriceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AccessibilityModel _$AccessibilityModelFromJson(Map<String, dynamic> json) {
  return _AccessibilityModel.fromJson(json);
}

/// @nodoc
mixin _$AccessibilityModel {
  double? get min => throw _privateConstructorUsedError;
  double? get max => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessibilityModelCopyWith<AccessibilityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessibilityModelCopyWith<$Res> {
  factory $AccessibilityModelCopyWith(
          AccessibilityModel value, $Res Function(AccessibilityModel) then) =
      _$AccessibilityModelCopyWithImpl<$Res>;
  $Res call({double? min, double? max});
}

/// @nodoc
class _$AccessibilityModelCopyWithImpl<$Res>
    implements $AccessibilityModelCopyWith<$Res> {
  _$AccessibilityModelCopyWithImpl(this._value, this._then);

  final AccessibilityModel _value;
  // ignore: unused_field
  final $Res Function(AccessibilityModel) _then;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_value.copyWith(
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_AccessibilityModelCopyWith<$Res>
    implements $AccessibilityModelCopyWith<$Res> {
  factory _$$_AccessibilityModelCopyWith(_$_AccessibilityModel value,
          $Res Function(_$_AccessibilityModel) then) =
      __$$_AccessibilityModelCopyWithImpl<$Res>;
  @override
  $Res call({double? min, double? max});
}

/// @nodoc
class __$$_AccessibilityModelCopyWithImpl<$Res>
    extends _$AccessibilityModelCopyWithImpl<$Res>
    implements _$$_AccessibilityModelCopyWith<$Res> {
  __$$_AccessibilityModelCopyWithImpl(
      _$_AccessibilityModel _value, $Res Function(_$_AccessibilityModel) _then)
      : super(_value, (v) => _then(v as _$_AccessibilityModel));

  @override
  _$_AccessibilityModel get _value => super._value as _$_AccessibilityModel;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_$_AccessibilityModel(
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccessibilityModel implements _AccessibilityModel {
  _$_AccessibilityModel({this.min = 0.0, this.max = 0.2});

  factory _$_AccessibilityModel.fromJson(Map<String, dynamic> json) =>
      _$$_AccessibilityModelFromJson(json);

  @override
  @JsonKey()
  final double? min;
  @override
  @JsonKey()
  final double? max;

  @override
  String toString() {
    return 'AccessibilityModel(min: $min, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccessibilityModel &&
            const DeepCollectionEquality().equals(other.min, min) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(min),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  _$$_AccessibilityModelCopyWith<_$_AccessibilityModel> get copyWith =>
      __$$_AccessibilityModelCopyWithImpl<_$_AccessibilityModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccessibilityModelToJson(this);
  }
}

abstract class _AccessibilityModel implements AccessibilityModel {
  factory _AccessibilityModel({final double? min, final double? max}) =
      _$_AccessibilityModel;

  factory _AccessibilityModel.fromJson(Map<String, dynamic> json) =
      _$_AccessibilityModel.fromJson;

  @override
  double? get min => throw _privateConstructorUsedError;
  @override
  double? get max => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AccessibilityModelCopyWith<_$_AccessibilityModel> get copyWith =>
      throw _privateConstructorUsedError;
}
