// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  String get questionID => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get a => throw _privateConstructorUsedError;
  String get b => throw _privateConstructorUsedError;
  String get c => throw _privateConstructorUsedError;
  String get d => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String questionID, String title, String a,
            String b, String c, String d)
        raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String questionID, String title, String a, String b,
            String c, String d)?
        raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String questionID, String title, String a, String b,
            String c, String d)?
        raw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Question value) raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Question value)? raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Question value)? raw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call(
      {String questionID,
      String title,
      String a,
      String b,
      String c,
      String d});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionID = null,
    Object? title = null,
    Object? a = null,
    Object? b = null,
    Object? c = null,
    Object? d = null,
  }) {
    return _then(_value.copyWith(
      questionID: null == questionID
          ? _value.questionID
          : questionID // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      b: null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String,
      c: null == c
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as String,
      d: null == d
          ? _value.d
          : d // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionImplCopyWith<$Res>
    implements $QuestionCopyWith<$Res> {
  factory _$$QuestionImplCopyWith(
          _$QuestionImpl value, $Res Function(_$QuestionImpl) then) =
      __$$QuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String questionID,
      String title,
      String a,
      String b,
      String c,
      String d});
}

/// @nodoc
class __$$QuestionImplCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$QuestionImpl>
    implements _$$QuestionImplCopyWith<$Res> {
  __$$QuestionImplCopyWithImpl(
      _$QuestionImpl _value, $Res Function(_$QuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionID = null,
    Object? title = null,
    Object? a = null,
    Object? b = null,
    Object? c = null,
    Object? d = null,
  }) {
    return _then(_$QuestionImpl(
      questionID: null == questionID
          ? _value.questionID
          : questionID // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      b: null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String,
      c: null == c
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as String,
      d: null == d
          ? _value.d
          : d // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionImpl implements _Question {
  const _$QuestionImpl(
      {this.questionID = '',
      this.title = '',
      this.a = '',
      this.b = '',
      this.c = '',
      this.d = ''});

  factory _$QuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionImplFromJson(json);

  @override
  @JsonKey()
  final String questionID;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String a;
  @override
  @JsonKey()
  final String b;
  @override
  @JsonKey()
  final String c;
  @override
  @JsonKey()
  final String d;

  @override
  String toString() {
    return 'Question.raw(questionID: $questionID, title: $title, a: $a, b: $b, c: $c, d: $d)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionImpl &&
            (identical(other.questionID, questionID) ||
                other.questionID == questionID) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.b, b) || other.b == b) &&
            (identical(other.c, c) || other.c == c) &&
            (identical(other.d, d) || other.d == d));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, questionID, title, a, b, c, d);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      __$$QuestionImplCopyWithImpl<_$QuestionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String questionID, String title, String a,
            String b, String c, String d)
        raw,
  }) {
    return raw(questionID, title, a, b, c, d);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String questionID, String title, String a, String b,
            String c, String d)?
        raw,
  }) {
    return raw?.call(questionID, title, a, b, c, d);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String questionID, String title, String a, String b,
            String c, String d)?
        raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(questionID, title, a, b, c, d);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Question value) raw,
  }) {
    return raw(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Question value)? raw,
  }) {
    return raw?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Question value)? raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionImplToJson(
      this,
    );
  }
}

abstract class _Question implements Question {
  const factory _Question(
      {final String questionID,
      final String title,
      final String a,
      final String b,
      final String c,
      final String d}) = _$QuestionImpl;

  factory _Question.fromJson(Map<String, dynamic> json) =
      _$QuestionImpl.fromJson;

  @override
  String get questionID;
  @override
  String get title;
  @override
  String get a;
  @override
  String get b;
  @override
  String get c;
  @override
  String get d;
  @override
  @JsonKey(ignore: true)
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionsState _$QuestionsStateFromJson(Map<String, dynamic> json) {
  return _QuestionsState.fromJson(json);
}

/// @nodoc
mixin _$QuestionsState {
  Map<String, Question> get cache => throw _privateConstructorUsedError;
  QuestionsStatus get questionsStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionsStateCopyWith<QuestionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionsStateCopyWith<$Res> {
  factory $QuestionsStateCopyWith(
          QuestionsState value, $Res Function(QuestionsState) then) =
      _$QuestionsStateCopyWithImpl<$Res, QuestionsState>;
  @useResult
  $Res call({Map<String, Question> cache, QuestionsStatus questionsStatus});
}

/// @nodoc
class _$QuestionsStateCopyWithImpl<$Res, $Val extends QuestionsState>
    implements $QuestionsStateCopyWith<$Res> {
  _$QuestionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
    Object? questionsStatus = null,
  }) {
    return _then(_value.copyWith(
      cache: null == cache
          ? _value.cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Map<String, Question>,
      questionsStatus: null == questionsStatus
          ? _value.questionsStatus
          : questionsStatus // ignore: cast_nullable_to_non_nullable
              as QuestionsStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionsStateImplCopyWith<$Res>
    implements $QuestionsStateCopyWith<$Res> {
  factory _$$QuestionsStateImplCopyWith(_$QuestionsStateImpl value,
          $Res Function(_$QuestionsStateImpl) then) =
      __$$QuestionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, Question> cache, QuestionsStatus questionsStatus});
}

/// @nodoc
class __$$QuestionsStateImplCopyWithImpl<$Res>
    extends _$QuestionsStateCopyWithImpl<$Res, _$QuestionsStateImpl>
    implements _$$QuestionsStateImplCopyWith<$Res> {
  __$$QuestionsStateImplCopyWithImpl(
      _$QuestionsStateImpl _value, $Res Function(_$QuestionsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
    Object? questionsStatus = null,
  }) {
    return _then(_$QuestionsStateImpl(
      cache: null == cache
          ? _value._cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Map<String, Question>,
      questionsStatus: null == questionsStatus
          ? _value.questionsStatus
          : questionsStatus // ignore: cast_nullable_to_non_nullable
              as QuestionsStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionsStateImpl implements _QuestionsState {
  const _$QuestionsStateImpl(
      {final Map<String, Question> cache = const <String, Question>{},
      this.questionsStatus = QuestionsStatus.success})
      : _cache = cache;

  factory _$QuestionsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionsStateImplFromJson(json);

  final Map<String, Question> _cache;
  @override
  @JsonKey()
  Map<String, Question> get cache {
    if (_cache is EqualUnmodifiableMapView) return _cache;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cache);
  }

  @override
  @JsonKey()
  final QuestionsStatus questionsStatus;

  @override
  String toString() {
    return 'QuestionsState(cache: $cache, questionsStatus: $questionsStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionsStateImpl &&
            const DeepCollectionEquality().equals(other._cache, _cache) &&
            (identical(other.questionsStatus, questionsStatus) ||
                other.questionsStatus == questionsStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_cache), questionsStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionsStateImplCopyWith<_$QuestionsStateImpl> get copyWith =>
      __$$QuestionsStateImplCopyWithImpl<_$QuestionsStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionsStateImplToJson(
      this,
    );
  }
}

abstract class _QuestionsState implements QuestionsState {
  const factory _QuestionsState(
      {final Map<String, Question> cache,
      final QuestionsStatus questionsStatus}) = _$QuestionsStateImpl;

  factory _QuestionsState.fromJson(Map<String, dynamic> json) =
      _$QuestionsStateImpl.fromJson;

  @override
  Map<String, Question> get cache;
  @override
  QuestionsStatus get questionsStatus;
  @override
  @JsonKey(ignore: true)
  _$$QuestionsStateImplCopyWith<_$QuestionsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
