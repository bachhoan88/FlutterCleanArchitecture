// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'collection_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CollectionDataModel _$CollectionDataModelFromJson(Map<String, dynamic> json) {
  return _CollectionDataModel.fromJson(json);
}

/// @nodoc
class _$CollectionDataModelTearOff {
  const _$CollectionDataModelTearOff();

// ignore: unused_element
  _CollectionDataModel call(
      {int id,
      String name,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'backdrop_path') String backdropPath}) {
    return _CollectionDataModel(
      id: id,
      name: name,
      posterPath: posterPath,
      backdropPath: backdropPath,
    );
  }

// ignore: unused_element
  CollectionDataModel fromJson(Map<String, Object> json) {
    return CollectionDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CollectionDataModel = _$CollectionDataModelTearOff();

/// @nodoc
mixin _$CollectionDataModel {
  int get id;
  String get name;
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @JsonKey(name: 'backdrop_path')
  String get backdropPath;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CollectionDataModelCopyWith<CollectionDataModel> get copyWith;
}

/// @nodoc
abstract class $CollectionDataModelCopyWith<$Res> {
  factory $CollectionDataModelCopyWith(
          CollectionDataModel value, $Res Function(CollectionDataModel) then) =
      _$CollectionDataModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'backdrop_path') String backdropPath});
}

/// @nodoc
class _$CollectionDataModelCopyWithImpl<$Res>
    implements $CollectionDataModelCopyWith<$Res> {
  _$CollectionDataModelCopyWithImpl(this._value, this._then);

  final CollectionDataModel _value;
  // ignore: unused_field
  final $Res Function(CollectionDataModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object posterPath = freezed,
    Object backdropPath = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath as String,
    ));
  }
}

/// @nodoc
abstract class _$CollectionDataModelCopyWith<$Res>
    implements $CollectionDataModelCopyWith<$Res> {
  factory _$CollectionDataModelCopyWith(_CollectionDataModel value,
          $Res Function(_CollectionDataModel) then) =
      __$CollectionDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'backdrop_path') String backdropPath});
}

/// @nodoc
class __$CollectionDataModelCopyWithImpl<$Res>
    extends _$CollectionDataModelCopyWithImpl<$Res>
    implements _$CollectionDataModelCopyWith<$Res> {
  __$CollectionDataModelCopyWithImpl(
      _CollectionDataModel _value, $Res Function(_CollectionDataModel) _then)
      : super(_value, (v) => _then(v as _CollectionDataModel));

  @override
  _CollectionDataModel get _value => super._value as _CollectionDataModel;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object posterPath = freezed,
    Object backdropPath = freezed,
  }) {
    return _then(_CollectionDataModel(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CollectionDataModel implements _CollectionDataModel {
  _$_CollectionDataModel(
      {this.id,
      this.name,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'backdrop_path') this.backdropPath});

  factory _$_CollectionDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CollectionDataModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  final String backdropPath;

  @override
  String toString() {
    return 'CollectionDataModel(id: $id, name: $name, posterPath: $posterPath, backdropPath: $backdropPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CollectionDataModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.posterPath, posterPath) ||
                const DeepCollectionEquality()
                    .equals(other.posterPath, posterPath)) &&
            (identical(other.backdropPath, backdropPath) ||
                const DeepCollectionEquality()
                    .equals(other.backdropPath, backdropPath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(posterPath) ^
      const DeepCollectionEquality().hash(backdropPath);

  @JsonKey(ignore: true)
  @override
  _$CollectionDataModelCopyWith<_CollectionDataModel> get copyWith =>
      __$CollectionDataModelCopyWithImpl<_CollectionDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CollectionDataModelToJson(this);
  }
}

abstract class _CollectionDataModel implements CollectionDataModel {
  factory _CollectionDataModel(
          {int id,
          String name,
          @JsonKey(name: 'poster_path') String posterPath,
          @JsonKey(name: 'backdrop_path') String backdropPath}) =
      _$_CollectionDataModel;

  factory _CollectionDataModel.fromJson(Map<String, dynamic> json) =
      _$_CollectionDataModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  String get backdropPath;
  @override
  @JsonKey(ignore: true)
  _$CollectionDataModelCopyWith<_CollectionDataModel> get copyWith;
}
