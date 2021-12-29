// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageDataModel _$ImageDataModelFromJson(Map<String, dynamic> json) {
  return _ImageDataModel.fromJson(json);
}

/// @nodoc
class _$ImageDataModelTearOff {
  const _$ImageDataModelTearOff();

  _ImageDataModel call(
      {@JsonKey(name: 'file_path') String? imagePath,
      int? height,
      int? width,
      @JsonKey(name: 'iso_639_1') String? countryCode,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount}) {
    return _ImageDataModel(
      imagePath: imagePath,
      height: height,
      width: width,
      countryCode: countryCode,
      voteAverage: voteAverage,
      voteCount: voteCount,
    );
  }

  ImageDataModel fromJson(Map<String, Object?> json) {
    return ImageDataModel.fromJson(json);
  }
}

/// @nodoc
const $ImageDataModel = _$ImageDataModelTearOff();

/// @nodoc
mixin _$ImageDataModel {
  @JsonKey(name: 'file_path')
  String? get imagePath => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'iso_639_1')
  String? get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int? get voteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageDataModelCopyWith<ImageDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDataModelCopyWith<$Res> {
  factory $ImageDataModelCopyWith(
          ImageDataModel value, $Res Function(ImageDataModel) then) =
      _$ImageDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'file_path') String? imagePath,
      int? height,
      int? width,
      @JsonKey(name: 'iso_639_1') String? countryCode,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount});
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
    Object? imagePath = freezed,
    Object? height = freezed,
    Object? width = freezed,
    Object? countryCode = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_value.copyWith(
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {@JsonKey(name: 'file_path') String? imagePath,
      int? height,
      int? width,
      @JsonKey(name: 'iso_639_1') String? countryCode,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount});
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
    Object? imagePath = freezed,
    Object? height = freezed,
    Object? width = freezed,
    Object? countryCode = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_ImageDataModel(
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageDataModel implements _ImageDataModel {
  const _$_ImageDataModel(
      {@JsonKey(name: 'file_path') this.imagePath,
      this.height,
      this.width,
      @JsonKey(name: 'iso_639_1') this.countryCode,
      @JsonKey(name: 'vote_average') this.voteAverage,
      @JsonKey(name: 'vote_count') this.voteCount});

  factory _$_ImageDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_ImageDataModelFromJson(json);

  @override
  @JsonKey(name: 'file_path')
  final String? imagePath;
  @override
  final int? height;
  @override
  final int? width;
  @override
  @JsonKey(name: 'iso_639_1')
  final String? countryCode;
  @override
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int? voteCount;

  @override
  String toString() {
    return 'ImageDataModel(imagePath: $imagePath, height: $height, width: $width, countryCode: $countryCode, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImageDataModel &&
            const DeepCollectionEquality().equals(other.imagePath, imagePath) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality()
                .equals(other.countryCode, countryCode) &&
            const DeepCollectionEquality()
                .equals(other.voteAverage, voteAverage) &&
            const DeepCollectionEquality().equals(other.voteCount, voteCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imagePath),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(countryCode),
      const DeepCollectionEquality().hash(voteAverage),
      const DeepCollectionEquality().hash(voteCount));

  @JsonKey(ignore: true)
  @override
  _$ImageDataModelCopyWith<_ImageDataModel> get copyWith =>
      __$ImageDataModelCopyWithImpl<_ImageDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageDataModelToJson(this);
  }
}

abstract class _ImageDataModel implements ImageDataModel {
  const factory _ImageDataModel(
      {@JsonKey(name: 'file_path') String? imagePath,
      int? height,
      int? width,
      @JsonKey(name: 'iso_639_1') String? countryCode,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount}) = _$_ImageDataModel;

  factory _ImageDataModel.fromJson(Map<String, dynamic> json) =
      _$_ImageDataModel.fromJson;

  @override
  @JsonKey(name: 'file_path')
  String? get imagePath;
  @override
  int? get height;
  @override
  int? get width;
  @override
  @JsonKey(name: 'iso_639_1')
  String? get countryCode;
  @override
  @JsonKey(name: 'vote_average')
  double? get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int? get voteCount;
  @override
  @JsonKey(ignore: true)
  _$ImageDataModelCopyWith<_ImageDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
