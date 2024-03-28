// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  Map<String, FlashGroup> get flashGroups => throw _privateConstructorUsedError;
  Map<String, Study> get studies => throw _privateConstructorUsedError;
  Map<String, Session> get sessions => throw _privateConstructorUsedError;
  Map<String, FlashCard> get flashCards => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {Map<String, FlashGroup> flashGroups,
      Map<String, Study> studies,
      Map<String, Session> sessions,
      Map<String, FlashCard> flashCards});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flashGroups = null,
    Object? studies = null,
    Object? sessions = null,
    Object? flashCards = null,
  }) {
    return _then(_value.copyWith(
      flashGroups: null == flashGroups
          ? _value.flashGroups
          : flashGroups // ignore: cast_nullable_to_non_nullable
              as Map<String, FlashGroup>,
      studies: null == studies
          ? _value.studies
          : studies // ignore: cast_nullable_to_non_nullable
              as Map<String, Study>,
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as Map<String, Session>,
      flashCards: null == flashCards
          ? _value.flashCards
          : flashCards // ignore: cast_nullable_to_non_nullable
              as Map<String, FlashCard>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, FlashGroup> flashGroups,
      Map<String, Study> studies,
      Map<String, Session> sessions,
      Map<String, FlashCard> flashCards});
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flashGroups = null,
    Object? studies = null,
    Object? sessions = null,
    Object? flashCards = null,
  }) {
    return _then(_$AppStateImpl(
      flashGroups: null == flashGroups
          ? _value._flashGroups
          : flashGroups // ignore: cast_nullable_to_non_nullable
              as Map<String, FlashGroup>,
      studies: null == studies
          ? _value._studies
          : studies // ignore: cast_nullable_to_non_nullable
              as Map<String, Study>,
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as Map<String, Session>,
      flashCards: null == flashCards
          ? _value._flashCards
          : flashCards // ignore: cast_nullable_to_non_nullable
              as Map<String, FlashCard>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppStateImpl implements _AppState {
  const _$AppStateImpl(
      {final Map<String, FlashGroup> flashGroups = const <String, FlashGroup>{},
      final Map<String, Study> studies = const <String, Study>{},
      final Map<String, Session> sessions = const <String, Session>{},
      final Map<String, FlashCard> flashCards = const <String, FlashCard>{}})
      : _flashGroups = flashGroups,
        _studies = studies,
        _sessions = sessions,
        _flashCards = flashCards;

  factory _$AppStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppStateImplFromJson(json);

  final Map<String, FlashGroup> _flashGroups;
  @override
  @JsonKey()
  Map<String, FlashGroup> get flashGroups {
    if (_flashGroups is EqualUnmodifiableMapView) return _flashGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_flashGroups);
  }

  final Map<String, Study> _studies;
  @override
  @JsonKey()
  Map<String, Study> get studies {
    if (_studies is EqualUnmodifiableMapView) return _studies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_studies);
  }

  final Map<String, Session> _sessions;
  @override
  @JsonKey()
  Map<String, Session> get sessions {
    if (_sessions is EqualUnmodifiableMapView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sessions);
  }

  final Map<String, FlashCard> _flashCards;
  @override
  @JsonKey()
  Map<String, FlashCard> get flashCards {
    if (_flashCards is EqualUnmodifiableMapView) return _flashCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_flashCards);
  }

  @override
  String toString() {
    return 'AppState(flashGroups: $flashGroups, studies: $studies, sessions: $sessions, flashCards: $flashCards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            const DeepCollectionEquality()
                .equals(other._flashGroups, _flashGroups) &&
            const DeepCollectionEquality().equals(other._studies, _studies) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions) &&
            const DeepCollectionEquality()
                .equals(other._flashCards, _flashCards));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_flashGroups),
      const DeepCollectionEquality().hash(_studies),
      const DeepCollectionEquality().hash(_sessions),
      const DeepCollectionEquality().hash(_flashCards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppStateImplToJson(
      this,
    );
  }
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {final Map<String, FlashGroup> flashGroups,
      final Map<String, Study> studies,
      final Map<String, Session> sessions,
      final Map<String, FlashCard> flashCards}) = _$AppStateImpl;

  factory _AppState.fromJson(Map<String, dynamic> json) =
      _$AppStateImpl.fromJson;

  @override
  Map<String, FlashGroup> get flashGroups;
  @override
  Map<String, Study> get studies;
  @override
  Map<String, Session> get sessions;
  @override
  Map<String, FlashCard> get flashCards;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
