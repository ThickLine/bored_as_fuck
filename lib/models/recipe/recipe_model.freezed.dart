// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeModel _$RecipeModelFromJson(Map<String, dynamic> json) {
  return _RecipeModel.fromJson(json);
}

/// @nodoc
mixin _$RecipeModel {
  @HiveField(0)
  List<String>? get ingredients => throw _privateConstructorUsedError;
  @HiveField(0)
  set ingredients(List<String>? value) => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get recipe => throw _privateConstructorUsedError;
  @HiveField(1)
  set recipe(String? value) => throw _privateConstructorUsedError;
  @HiveField(2)
  bool get saved => throw _privateConstructorUsedError;
  @HiveField(2)
  set saved(bool value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeModelCopyWith<RecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeModelCopyWith<$Res> {
  factory $RecipeModelCopyWith(
          RecipeModel value, $Res Function(RecipeModel) then) =
      _$RecipeModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) List<String>? ingredients,
      @HiveField(1) String? recipe,
      @HiveField(2) bool saved});
}

/// @nodoc
class _$RecipeModelCopyWithImpl<$Res> implements $RecipeModelCopyWith<$Res> {
  _$RecipeModelCopyWithImpl(this._value, this._then);

  final RecipeModel _value;
  // ignore: unused_field
  final $Res Function(RecipeModel) _then;

  @override
  $Res call({
    Object? ingredients = freezed,
    Object? recipe = freezed,
    Object? saved = freezed,
  }) {
    return _then(_value.copyWith(
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      recipe: recipe == freezed
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as String?,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_RecipeModelCopyWith<$Res>
    implements $RecipeModelCopyWith<$Res> {
  factory _$$_RecipeModelCopyWith(
          _$_RecipeModel value, $Res Function(_$_RecipeModel) then) =
      __$$_RecipeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) List<String>? ingredients,
      @HiveField(1) String? recipe,
      @HiveField(2) bool saved});
}

/// @nodoc
class __$$_RecipeModelCopyWithImpl<$Res> extends _$RecipeModelCopyWithImpl<$Res>
    implements _$$_RecipeModelCopyWith<$Res> {
  __$$_RecipeModelCopyWithImpl(
      _$_RecipeModel _value, $Res Function(_$_RecipeModel) _then)
      : super(_value, (v) => _then(v as _$_RecipeModel));

  @override
  _$_RecipeModel get _value => super._value as _$_RecipeModel;

  @override
  $Res call({
    Object? ingredients = freezed,
    Object? recipe = freezed,
    Object? saved = freezed,
  }) {
    return _then(_$_RecipeModel(
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      recipe: recipe == freezed
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as String?,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipeModel implements _RecipeModel {
  _$_RecipeModel(
      {@HiveField(0) this.ingredients,
      @HiveField(1) this.recipe,
      @HiveField(2) this.saved = false});

  factory _$_RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeModelFromJson(json);

  @override
  @HiveField(0)
  List<String>? ingredients;
  @override
  @HiveField(1)
  String? recipe;
  @override
  @JsonKey()
  @HiveField(2)
  bool saved;

  @override
  String toString() {
    return 'RecipeModel(ingredients: $ingredients, recipe: $recipe, saved: $saved)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_RecipeModelCopyWith<_$_RecipeModel> get copyWith =>
      __$$_RecipeModelCopyWithImpl<_$_RecipeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeModelToJson(this);
  }
}

abstract class _RecipeModel implements RecipeModel {
  factory _RecipeModel(
      {@HiveField(0) List<String>? ingredients,
      @HiveField(1) String? recipe,
      @HiveField(2) bool saved}) = _$_RecipeModel;

  factory _RecipeModel.fromJson(Map<String, dynamic> json) =
      _$_RecipeModel.fromJson;

  @override
  @HiveField(0)
  List<String>? get ingredients => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String? get recipe => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  bool get saved => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeModelCopyWith<_$_RecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
