// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pearls.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PearlPageState {
  PearlPage get page => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PearlPageStateCopyWith<PearlPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PearlPageStateCopyWith<$Res> {
  factory $PearlPageStateCopyWith(
          PearlPageState value, $Res Function(PearlPageState) then) =
      _$PearlPageStateCopyWithImpl<$Res, PearlPageState>;
  @useResult
  $Res call({PearlPage page, String? id});
}

/// @nodoc
class _$PearlPageStateCopyWithImpl<$Res, $Val extends PearlPageState>
    implements $PearlPageStateCopyWith<$Res> {
  _$PearlPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as PearlPage,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PearlPageStateImplCopyWith<$Res>
    implements $PearlPageStateCopyWith<$Res> {
  factory _$$PearlPageStateImplCopyWith(_$PearlPageStateImpl value,
          $Res Function(_$PearlPageStateImpl) then) =
      __$$PearlPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PearlPage page, String? id});
}

/// @nodoc
class __$$PearlPageStateImplCopyWithImpl<$Res>
    extends _$PearlPageStateCopyWithImpl<$Res, _$PearlPageStateImpl>
    implements _$$PearlPageStateImplCopyWith<$Res> {
  __$$PearlPageStateImplCopyWithImpl(
      _$PearlPageStateImpl _value, $Res Function(_$PearlPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? id = freezed,
  }) {
    return _then(_$PearlPageStateImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as PearlPage,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PearlPageStateImpl implements _PearlPageState {
  const _$PearlPageStateImpl({this.page = PearlPage.pearls, this.id});

  @override
  @JsonKey()
  final PearlPage page;
  @override
  final String? id;

  @override
  String toString() {
    return 'PearlPageState(page: $page, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PearlPageStateImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PearlPageStateImplCopyWith<_$PearlPageStateImpl> get copyWith =>
      __$$PearlPageStateImplCopyWithImpl<_$PearlPageStateImpl>(
          this, _$identity);
}

abstract class _PearlPageState implements PearlPageState {
  const factory _PearlPageState({final PearlPage page, final String? id}) =
      _$PearlPageStateImpl;

  @override
  PearlPage get page;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$PearlPageStateImplCopyWith<_$PearlPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
