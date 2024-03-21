// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flash_groups.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FlashGroup _$FlashGroupFromJson(Map<String, dynamic> json) {
  return _FlashGroup.fromJson(json);
}

/// @nodoc
mixin _$FlashGroup {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get colorIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlashGroupCopyWith<FlashGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashGroupCopyWith<$Res> {
  factory $FlashGroupCopyWith(
          FlashGroup value, $Res Function(FlashGroup) then) =
      _$FlashGroupCopyWithImpl<$Res, FlashGroup>;
  @useResult
  $Res call({String id, String name, int colorIndex});
}

/// @nodoc
class _$FlashGroupCopyWithImpl<$Res, $Val extends FlashGroup>
    implements $FlashGroupCopyWith<$Res> {
  _$FlashGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? colorIndex = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      colorIndex: null == colorIndex
          ? _value.colorIndex
          : colorIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlashGroupImplCopyWith<$Res>
    implements $FlashGroupCopyWith<$Res> {
  factory _$$FlashGroupImplCopyWith(
          _$FlashGroupImpl value, $Res Function(_$FlashGroupImpl) then) =
      __$$FlashGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, int colorIndex});
}

/// @nodoc
class __$$FlashGroupImplCopyWithImpl<$Res>
    extends _$FlashGroupCopyWithImpl<$Res, _$FlashGroupImpl>
    implements _$$FlashGroupImplCopyWith<$Res> {
  __$$FlashGroupImplCopyWithImpl(
      _$FlashGroupImpl _value, $Res Function(_$FlashGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? colorIndex = null,
  }) {
    return _then(_$FlashGroupImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      colorIndex: null == colorIndex
          ? _value.colorIndex
          : colorIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlashGroupImpl implements _FlashGroup {
  const _$FlashGroupImpl({this.id = '', this.name = '', this.colorIndex = 0});

  factory _$FlashGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlashGroupImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int colorIndex;

  @override
  String toString() {
    return 'FlashGroup(id: $id, name: $name, colorIndex: $colorIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.colorIndex, colorIndex) ||
                other.colorIndex == colorIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, colorIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashGroupImplCopyWith<_$FlashGroupImpl> get copyWith =>
      __$$FlashGroupImplCopyWithImpl<_$FlashGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlashGroupImplToJson(
      this,
    );
  }
}

abstract class _FlashGroup implements FlashGroup {
  const factory _FlashGroup(
      {final String id,
      final String name,
      final int colorIndex}) = _$FlashGroupImpl;

  factory _FlashGroup.fromJson(Map<String, dynamic> json) =
      _$FlashGroupImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get colorIndex;
  @override
  @JsonKey(ignore: true)
  _$$FlashGroupImplCopyWith<_$FlashGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
