// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Password _$PasswordFromJson(Map<String, dynamic> json) {
  return _Password.fromJson(json);
}

/// @nodoc
mixin _$Password {
  String get password => throw _privateConstructorUsedError;
  bool get isPasswordVisible => throw _privateConstructorUsedError;
  bool get isAddDiseaseVisible => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordCopyWith<Password> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordCopyWith<$Res> {
  factory $PasswordCopyWith(Password value, $Res Function(Password) then) =
      _$PasswordCopyWithImpl<$Res, Password>;
  @useResult
  $Res call(
      {String password, bool isPasswordVisible, bool isAddDiseaseVisible});
}

/// @nodoc
class _$PasswordCopyWithImpl<$Res, $Val extends Password>
    implements $PasswordCopyWith<$Res> {
  _$PasswordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? isPasswordVisible = null,
    Object? isAddDiseaseVisible = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isPasswordVisible: null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddDiseaseVisible: null == isAddDiseaseVisible
          ? _value.isAddDiseaseVisible
          : isAddDiseaseVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasswordImplCopyWith<$Res>
    implements $PasswordCopyWith<$Res> {
  factory _$$PasswordImplCopyWith(
          _$PasswordImpl value, $Res Function(_$PasswordImpl) then) =
      __$$PasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String password, bool isPasswordVisible, bool isAddDiseaseVisible});
}

/// @nodoc
class __$$PasswordImplCopyWithImpl<$Res>
    extends _$PasswordCopyWithImpl<$Res, _$PasswordImpl>
    implements _$$PasswordImplCopyWith<$Res> {
  __$$PasswordImplCopyWithImpl(
      _$PasswordImpl _value, $Res Function(_$PasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? isPasswordVisible = null,
    Object? isAddDiseaseVisible = null,
  }) {
    return _then(_$PasswordImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isPasswordVisible: null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddDiseaseVisible: null == isAddDiseaseVisible
          ? _value.isAddDiseaseVisible
          : isAddDiseaseVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordImpl implements _Password {
  const _$PasswordImpl(
      {this.password = 'false',
      this.isPasswordVisible = false,
      this.isAddDiseaseVisible = false});

  factory _$PasswordImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordImplFromJson(json);

  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final bool isPasswordVisible;
  @override
  @JsonKey()
  final bool isAddDiseaseVisible;

  @override
  String toString() {
    return 'Password(password: $password, isPasswordVisible: $isPasswordVisible, isAddDiseaseVisible: $isAddDiseaseVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isPasswordVisible, isPasswordVisible) ||
                other.isPasswordVisible == isPasswordVisible) &&
            (identical(other.isAddDiseaseVisible, isAddDiseaseVisible) ||
                other.isAddDiseaseVisible == isAddDiseaseVisible));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, password, isPasswordVisible, isAddDiseaseVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordImplCopyWith<_$PasswordImpl> get copyWith =>
      __$$PasswordImplCopyWithImpl<_$PasswordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordImplToJson(
      this,
    );
  }
}

abstract class _Password implements Password {
  const factory _Password(
      {final String password,
      final bool isPasswordVisible,
      final bool isAddDiseaseVisible}) = _$PasswordImpl;

  factory _Password.fromJson(Map<String, dynamic> json) =
      _$PasswordImpl.fromJson;

  @override
  String get password;
  @override
  bool get isPasswordVisible;
  @override
  bool get isAddDiseaseVisible;
  @override
  @JsonKey(ignore: true)
  _$$PasswordImplCopyWith<_$PasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
