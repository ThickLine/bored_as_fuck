// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemModel _$ItemModelFromJson(Map<String, dynamic> json) {
  return _ItemModel.fromJson(json);
}

/// @nodoc
class _$ItemModelTearOff {
  const _$ItemModelTearOff();

  _ItemModel call({bool? saved, String? activity}) {
    return _ItemModel(
      saved: saved,
      activity: activity,
    );
  }

  ItemModel fromJson(Map<String, Object?> json) {
    return ItemModel.fromJson(json);
  }
}

/// @nodoc
const $ItemModel = _$ItemModelTearOff();

/// @nodoc
mixin _$ItemModel {
  bool? get saved => throw _privateConstructorUsedError;
  String? get activity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemModelCopyWith<ItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemModelCopyWith<$Res> {
  factory $ItemModelCopyWith(ItemModel value, $Res Function(ItemModel) then) =
      _$ItemModelCopyWithImpl<$Res>;
  $Res call({bool? saved, String? activity});
}

/// @nodoc
class _$ItemModelCopyWithImpl<$Res> implements $ItemModelCopyWith<$Res> {
  _$ItemModelCopyWithImpl(this._value, this._then);

  final ItemModel _value;
  // ignore: unused_field
  final $Res Function(ItemModel) _then;

  @override
  $Res call({
    Object? saved = freezed,
    Object? activity = freezed,
  }) {
    return _then(_value.copyWith(
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool?,
      activity: activity == freezed
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ItemModelCopyWith<$Res> implements $ItemModelCopyWith<$Res> {
  factory _$ItemModelCopyWith(
          _ItemModel value, $Res Function(_ItemModel) then) =
      __$ItemModelCopyWithImpl<$Res>;
  @override
  $Res call({bool? saved, String? activity});
}

/// @nodoc
class __$ItemModelCopyWithImpl<$Res> extends _$ItemModelCopyWithImpl<$Res>
    implements _$ItemModelCopyWith<$Res> {
  __$ItemModelCopyWithImpl(_ItemModel _value, $Res Function(_ItemModel) _then)
      : super(_value, (v) => _then(v as _ItemModel));

  @override
  _ItemModel get _value => super._value as _ItemModel;

  @override
  $Res call({
    Object? saved = freezed,
    Object? activity = freezed,
  }) {
    return _then(_ItemModel(
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool?,
      activity: activity == freezed
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemModel implements _ItemModel {
  _$_ItemModel({this.saved, this.activity});

  factory _$_ItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemModelFromJson(json);

  @override
  final bool? saved;
  @override
  final String? activity;

  @override
  String toString() {
    return 'ItemModel(saved: $saved, activity: $activity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemModel &&
            const DeepCollectionEquality().equals(other.saved, saved) &&
            const DeepCollectionEquality().equals(other.activity, activity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(saved),
      const DeepCollectionEquality().hash(activity));

  @JsonKey(ignore: true)
  @override
  _$ItemModelCopyWith<_ItemModel> get copyWith =>
      __$ItemModelCopyWithImpl<_ItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemModelToJson(this);
  }
}

abstract class _ItemModel implements ItemModel {
  factory _ItemModel({bool? saved, String? activity}) = _$_ItemModel;

  factory _ItemModel.fromJson(Map<String, dynamic> json) =
      _$_ItemModel.fromJson;

  @override
  bool? get saved;
  @override
  String? get activity;
  @override
  @JsonKey(ignore: true)
  _$ItemModelCopyWith<_ItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ActivityModel _$ActivityModelFromJson(Map<String, dynamic> json) {
  return _ActivityModel.fromJson(json);
}

/// @nodoc
class _$ActivityModelTearOff {
  const _$ActivityModelTearOff();

  _ActivityModel call(
      {String? activity,
      String? type,
      int? participants,
      double? price,
      String? link,
      String? key,
      double? accessibility,
      String? error}) {
    return _ActivityModel(
      activity: activity,
      type: type,
      participants: participants,
      price: price,
      link: link,
      key: key,
      accessibility: accessibility,
      error: error,
    );
  }

  ActivityModel fromJson(Map<String, Object?> json) {
    return ActivityModel.fromJson(json);
  }
}

/// @nodoc
const $ActivityModel = _$ActivityModelTearOff();

/// @nodoc
mixin _$ActivityModel {
  String? get activity => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get participants => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  double? get accessibility => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityModelCopyWith<ActivityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityModelCopyWith<$Res> {
  factory $ActivityModelCopyWith(
          ActivityModel value, $Res Function(ActivityModel) then) =
      _$ActivityModelCopyWithImpl<$Res>;
  $Res call(
      {String? activity,
      String? type,
      int? participants,
      double? price,
      String? link,
      String? key,
      double? accessibility,
      String? error});
}

/// @nodoc
class _$ActivityModelCopyWithImpl<$Res>
    implements $ActivityModelCopyWith<$Res> {
  _$ActivityModelCopyWithImpl(this._value, this._then);

  final ActivityModel _value;
  // ignore: unused_field
  final $Res Function(ActivityModel) _then;

  @override
  $Res call({
    Object? activity = freezed,
    Object? type = freezed,
    Object? participants = freezed,
    Object? price = freezed,
    Object? link = freezed,
    Object? key = freezed,
    Object? accessibility = freezed,
    Object? error = freezed,
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
      accessibility: accessibility == freezed
          ? _value.accessibility
          : accessibility // ignore: cast_nullable_to_non_nullable
              as double?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ActivityModelCopyWith<$Res>
    implements $ActivityModelCopyWith<$Res> {
  factory _$ActivityModelCopyWith(
          _ActivityModel value, $Res Function(_ActivityModel) then) =
      __$ActivityModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? activity,
      String? type,
      int? participants,
      double? price,
      String? link,
      String? key,
      double? accessibility,
      String? error});
}

/// @nodoc
class __$ActivityModelCopyWithImpl<$Res>
    extends _$ActivityModelCopyWithImpl<$Res>
    implements _$ActivityModelCopyWith<$Res> {
  __$ActivityModelCopyWithImpl(
      _ActivityModel _value, $Res Function(_ActivityModel) _then)
      : super(_value, (v) => _then(v as _ActivityModel));

  @override
  _ActivityModel get _value => super._value as _ActivityModel;

  @override
  $Res call({
    Object? activity = freezed,
    Object? type = freezed,
    Object? participants = freezed,
    Object? price = freezed,
    Object? link = freezed,
    Object? key = freezed,
    Object? accessibility = freezed,
    Object? error = freezed,
  }) {
    return _then(_ActivityModel(
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
      accessibility: accessibility == freezed
          ? _value.accessibility
          : accessibility // ignore: cast_nullable_to_non_nullable
              as double?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActivityModel implements _ActivityModel {
  _$_ActivityModel(
      {this.activity,
      this.type,
      this.participants,
      this.price,
      this.link,
      this.key,
      this.accessibility,
      this.error});

  factory _$_ActivityModel.fromJson(Map<String, dynamic> json) =>
      _$$_ActivityModelFromJson(json);

  @override
  final String? activity;
  @override
  final String? type;
  @override
  final int? participants;
  @override
  final double? price;
  @override
  final String? link;
  @override
  final String? key;
  @override
  final double? accessibility;
  @override
  final String? error;

  @override
  String toString() {
    return 'ActivityModel(activity: $activity, type: $type, participants: $participants, price: $price, link: $link, key: $key, accessibility: $accessibility, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActivityModel &&
            const DeepCollectionEquality().equals(other.activity, activity) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.participants, participants) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality()
                .equals(other.accessibility, accessibility) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(activity),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(participants),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(accessibility),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$ActivityModelCopyWith<_ActivityModel> get copyWith =>
      __$ActivityModelCopyWithImpl<_ActivityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActivityModelToJson(this);
  }
}

abstract class _ActivityModel implements ActivityModel {
  factory _ActivityModel(
      {String? activity,
      String? type,
      int? participants,
      double? price,
      String? link,
      String? key,
      double? accessibility,
      String? error}) = _$_ActivityModel;

  factory _ActivityModel.fromJson(Map<String, dynamic> json) =
      _$_ActivityModel.fromJson;

  @override
  String? get activity;
  @override
  String? get type;
  @override
  int? get participants;
  @override
  double? get price;
  @override
  String? get link;
  @override
  String? get key;
  @override
  double? get accessibility;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$ActivityModelCopyWith<_ActivityModel> get copyWith =>
      throw _privateConstructorUsedError;
}
