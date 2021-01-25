// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Img _$ImgFromJson(Map<String, dynamic> json) {
  return _Img.fromJson(json);
}

/// @nodoc
class _$ImgTearOff {
  const _$ImgTearOff();

// ignore: unused_element
  _Img call(
      {@JsonKey(name: 'aspect_ratio') double aspect,
      @JsonKey(name: 'file_path') String imagePath,
      int height,
      int width,
      @JsonKey(name: 'iso_639_1') String countryCode,
      @JsonKey(name: 'vote_average') int voteAverage,
      @JsonKey(name: 'vote_count') int voteCount}) {
    return _Img(
      aspect: aspect,
      imagePath: imagePath,
      height: height,
      width: width,
      countryCode: countryCode,
      voteAverage: voteAverage,
      voteCount: voteCount,
    );
  }

// ignore: unused_element
  Img fromJson(Map<String, Object> json) {
    return Img.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Img = _$ImgTearOff();

/// @nodoc
mixin _$Img {
  @JsonKey(name: 'aspect_ratio')
  double get aspect;
  @JsonKey(name: 'file_path')
  String get imagePath;
  int get height;
  int get width;
  @JsonKey(name: 'iso_639_1')
  String get countryCode;
  @JsonKey(name: 'vote_average')
  int get voteAverage;
  @JsonKey(name: 'vote_count')
  int get voteCount;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ImgCopyWith<Img> get copyWith;
}

/// @nodoc
abstract class $ImgCopyWith<$Res> {
  factory $ImgCopyWith(Img value, $Res Function(Img) then) =
      _$ImgCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'aspect_ratio') double aspect,
      @JsonKey(name: 'file_path') String imagePath,
      int height,
      int width,
      @JsonKey(name: 'iso_639_1') String countryCode,
      @JsonKey(name: 'vote_average') int voteAverage,
      @JsonKey(name: 'vote_count') int voteCount});
}

/// @nodoc
class _$ImgCopyWithImpl<$Res> implements $ImgCopyWith<$Res> {
  _$ImgCopyWithImpl(this._value, this._then);

  final Img _value;
  // ignore: unused_field
  final $Res Function(Img) _then;

  @override
  $Res call({
    Object aspect = freezed,
    Object imagePath = freezed,
    Object height = freezed,
    Object width = freezed,
    Object countryCode = freezed,
    Object voteAverage = freezed,
    Object voteCount = freezed,
  }) {
    return _then(_value.copyWith(
      aspect: aspect == freezed ? _value.aspect : aspect as double,
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as String,
      height: height == freezed ? _value.height : height as int,
      width: width == freezed ? _value.width : width as int,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      voteAverage:
          voteAverage == freezed ? _value.voteAverage : voteAverage as int,
      voteCount: voteCount == freezed ? _value.voteCount : voteCount as int,
    ));
  }
}

/// @nodoc
abstract class _$ImgCopyWith<$Res> implements $ImgCopyWith<$Res> {
  factory _$ImgCopyWith(_Img value, $Res Function(_Img) then) =
      __$ImgCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'aspect_ratio') double aspect,
      @JsonKey(name: 'file_path') String imagePath,
      int height,
      int width,
      @JsonKey(name: 'iso_639_1') String countryCode,
      @JsonKey(name: 'vote_average') int voteAverage,
      @JsonKey(name: 'vote_count') int voteCount});
}

/// @nodoc
class __$ImgCopyWithImpl<$Res> extends _$ImgCopyWithImpl<$Res>
    implements _$ImgCopyWith<$Res> {
  __$ImgCopyWithImpl(_Img _value, $Res Function(_Img) _then)
      : super(_value, (v) => _then(v as _Img));

  @override
  _Img get _value => super._value as _Img;

  @override
  $Res call({
    Object aspect = freezed,
    Object imagePath = freezed,
    Object height = freezed,
    Object width = freezed,
    Object countryCode = freezed,
    Object voteAverage = freezed,
    Object voteCount = freezed,
  }) {
    return _then(_Img(
      aspect: aspect == freezed ? _value.aspect : aspect as double,
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as String,
      height: height == freezed ? _value.height : height as int,
      width: width == freezed ? _value.width : width as int,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      voteAverage:
          voteAverage == freezed ? _value.voteAverage : voteAverage as int,
      voteCount: voteCount == freezed ? _value.voteCount : voteCount as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Img implements _Img {
  _$_Img(
      {@JsonKey(name: 'aspect_ratio') this.aspect,
      @JsonKey(name: 'file_path') this.imagePath,
      this.height,
      this.width,
      @JsonKey(name: 'iso_639_1') this.countryCode,
      @JsonKey(name: 'vote_average') this.voteAverage,
      @JsonKey(name: 'vote_count') this.voteCount});

  factory _$_Img.fromJson(Map<String, dynamic> json) => _$_$_ImgFromJson(json);

  @override
  @JsonKey(name: 'aspect_ratio')
  final double aspect;
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
  final int voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int voteCount;

  @override
  String toString() {
    return 'Img(aspect: $aspect, imagePath: $imagePath, height: $height, width: $width, countryCode: $countryCode, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Img &&
            (identical(other.aspect, aspect) ||
                const DeepCollectionEquality().equals(other.aspect, aspect)) &&
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
      const DeepCollectionEquality().hash(aspect) ^
      const DeepCollectionEquality().hash(imagePath) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(voteAverage) ^
      const DeepCollectionEquality().hash(voteCount);

  @JsonKey(ignore: true)
  @override
  _$ImgCopyWith<_Img> get copyWith =>
      __$ImgCopyWithImpl<_Img>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ImgToJson(this);
  }
}

abstract class _Img implements Img {
  factory _Img(
      {@JsonKey(name: 'aspect_ratio') double aspect,
      @JsonKey(name: 'file_path') String imagePath,
      int height,
      int width,
      @JsonKey(name: 'iso_639_1') String countryCode,
      @JsonKey(name: 'vote_average') int voteAverage,
      @JsonKey(name: 'vote_count') int voteCount}) = _$_Img;

  factory _Img.fromJson(Map<String, dynamic> json) = _$_Img.fromJson;

  @override
  @JsonKey(name: 'aspect_ratio')
  double get aspect;
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
  int get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int get voteCount;
  @override
  @JsonKey(ignore: true)
  _$ImgCopyWith<_Img> get copyWith;
}
