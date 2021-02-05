// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'image_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ImageEntity _$ImageEntityFromJson(Map<String, dynamic> json) {
  return _ImageEntity.fromJson(json);
}

/// @nodoc
class _$ImageEntityTearOff {
  const _$ImageEntityTearOff();

// ignore: unused_element
  _ImageEntity call(
      {@JsonKey(name: 'file_path') String imagePath,
      int height,
      int width,
      @JsonKey(name: 'iso_639_1') String countryCode,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount}) {
    return _ImageEntity(
      imagePath: imagePath,
      height: height,
      width: width,
      countryCode: countryCode,
      voteAverage: voteAverage,
      voteCount: voteCount,
    );
  }

// ignore: unused_element
  ImageEntity fromJson(Map<String, Object> json) {
    return ImageEntity.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ImageEntity = _$ImageEntityTearOff();

/// @nodoc
mixin _$ImageEntity {
  @JsonKey(name: 'file_path')
  String get imagePath;
  int get height;
  int get width;
  @JsonKey(name: 'iso_639_1')
  String get countryCode;
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @JsonKey(name: 'vote_count')
  int get voteCount;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ImageEntityCopyWith<ImageEntity> get copyWith;
}

/// @nodoc
abstract class $ImageEntityCopyWith<$Res> {
  factory $ImageEntityCopyWith(
          ImageEntity value, $Res Function(ImageEntity) then) =
      _$ImageEntityCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'file_path') String imagePath,
      int height,
      int width,
      @JsonKey(name: 'iso_639_1') String countryCode,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount});
}

/// @nodoc
class _$ImageEntityCopyWithImpl<$Res> implements $ImageEntityCopyWith<$Res> {
  _$ImageEntityCopyWithImpl(this._value, this._then);

  final ImageEntity _value;
  // ignore: unused_field
  final $Res Function(ImageEntity) _then;

  @override
  $Res call({
    Object imagePath = freezed,
    Object height = freezed,
    Object width = freezed,
    Object countryCode = freezed,
    Object voteAverage = freezed,
    Object voteCount = freezed,
  }) {
    return _then(_value.copyWith(
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as String,
      height: height == freezed ? _value.height : height as int,
      width: width == freezed ? _value.width : width as int,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      voteAverage:
          voteAverage == freezed ? _value.voteAverage : voteAverage as double,
      voteCount: voteCount == freezed ? _value.voteCount : voteCount as int,
    ));
  }
}

/// @nodoc
abstract class _$ImageEntityCopyWith<$Res>
    implements $ImageEntityCopyWith<$Res> {
  factory _$ImageEntityCopyWith(
          _ImageEntity value, $Res Function(_ImageEntity) then) =
      __$ImageEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'file_path') String imagePath,
      int height,
      int width,
      @JsonKey(name: 'iso_639_1') String countryCode,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount});
}

/// @nodoc
class __$ImageEntityCopyWithImpl<$Res> extends _$ImageEntityCopyWithImpl<$Res>
    implements _$ImageEntityCopyWith<$Res> {
  __$ImageEntityCopyWithImpl(
      _ImageEntity _value, $Res Function(_ImageEntity) _then)
      : super(_value, (v) => _then(v as _ImageEntity));

  @override
  _ImageEntity get _value => super._value as _ImageEntity;

  @override
  $Res call({
    Object imagePath = freezed,
    Object height = freezed,
    Object width = freezed,
    Object countryCode = freezed,
    Object voteAverage = freezed,
    Object voteCount = freezed,
  }) {
    return _then(_ImageEntity(
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as String,
      height: height == freezed ? _value.height : height as int,
      width: width == freezed ? _value.width : width as int,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      voteAverage:
          voteAverage == freezed ? _value.voteAverage : voteAverage as double,
      voteCount: voteCount == freezed ? _value.voteCount : voteCount as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ImageEntity implements _ImageEntity {
  _$_ImageEntity(
      {@JsonKey(name: 'file_path') this.imagePath,
      this.height,
      this.width,
      @JsonKey(name: 'iso_639_1') this.countryCode,
      @JsonKey(name: 'vote_average') this.voteAverage,
      @JsonKey(name: 'vote_count') this.voteCount});

  factory _$_ImageEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_ImageEntityFromJson(json);

  @override
  @JsonKey(name: 'file_path')
  final String imagePath;
  @override
  final int height;
  @override
  final int width;
  @override
  @JsonKey(name: 'iso_639_1')
  final String countryCode;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int voteCount;

  @override
  String toString() {
    return 'ImageEntity(imagePath: $imagePath, height: $height, width: $width, countryCode: $countryCode, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageEntity &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.voteAverage, voteAverage) ||
                const DeepCollectionEquality()
                    .equals(other.voteAverage, voteAverage)) &&
            (identical(other.voteCount, voteCount) ||
                const DeepCollectionEquality()
                    .equals(other.voteCount, voteCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imagePath) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(voteAverage) ^
      const DeepCollectionEquality().hash(voteCount);

  @JsonKey(ignore: true)
  @override
  _$ImageEntityCopyWith<_ImageEntity> get copyWith =>
      __$ImageEntityCopyWithImpl<_ImageEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ImageEntityToJson(this);
  }
}

abstract class _ImageEntity implements ImageEntity {
  factory _ImageEntity(
      {@JsonKey(name: 'file_path') String imagePath,
      int height,
      int width,
      @JsonKey(name: 'iso_639_1') String countryCode,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount}) = _$_ImageEntity;

  factory _ImageEntity.fromJson(Map<String, dynamic> json) =
      _$_ImageEntity.fromJson;

  @override
  @JsonKey(name: 'file_path')
  String get imagePath;
  @override
  int get height;
  @override
  int get width;
  @override
  @JsonKey(name: 'iso_639_1')
  String get countryCode;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int get voteCount;
  @override
  @JsonKey(ignore: true)
  _$ImageEntityCopyWith<_ImageEntity> get copyWith;
}
