// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'genre_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenreDataModel _$GenreDataModelFromJson(Map<String, dynamic> json) {
  return _GenreDataModel.fromJson(json);
}

/// @nodoc
class _$GenreDataModelTearOff {
  const _$GenreDataModelTearOff();

  _GenreDataModel call({int? id, String? name}) {
    return _GenreDataModel(
      id: id,
      name: name,
    );
  }

  GenreDataModel fromJson(Map<String, Object?> json) {
    return GenreDataModel.fromJson(json);
  }
}

/// @nodoc
const $GenreDataModel = _$GenreDataModelTearOff();

/// @nodoc
mixin _$GenreDataModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreDataModelCopyWith<GenreDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreDataModelCopyWith<$Res> {
  factory $GenreDataModelCopyWith(
          GenreDataModel value, $Res Function(GenreDataModel) then) =
      _$GenreDataModelCopyWithImpl<$Res>;
  $Res call({int? id, String? name});
}

/// @nodoc
class _$GenreDataModelCopyWithImpl<$Res>
    implements $GenreDataModelCopyWith<$Res> {
  _$GenreDataModelCopyWithImpl(this._value, this._then);

  final GenreDataModel _value;
  // ignore: unused_field
  final $Res Function(GenreDataModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GenreDataModelCopyWith<$Res>
    implements $GenreDataModelCopyWith<$Res> {
  factory _$GenreDataModelCopyWith(
          _GenreDataModel value, $Res Function(_GenreDataModel) then) =
      __$GenreDataModelCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name});
}

/// @nodoc
class __$GenreDataModelCopyWithImpl<$Res>
    extends _$GenreDataModelCopyWithImpl<$Res>
    implements _$GenreDataModelCopyWith<$Res> {
  __$GenreDataModelCopyWithImpl(
      _GenreDataModel _value, $Res Function(_GenreDataModel) _then)
      : super(_value, (v) => _then(v as _GenreDataModel));

  @override
  _GenreDataModel get _value => super._value as _GenreDataModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_GenreDataModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenreDataModel implements _GenreDataModel {
  const _$_GenreDataModel({this.id, this.name});

  factory _$_GenreDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_GenreDataModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'GenreDataModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GenreDataModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$GenreDataModelCopyWith<_GenreDataModel> get copyWith =>
      __$GenreDataModelCopyWithImpl<_GenreDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenreDataModelToJson(this);
  }
}

abstract class _GenreDataModel implements GenreDataModel {
  const factory _GenreDataModel({int? id, String? name}) = _$_GenreDataModel;

  factory _GenreDataModel.fromJson(Map<String, dynamic> json) =
      _$_GenreDataModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$GenreDataModelCopyWith<_GenreDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
