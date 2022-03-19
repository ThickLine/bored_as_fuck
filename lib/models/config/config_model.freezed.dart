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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConfigModel _$ConfigModelFromJson(Map<String, dynamic> json) {
  return _ConfigModel.fromJson(json);
}

/// @nodoc
class _$ConfigModelTearOff {
  const _$ConfigModelTearOff();

  _ConfigModel call(
      {PriceModel? price,
      String? type,
      int? participant = 1,
      AccessibilityModel? accessibility}) {
    return _ConfigModel(
      price: price,
      type: type,
      participant: participant,
      accessibility: accessibility,
    );
  }

  ConfigModel fromJson(Map<String, Object?> json) {
    return ConfigModel.fromJson(json);
  }
}

/// @nodoc
const $ConfigModel = _$ConfigModelTearOff();

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
abstract class _$ConfigModelCopyWith<$Res>
    implements $ConfigModelCopyWith<$Res> {
  factory _$ConfigModelCopyWith(
          _ConfigModel value, $Res Function(_ConfigModel) then) =
      __$ConfigModelCopyWithImpl<$Res>;
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
class __$ConfigModelCopyWithImpl<$Res> extends _$ConfigModelCopyWithImpl<$Res>
    implements _$ConfigModelCopyWith<$Res> {
  __$ConfigModelCopyWithImpl(
      _ConfigModel _value, $Res Function(_ConfigModel) _then)
      : super(_value, (v) => _then(v as _ConfigModel));

  @override
  _ConfigModel get _value => super._value as _ConfigModel;

  @override
  $Res call({
    Object? price = freezed,
    Object? type = freezed,
    Object? participant = freezed,
    Object? accessibility = freezed,
  }) {
    return _then(_ConfigModel(
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
  @JsonKey()
  @override
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
            other is _ConfigModel &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.participant, participant) &&
            const DeepCollectionEquality()
                .equals(other.accessibility, accessibility));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(participant),
      const DeepCollectionEquality().hash(accessibility));

  @JsonKey(ignore: true)
  @override
  _$ConfigModelCopyWith<_ConfigModel> get copyWith =>
      __$ConfigModelCopyWithImpl<_ConfigModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConfigModelToJson(this);
  }
}

abstract class _ConfigModel implements ConfigModel {
  factory _ConfigModel(
      {PriceModel? price,
      String? type,
      int? participant,
      AccessibilityModel? accessibility}) = _$_ConfigModel;

  factory _ConfigModel.fromJson(Map<String, dynamic> json) =
      _$_ConfigModel.fromJson;

  @override
  PriceModel? get price;
  @override
  String? get type;
  @override
  int? get participant;
  @override
  AccessibilityModel? get accessibility;
  @override
  @JsonKey(ignore: true)
  _$ConfigModelCopyWith<_ConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PriceModel _$PriceModelFromJson(Map<String, dynamic> json) {
  return _PriceModel.fromJson(json);
}

/// @nodoc
class _$PriceModelTearOff {
  const _$PriceModelTearOff();

  _PriceModel call({double? min = 0, double? max = 1000}) {
    return _PriceModel(
      min: min,
      max: max,
    );
  }

  PriceModel fromJson(Map<String, Object?> json) {
    return PriceModel.fromJson(json);
  }
}

/// @nodoc
const $PriceModel = _$PriceModelTearOff();

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
abstract class _$PriceModelCopyWith<$Res> implements $PriceModelCopyWith<$Res> {
  factory _$PriceModelCopyWith(
          _PriceModel value, $Res Function(_PriceModel) then) =
      __$PriceModelCopyWithImpl<$Res>;
  @override
  $Res call({double? min, double? max});
}

/// @nodoc
class __$PriceModelCopyWithImpl<$Res> extends _$PriceModelCopyWithImpl<$Res>
    implements _$PriceModelCopyWith<$Res> {
  __$PriceModelCopyWithImpl(
      _PriceModel _value, $Res Function(_PriceModel) _then)
      : super(_value, (v) => _then(v as _PriceModel));

  @override
  _PriceModel get _value => super._value as _PriceModel;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_PriceModel(
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

  @JsonKey()
  @override
  final double? min;
  @JsonKey()
  @override
  final double? max;

  @override
  String toString() {
    return 'PriceModel(min: $min, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PriceModel &&
            const DeepCollectionEquality().equals(other.min, min) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(min),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  _$PriceModelCopyWith<_PriceModel> get copyWith =>
      __$PriceModelCopyWithImpl<_PriceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceModelToJson(this);
  }
}

abstract class _PriceModel implements PriceModel {
  factory _PriceModel({double? min, double? max}) = _$_PriceModel;

  factory _PriceModel.fromJson(Map<String, dynamic> json) =
      _$_PriceModel.fromJson;

  @override
  double? get min;
  @override
  double? get max;
  @override
  @JsonKey(ignore: true)
  _$PriceModelCopyWith<_PriceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AccessibilityModel _$AccessibilityModelFromJson(Map<String, dynamic> json) {
  return _AccessibilityModel.fromJson(json);
}

/// @nodoc
class _$AccessibilityModelTearOff {
  const _$AccessibilityModelTearOff();

  _AccessibilityModel call({double? min = 0.0, double? max = 0.2}) {
    return _AccessibilityModel(
      min: min,
      max: max,
    );
  }

  AccessibilityModel fromJson(Map<String, Object?> json) {
    return AccessibilityModel.fromJson(json);
  }
}

/// @nodoc
const $AccessibilityModel = _$AccessibilityModelTearOff();

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
abstract class _$AccessibilityModelCopyWith<$Res>
    implements $AccessibilityModelCopyWith<$Res> {
  factory _$AccessibilityModelCopyWith(
          _AccessibilityModel value, $Res Function(_AccessibilityModel) then) =
      __$AccessibilityModelCopyWithImpl<$Res>;
  @override
  $Res call({double? min, double? max});
}

/// @nodoc
class __$AccessibilityModelCopyWithImpl<$Res>
    extends _$AccessibilityModelCopyWithImpl<$Res>
    implements _$AccessibilityModelCopyWith<$Res> {
  __$AccessibilityModelCopyWithImpl(
      _AccessibilityModel _value, $Res Function(_AccessibilityModel) _then)
      : super(_value, (v) => _then(v as _AccessibilityModel));

  @override
  _AccessibilityModel get _value => super._value as _AccessibilityModel;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_AccessibilityModel(
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

  @JsonKey()
  @override
  final double? min;
  @JsonKey()
  @override
  final double? max;

  @override
  String toString() {
    return 'AccessibilityModel(min: $min, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccessibilityModel &&
            const DeepCollectionEquality().equals(other.min, min) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(min),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  _$AccessibilityModelCopyWith<_AccessibilityModel> get copyWith =>
      __$AccessibilityModelCopyWithImpl<_AccessibilityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccessibilityModelToJson(this);
  }
}

abstract class _AccessibilityModel implements AccessibilityModel {
  factory _AccessibilityModel({double? min, double? max}) =
      _$_AccessibilityModel;

  factory _AccessibilityModel.fromJson(Map<String, dynamic> json) =
      _$_AccessibilityModel.fromJson;

  @override
  double? get min;
  @override
  double? get max;
  @override
  @JsonKey(ignore: true)
  _$AccessibilityModelCopyWith<_AccessibilityModel> get copyWith =>
      throw _privateConstructorUsedError;
}
