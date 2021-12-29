// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDataModel _$UserDataModelFromJson(Map<String, dynamic> json) {
  return _UserDataModel.fromJson(json);
}

/// @nodoc
class _$UserDataModelTearOff {
  const _$UserDataModelTearOff();

  _UserDataModel call(
      {@JsonKey(name: 'username') String? username,
      @JsonKey(name: 'password') String? password}) {
    return _UserDataModel(
      username: username,
      password: password,
    );
  }

  UserDataModel fromJson(Map<String, Object?> json) {
    return UserDataModel.fromJson(json);
  }
}

/// @nodoc
const $UserDataModel = _$UserDataModelTearOff();

/// @nodoc
mixin _$UserDataModel {
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataModelCopyWith<UserDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataModelCopyWith<$Res> {
  factory $UserDataModelCopyWith(
          UserDataModel value, $Res Function(UserDataModel) then) =
      _$UserDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'username') String? username,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class _$UserDataModelCopyWithImpl<$Res>
    implements $UserDataModelCopyWith<$Res> {
  _$UserDataModelCopyWithImpl(this._value, this._then);

  final UserDataModel _value;
  // ignore: unused_field
  final $Res Function(UserDataModel) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserDataModelCopyWith<$Res>
    implements $UserDataModelCopyWith<$Res> {
  factory _$UserDataModelCopyWith(
          _UserDataModel value, $Res Function(_UserDataModel) then) =
      __$UserDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'username') String? username,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class __$UserDataModelCopyWithImpl<$Res>
    extends _$UserDataModelCopyWithImpl<$Res>
    implements _$UserDataModelCopyWith<$Res> {
  __$UserDataModelCopyWithImpl(
      _UserDataModel _value, $Res Function(_UserDataModel) _then)
      : super(_value, (v) => _then(v as _UserDataModel));

  @override
  _UserDataModel get _value => super._value as _UserDataModel;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_UserDataModel(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDataModel implements _UserDataModel {
  const _$_UserDataModel(
      {@JsonKey(name: 'username') this.username,
      @JsonKey(name: 'password') this.password});

  factory _$_UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataModelFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'password')
  final String? password;

  @override
  String toString() {
    return 'UserDataModel(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDataModel &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$UserDataModelCopyWith<_UserDataModel> get copyWith =>
      __$UserDataModelCopyWithImpl<_UserDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataModelToJson(this);
  }
}

abstract class _UserDataModel implements UserDataModel {
  const factory _UserDataModel(
      {@JsonKey(name: 'username') String? username,
      @JsonKey(name: 'password') String? password}) = _$_UserDataModel;

  factory _UserDataModel.fromJson(Map<String, dynamic> json) =
      _$_UserDataModel.fromJson;

  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$UserDataModelCopyWith<_UserDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
