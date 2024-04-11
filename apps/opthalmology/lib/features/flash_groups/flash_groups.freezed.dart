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
  @MaterialColorConverter()
  MaterialColor get color => throw _privateConstructorUsedError;

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
  $Res call(
      {String id, String name, @MaterialColorConverter() MaterialColor color});
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
    Object? color = null,
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
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as MaterialColor,
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
  $Res call(
      {String id, String name, @MaterialColorConverter() MaterialColor color});
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
    Object? color = null,
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
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as MaterialColor,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlashGroupImpl extends _FlashGroup {
  const _$FlashGroupImpl(
      {this.id = '',
      this.name = '',
      @MaterialColorConverter() this.color = Colors.blue})
      : super._();

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
  @MaterialColorConverter()
  final MaterialColor color;

  @override
  String toString() {
    return 'FlashGroup(id: $id, name: $name, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color);

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

abstract class _FlashGroup extends FlashGroup {
  const factory _FlashGroup(
      {final String id,
      final String name,
      @MaterialColorConverter() final MaterialColor color}) = _$FlashGroupImpl;
  const _FlashGroup._() : super._();

  factory _FlashGroup.fromJson(Map<String, dynamic> json) =
      _$FlashGroupImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @MaterialColorConverter()
  MaterialColor get color;
  @override
  @JsonKey(ignore: true)
  _$$FlashGroupImplCopyWith<_$FlashGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FlashGroupsEvent {
  FlashGroup get group => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlashGroup group) update,
    required TResult Function(FlashGroup group) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlashGroup group)? update,
    TResult? Function(FlashGroup group)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlashGroup group)? update,
    TResult Function(FlashGroup group)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlashGroupsEventUpdate value) update,
    required TResult Function(_FlashGroupsEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FlashGroupsEventUpdate value)? update,
    TResult? Function(_FlashGroupsEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FlashGroupsEventUpdate value)? update,
    TResult Function(_FlashGroupsEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlashGroupsEventCopyWith<FlashGroupsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashGroupsEventCopyWith<$Res> {
  factory $FlashGroupsEventCopyWith(
          FlashGroupsEvent value, $Res Function(FlashGroupsEvent) then) =
      _$FlashGroupsEventCopyWithImpl<$Res, FlashGroupsEvent>;
  @useResult
  $Res call({FlashGroup group});

  $FlashGroupCopyWith<$Res> get group;
}

/// @nodoc
class _$FlashGroupsEventCopyWithImpl<$Res, $Val extends FlashGroupsEvent>
    implements $FlashGroupsEventCopyWith<$Res> {
  _$FlashGroupsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
  }) {
    return _then(_value.copyWith(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as FlashGroup,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FlashGroupCopyWith<$Res> get group {
    return $FlashGroupCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FlashGroupsEventUpdateImplCopyWith<$Res>
    implements $FlashGroupsEventCopyWith<$Res> {
  factory _$$FlashGroupsEventUpdateImplCopyWith(
          _$FlashGroupsEventUpdateImpl value,
          $Res Function(_$FlashGroupsEventUpdateImpl) then) =
      __$$FlashGroupsEventUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FlashGroup group});

  @override
  $FlashGroupCopyWith<$Res> get group;
}

/// @nodoc
class __$$FlashGroupsEventUpdateImplCopyWithImpl<$Res>
    extends _$FlashGroupsEventCopyWithImpl<$Res, _$FlashGroupsEventUpdateImpl>
    implements _$$FlashGroupsEventUpdateImplCopyWith<$Res> {
  __$$FlashGroupsEventUpdateImplCopyWithImpl(
      _$FlashGroupsEventUpdateImpl _value,
      $Res Function(_$FlashGroupsEventUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
  }) {
    return _then(_$FlashGroupsEventUpdateImpl(
      null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as FlashGroup,
    ));
  }
}

/// @nodoc

class _$FlashGroupsEventUpdateImpl implements _FlashGroupsEventUpdate {
  const _$FlashGroupsEventUpdateImpl(this.group);

  @override
  final FlashGroup group;

  @override
  String toString() {
    return 'FlashGroupsEvent.update(group: $group)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashGroupsEventUpdateImpl &&
            (identical(other.group, group) || other.group == group));
  }

  @override
  int get hashCode => Object.hash(runtimeType, group);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashGroupsEventUpdateImplCopyWith<_$FlashGroupsEventUpdateImpl>
      get copyWith => __$$FlashGroupsEventUpdateImplCopyWithImpl<
          _$FlashGroupsEventUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlashGroup group) update,
    required TResult Function(FlashGroup group) delete,
  }) {
    return update(group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlashGroup group)? update,
    TResult? Function(FlashGroup group)? delete,
  }) {
    return update?.call(group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlashGroup group)? update,
    TResult Function(FlashGroup group)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlashGroupsEventUpdate value) update,
    required TResult Function(_FlashGroupsEventDelete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FlashGroupsEventUpdate value)? update,
    TResult? Function(_FlashGroupsEventDelete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FlashGroupsEventUpdate value)? update,
    TResult Function(_FlashGroupsEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _FlashGroupsEventUpdate implements FlashGroupsEvent {
  const factory _FlashGroupsEventUpdate(final FlashGroup group) =
      _$FlashGroupsEventUpdateImpl;

  @override
  FlashGroup get group;
  @override
  @JsonKey(ignore: true)
  _$$FlashGroupsEventUpdateImplCopyWith<_$FlashGroupsEventUpdateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FlashGroupsEventDeleteImplCopyWith<$Res>
    implements $FlashGroupsEventCopyWith<$Res> {
  factory _$$FlashGroupsEventDeleteImplCopyWith(
          _$FlashGroupsEventDeleteImpl value,
          $Res Function(_$FlashGroupsEventDeleteImpl) then) =
      __$$FlashGroupsEventDeleteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FlashGroup group});

  @override
  $FlashGroupCopyWith<$Res> get group;
}

/// @nodoc
class __$$FlashGroupsEventDeleteImplCopyWithImpl<$Res>
    extends _$FlashGroupsEventCopyWithImpl<$Res, _$FlashGroupsEventDeleteImpl>
    implements _$$FlashGroupsEventDeleteImplCopyWith<$Res> {
  __$$FlashGroupsEventDeleteImplCopyWithImpl(
      _$FlashGroupsEventDeleteImpl _value,
      $Res Function(_$FlashGroupsEventDeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
  }) {
    return _then(_$FlashGroupsEventDeleteImpl(
      null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as FlashGroup,
    ));
  }
}

/// @nodoc

class _$FlashGroupsEventDeleteImpl implements _FlashGroupsEventDelete {
  const _$FlashGroupsEventDeleteImpl(this.group);

  @override
  final FlashGroup group;

  @override
  String toString() {
    return 'FlashGroupsEvent.delete(group: $group)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashGroupsEventDeleteImpl &&
            (identical(other.group, group) || other.group == group));
  }

  @override
  int get hashCode => Object.hash(runtimeType, group);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashGroupsEventDeleteImplCopyWith<_$FlashGroupsEventDeleteImpl>
      get copyWith => __$$FlashGroupsEventDeleteImplCopyWithImpl<
          _$FlashGroupsEventDeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlashGroup group) update,
    required TResult Function(FlashGroup group) delete,
  }) {
    return delete(group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlashGroup group)? update,
    TResult? Function(FlashGroup group)? delete,
  }) {
    return delete?.call(group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlashGroup group)? update,
    TResult Function(FlashGroup group)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlashGroupsEventUpdate value) update,
    required TResult Function(_FlashGroupsEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FlashGroupsEventUpdate value)? update,
    TResult? Function(_FlashGroupsEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FlashGroupsEventUpdate value)? update,
    TResult Function(_FlashGroupsEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _FlashGroupsEventDelete implements FlashGroupsEvent {
  const factory _FlashGroupsEventDelete(final FlashGroup group) =
      _$FlashGroupsEventDeleteImpl;

  @override
  FlashGroup get group;
  @override
  @JsonKey(ignore: true)
  _$$FlashGroupsEventDeleteImplCopyWith<_$FlashGroupsEventDeleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}
