// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'activity_model.dart';

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

  _ItemModel call({@HiveField(0) List<ActivityModel>? items}) {
    return _ItemModel(
      items: items,
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
  @HiveField(0)
  List<ActivityModel>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemModelCopyWith<ItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemModelCopyWith<$Res> {
  factory $ItemModelCopyWith(ItemModel value, $Res Function(ItemModel) then) =
      _$ItemModelCopyWithImpl<$Res>;
  $Res call({@HiveField(0) List<ActivityModel>? items});
}

/// @nodoc
class _$ItemModelCopyWithImpl<$Res> implements $ItemModelCopyWith<$Res> {
  _$ItemModelCopyWithImpl(this._value, this._then);

  final ItemModel _value;
  // ignore: unused_field
  final $Res Function(ItemModel) _then;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ActivityModel>?,
    ));
  }
}

/// @nodoc
abstract class _$ItemModelCopyWith<$Res> implements $ItemModelCopyWith<$Res> {
  factory _$ItemModelCopyWith(
          _ItemModel value, $Res Function(_ItemModel) then) =
      __$ItemModelCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) List<ActivityModel>? items});
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
    Object? items = freezed,
  }) {
    return _then(_ItemModel(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ActivityModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemModel implements _ItemModel {
  _$_ItemModel({@HiveField(0) this.items});

  factory _$_ItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemModelFromJson(json);

  @override
  @HiveField(0)
  final List<ActivityModel>? items;

  @override
  String toString() {
    return 'ItemModel(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemModel &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

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
  factory _ItemModel({@HiveField(0) List<ActivityModel>? items}) = _$_ItemModel;

  factory _ItemModel.fromJson(Map<String, dynamic> json) =
      _$_ItemModel.fromJson;

  @override
  @HiveField(0)
  List<ActivityModel>? get items;
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
      {@HiveField(0) String? activity,
      @HiveField(1) bool saved = false,
      @HiveField(2) String? type,
      @HiveField(3) int? participants,
      @HiveField(4) double? price,
      @HiveField(5) String? link,
      @HiveField(6) String? key,
      @HiveField(7) String? suggestion,
      @HiveField(8) double? accessibility,
      @HiveField(9) String? error}) {
    return _ActivityModel(
      activity: activity,
      saved: saved,
      type: type,
      participants: participants,
      price: price,
      link: link,
      key: key,
      suggestion: suggestion,
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
  @HiveField(0)
  String? get activity => throw _privateConstructorUsedError;
  @HiveField(1)
  bool get saved => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get type => throw _privateConstructorUsedError;
  @HiveField(3)
  int? get participants => throw _privateConstructorUsedError;
  @HiveField(4)
  double? get price => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get link => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get key => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get suggestion => throw _privateConstructorUsedError;
  @HiveField(8)
  double? get accessibility => throw _privateConstructorUsedError;
  @HiveField(9)
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
      {@HiveField(0) String? activity,
      @HiveField(1) bool saved,
      @HiveField(2) String? type,
      @HiveField(3) int? participants,
      @HiveField(4) double? price,
      @HiveField(5) String? link,
      @HiveField(6) String? key,
      @HiveField(7) String? suggestion,
      @HiveField(8) double? accessibility,
      @HiveField(9) String? error});
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
    Object? saved = freezed,
    Object? type = freezed,
    Object? participants = freezed,
    Object? price = freezed,
    Object? link = freezed,
    Object? key = freezed,
    Object? suggestion = freezed,
    Object? accessibility = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      activity: activity == freezed
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String?,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {@HiveField(0) String? activity,
      @HiveField(1) bool saved,
      @HiveField(2) String? type,
      @HiveField(3) int? participants,
      @HiveField(4) double? price,
      @HiveField(5) String? link,
      @HiveField(6) String? key,
      @HiveField(7) String? suggestion,
      @HiveField(8) double? accessibility,
      @HiveField(9) String? error});
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
    Object? saved = freezed,
    Object? type = freezed,
    Object? participants = freezed,
    Object? price = freezed,
    Object? link = freezed,
    Object? key = freezed,
    Object? suggestion = freezed,
    Object? accessibility = freezed,
    Object? error = freezed,
  }) {
    return _then(_ActivityModel(
      activity: activity == freezed
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String?,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {@HiveField(0) this.activity,
      @HiveField(1) this.saved = false,
      @HiveField(2) this.type,
      @HiveField(3) this.participants,
      @HiveField(4) this.price,
      @HiveField(5) this.link,
      @HiveField(6) this.key,
      @HiveField(7) this.suggestion,
      @HiveField(8) this.accessibility,
      @HiveField(9) this.error});

  factory _$_ActivityModel.fromJson(Map<String, dynamic> json) =>
      _$$_ActivityModelFromJson(json);

  @override
  @HiveField(0)
  final String? activity;
  @JsonKey()
  @override
  @HiveField(1)
  final bool saved;
  @override
  @HiveField(2)
  final String? type;
  @override
  @HiveField(3)
  final int? participants;
  @override
  @HiveField(4)
  final double? price;
  @override
  @HiveField(5)
  final String? link;
  @override
  @HiveField(6)
  final String? key;
  @override
  @HiveField(7)
  final String? suggestion;
  @override
  @HiveField(8)
  final double? accessibility;
  @override
  @HiveField(9)
  final String? error;

  @override
  String toString() {
    return 'ActivityModel(activity: $activity, saved: $saved, type: $type, participants: $participants, price: $price, link: $link, key: $key, suggestion: $suggestion, accessibility: $accessibility, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActivityModel &&
            const DeepCollectionEquality().equals(other.activity, activity) &&
            const DeepCollectionEquality().equals(other.saved, saved) &&
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
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(activity),
      const DeepCollectionEquality().hash(saved),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(participants),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(suggestion),
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
      {@HiveField(0) String? activity,
      @HiveField(1) bool saved,
      @HiveField(2) String? type,
      @HiveField(3) int? participants,
      @HiveField(4) double? price,
      @HiveField(5) String? link,
      @HiveField(6) String? key,
      @HiveField(7) String? suggestion,
      @HiveField(8) double? accessibility,
      @HiveField(9) String? error}) = _$_ActivityModel;

  factory _ActivityModel.fromJson(Map<String, dynamic> json) =
      _$_ActivityModel.fromJson;

  @override
  @HiveField(0)
  String? get activity;
  @override
  @HiveField(1)
  bool get saved;
  @override
  @HiveField(2)
  String? get type;
  @override
  @HiveField(3)
  int? get participants;
  @override
  @HiveField(4)
  double? get price;
  @override
  @HiveField(5)
  String? get link;
  @override
  @HiveField(6)
  String? get key;
  @override
  @HiveField(7)
  String? get suggestion;
  @override
  @HiveField(8)
  double? get accessibility;
  @override
  @HiveField(9)
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$ActivityModelCopyWith<_ActivityModel> get copyWith =>
      throw _privateConstructorUsedError;
}
