// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'genre_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GenreDataModel _$GenreDataModelFromJson(Map<String, dynamic> json) {
  return _GenreDataModel.fromJson(json);
}

/// @nodoc
class _$GenreDataModelTearOff {
  const _$GenreDataModelTearOff();

// ignore: unused_element
  _GenreDataModel call({int id, String name}) {
    return _GenreDataModel(
      id: id,
      name: name,
    );
  }

// ignore: unused_element
  GenreDataModel fromJson(Map<String, Object> json) {
    return GenreDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $GenreDataModel = _$GenreDataModelTearOff();

/// @nodoc
mixin _$GenreDataModel {
  int get id;
  String get name;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $GenreDataModelCopyWith<GenreDataModel> get copyWith;
}

/// @nodoc
abstract class $GenreDataModelCopyWith<$Res> {
  factory $GenreDataModelCopyWith(
          GenreDataModel value, $Res Function(GenreDataModel) then) =
      _$GenreDataModelCopyWithImpl<$Res>;
  $Res call({int id, String name});
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
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
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
  $Res call({int id, String name});
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
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_GenreDataModel(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GenreDataModel implements _GenreDataModel {
  _$_GenreDataModel({this.id, this.name});

  factory _$_GenreDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GenreDataModelFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'GenreDataModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GenreDataModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$GenreDataModelCopyWith<_GenreDataModel> get copyWith =>
      __$GenreDataModelCopyWithImpl<_GenreDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GenreDataModelToJson(this);
  }
}

abstract class _GenreDataModel implements GenreDataModel {
  factory _GenreDataModel({int id, String name}) = _$_GenreDataModel;

  factory _GenreDataModel.fromJson(Map<String, dynamic> json) =
      _$_GenreDataModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$GenreDataModelCopyWith<_GenreDataModel> get copyWith;
}
