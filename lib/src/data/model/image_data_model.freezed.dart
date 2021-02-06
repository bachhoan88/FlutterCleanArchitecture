// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'image_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ImageDataModel _$ImageDataModelFromJson(Map<String, dynamic> json) {
  return _ImageDataModel.fromJson(json);
}

/// @nodoc
class _$ImageDataModelTearOff {
  const _$ImageDataModelTearOff();

// ignore: unused_element
  _ImageDataModel call(
      {@JsonKey(name: 'file_path') String imagePath,
      int height,
      int width,
      @JsonKey(name: 'iso_639_1') String countryCode,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount}) {
    return _ImageDataModel(
      imagePath: imagePath,
      height: height,
      width: width,
      countryCode: countryCode,
      voteAverage: voteAverage,
      voteCount: voteCount,
    );
  }

// ignore: unused_element
  ImageDataModel fromJson(Map<String, Object> json) {
    return ImageDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ImageDataModel = _$ImageDataModelTearOff();

/// @nodoc
mixin _$ImageDataModel {
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
  $ImageDataModelCopyWith<ImageDataModel> get copyWith;
}

/// @nodoc
abstract class $ImageDataModelCopyWith<$Res> {
  factory $ImageDataModelCopyWith(
          ImageDataModel value, $Res Function(ImageDataModel) then) =
      _$ImageDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'file_path') String imagePath,
      int height,
      int width,
      @JsonKey(name: 'iso_639_1') String countryCode,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount});
}

/// @nodoc
class _$ImageDataModelCopyWithImpl<$Res>
    implements $ImageDataModelCopyWith<$Res> {
  _$ImageDataModelCopyWithImpl(this._value, this._then);

  final ImageDataModel _value;
  // ignore: unused_field
  final $Res Function(ImageDataModel) _then;

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
abstract class _$ImageDataModelCopyWith<$Res>
    implements $ImageDataModelCopyWith<$Res> {
  factory _$ImageDataModelCopyWith(
          _ImageDataModel value, $Res Function(_ImageDataModel) then) =
      __$ImageDataModelCopyWithImpl<$Res>;
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
class __$ImageDataModelCopyWithImpl<$Res>
    extends _$ImageDataModelCopyWithImpl<$Res>
    implements _$ImageDataModelCopyWith<$Res> {
  __$ImageDataModelCopyWithImpl(
      _ImageDataModel _value, $Res Function(_ImageDataModel) _then)
      : super(_value, (v) => _then(v as _ImageDataModel));

  @override
  _ImageDataModel get _value => super._value as _ImageDataModel;

  @override
  $Res call({
    Object imagePath = freezed,
    Object height = freezed,
    Object width = freezed,
    Object countryCode = freezed,
    Object voteAverage = freezed,
    Object voteCount = freezed,
  }) {
    return _then(_ImageDataModel(
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
class _$_ImageDataModel implements _ImageDataModel {
  _$_ImageDataModel(
      {@JsonKey(name: 'file_path') this.imagePath,
      this.height,
      this.width,
      @JsonKey(name: 'iso_639_1') this.countryCode,
      @JsonKey(name: 'vote_average') this.voteAverage,
      @JsonKey(name: 'vote_count') this.voteCount});

  factory _$_ImageDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ImageDataModelFromJson(json);

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
    return 'ImageDataModel(imagePath: $imagePath, height: $height, width: $width, countryCode: $countryCode, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageDataModel &&
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
  _$ImageDataModelCopyWith<_ImageDataModel> get copyWith =>
      __$ImageDataModelCopyWithImpl<_ImageDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ImageDataModelToJson(this);
  }
}

abstract class _ImageDataModel implements ImageDataModel {
  factory _ImageDataModel(
      {@JsonKey(name: 'file_path') String imagePath,
      int height,
      int width,
      @JsonKey(name: 'iso_639_1') String countryCode,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount}) = _$_ImageDataModel;

  factory _ImageDataModel.fromJson(Map<String, dynamic> json) =
      _$_ImageDataModel.fromJson;

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
  _$ImageDataModelCopyWith<_ImageDataModel> get copyWith;
}
