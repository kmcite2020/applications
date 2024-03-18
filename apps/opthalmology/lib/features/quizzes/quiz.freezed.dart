// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Quiz _$QuizFromJson(Map<String, dynamic> json) {
  return _Quiz.fromJson(json);
}

/// @nodoc
mixin _$Quiz {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  Duration? get duration => throw _privateConstructorUsedError;
  String? get difficultyLevel => throw _privateConstructorUsedError;
  String? get chapter => throw _privateConstructorUsedError;
  String? get instructions => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  List<UserScore>? get userScores => throw _privateConstructorUsedError;
  bool? get randomizeQuestions => throw _privateConstructorUsedError;
  bool? get isPublic => throw _privateConstructorUsedError;
  String? get accessCode => throw _privateConstructorUsedError;
  DateTime? get dateCreated => throw _privateConstructorUsedError;
  DateTime? get lastModified => throw _privateConstructorUsedError;
  List<Question>? get questions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizCopyWith<Quiz> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizCopyWith<$Res> {
  factory $QuizCopyWith(Quiz value, $Res Function(Quiz) then) =
      _$QuizCopyWithImpl<$Res, Quiz>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? author,
      Duration? duration,
      String? difficultyLevel,
      String? chapter,
      String? instructions,
      Map<String, dynamic>? metadata,
      List<UserScore>? userScores,
      bool? randomizeQuestions,
      bool? isPublic,
      String? accessCode,
      DateTime? dateCreated,
      DateTime? lastModified,
      List<Question>? questions});
}

/// @nodoc
class _$QuizCopyWithImpl<$Res, $Val extends Quiz>
    implements $QuizCopyWith<$Res> {
  _$QuizCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? duration = freezed,
    Object? difficultyLevel = freezed,
    Object? chapter = freezed,
    Object? instructions = freezed,
    Object? metadata = freezed,
    Object? userScores = freezed,
    Object? randomizeQuestions = freezed,
    Object? isPublic = freezed,
    Object? accessCode = freezed,
    Object? dateCreated = freezed,
    Object? lastModified = freezed,
    Object? questions = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      difficultyLevel: freezed == difficultyLevel
          ? _value.difficultyLevel
          : difficultyLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      chapter: freezed == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      userScores: freezed == userScores
          ? _value.userScores
          : userScores // ignore: cast_nullable_to_non_nullable
              as List<UserScore>?,
      randomizeQuestions: freezed == randomizeQuestions
          ? _value.randomizeQuestions
          : randomizeQuestions // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPublic: freezed == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool?,
      accessCode: freezed == accessCode
          ? _value.accessCode
          : accessCode // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastModified: freezed == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      questions: freezed == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizImplCopyWith<$Res> implements $QuizCopyWith<$Res> {
  factory _$$QuizImplCopyWith(
          _$QuizImpl value, $Res Function(_$QuizImpl) then) =
      __$$QuizImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? author,
      Duration? duration,
      String? difficultyLevel,
      String? chapter,
      String? instructions,
      Map<String, dynamic>? metadata,
      List<UserScore>? userScores,
      bool? randomizeQuestions,
      bool? isPublic,
      String? accessCode,
      DateTime? dateCreated,
      DateTime? lastModified,
      List<Question>? questions});
}

/// @nodoc
class __$$QuizImplCopyWithImpl<$Res>
    extends _$QuizCopyWithImpl<$Res, _$QuizImpl>
    implements _$$QuizImplCopyWith<$Res> {
  __$$QuizImplCopyWithImpl(_$QuizImpl _value, $Res Function(_$QuizImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? duration = freezed,
    Object? difficultyLevel = freezed,
    Object? chapter = freezed,
    Object? instructions = freezed,
    Object? metadata = freezed,
    Object? userScores = freezed,
    Object? randomizeQuestions = freezed,
    Object? isPublic = freezed,
    Object? accessCode = freezed,
    Object? dateCreated = freezed,
    Object? lastModified = freezed,
    Object? questions = freezed,
  }) {
    return _then(_$QuizImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      difficultyLevel: freezed == difficultyLevel
          ? _value.difficultyLevel
          : difficultyLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      chapter: freezed == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      userScores: freezed == userScores
          ? _value._userScores
          : userScores // ignore: cast_nullable_to_non_nullable
              as List<UserScore>?,
      randomizeQuestions: freezed == randomizeQuestions
          ? _value.randomizeQuestions
          : randomizeQuestions // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPublic: freezed == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool?,
      accessCode: freezed == accessCode
          ? _value.accessCode
          : accessCode // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastModified: freezed == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizImpl implements _Quiz {
  const _$QuizImpl(
      {this.id,
      this.title,
      this.author,
      this.duration,
      this.difficultyLevel,
      this.chapter,
      this.instructions,
      final Map<String, dynamic>? metadata,
      final List<UserScore>? userScores,
      this.randomizeQuestions,
      this.isPublic,
      this.accessCode,
      this.dateCreated,
      this.lastModified,
      final List<Question>? questions})
      : _metadata = metadata,
        _userScores = userScores,
        _questions = questions;

  factory _$QuizImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? author;
  @override
  final Duration? duration;
  @override
  final String? difficultyLevel;
  @override
  final String? chapter;
  @override
  final String? instructions;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<UserScore>? _userScores;
  @override
  List<UserScore>? get userScores {
    final value = _userScores;
    if (value == null) return null;
    if (_userScores is EqualUnmodifiableListView) return _userScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? randomizeQuestions;
  @override
  final bool? isPublic;
  @override
  final String? accessCode;
  @override
  final DateTime? dateCreated;
  @override
  final DateTime? lastModified;
  final List<Question>? _questions;
  @override
  List<Question>? get questions {
    final value = _questions;
    if (value == null) return null;
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Quiz(id: $id, title: $title, author: $author, duration: $duration, difficultyLevel: $difficultyLevel, chapter: $chapter, instructions: $instructions, metadata: $metadata, userScores: $userScores, randomizeQuestions: $randomizeQuestions, isPublic: $isPublic, accessCode: $accessCode, dateCreated: $dateCreated, lastModified: $lastModified, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.difficultyLevel, difficultyLevel) ||
                other.difficultyLevel == difficultyLevel) &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            const DeepCollectionEquality()
                .equals(other._userScores, _userScores) &&
            (identical(other.randomizeQuestions, randomizeQuestions) ||
                other.randomizeQuestions == randomizeQuestions) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.accessCode, accessCode) ||
                other.accessCode == accessCode) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      author,
      duration,
      difficultyLevel,
      chapter,
      instructions,
      const DeepCollectionEquality().hash(_metadata),
      const DeepCollectionEquality().hash(_userScores),
      randomizeQuestions,
      isPublic,
      accessCode,
      dateCreated,
      lastModified,
      const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizImplCopyWith<_$QuizImpl> get copyWith =>
      __$$QuizImplCopyWithImpl<_$QuizImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizImplToJson(
      this,
    );
  }
}

abstract class _Quiz implements Quiz {
  const factory _Quiz(
      {final String? id,
      final String? title,
      final String? author,
      final Duration? duration,
      final String? difficultyLevel,
      final String? chapter,
      final String? instructions,
      final Map<String, dynamic>? metadata,
      final List<UserScore>? userScores,
      final bool? randomizeQuestions,
      final bool? isPublic,
      final String? accessCode,
      final DateTime? dateCreated,
      final DateTime? lastModified,
      final List<Question>? questions}) = _$QuizImpl;

  factory _Quiz.fromJson(Map<String, dynamic> json) = _$QuizImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get author;
  @override
  Duration? get duration;
  @override
  String? get difficultyLevel;
  @override
  String? get chapter;
  @override
  String? get instructions;
  @override
  Map<String, dynamic>? get metadata;
  @override
  List<UserScore>? get userScores;
  @override
  bool? get randomizeQuestions;
  @override
  bool? get isPublic;
  @override
  String? get accessCode;
  @override
  DateTime? get dateCreated;
  @override
  DateTime? get lastModified;
  @override
  List<Question>? get questions;
  @override
  @JsonKey(ignore: true)
  _$$QuizImplCopyWith<_$QuizImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserScore _$UserScoreFromJson(Map<String, dynamic> json) {
  return _UserScore.fromJson(json);
}

/// @nodoc
mixin _$UserScore {
  String? get username => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  DateTime? get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserScoreCopyWith<UserScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserScoreCopyWith<$Res> {
  factory $UserScoreCopyWith(UserScore value, $Res Function(UserScore) then) =
      _$UserScoreCopyWithImpl<$Res, UserScore>;
  @useResult
  $Res call({String? username, int? score, DateTime? timestamp});
}

/// @nodoc
class _$UserScoreCopyWithImpl<$Res, $Val extends UserScore>
    implements $UserScoreCopyWith<$Res> {
  _$UserScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? score = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserScoreImplCopyWith<$Res>
    implements $UserScoreCopyWith<$Res> {
  factory _$$UserScoreImplCopyWith(
          _$UserScoreImpl value, $Res Function(_$UserScoreImpl) then) =
      __$$UserScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? username, int? score, DateTime? timestamp});
}

/// @nodoc
class __$$UserScoreImplCopyWithImpl<$Res>
    extends _$UserScoreCopyWithImpl<$Res, _$UserScoreImpl>
    implements _$$UserScoreImplCopyWith<$Res> {
  __$$UserScoreImplCopyWithImpl(
      _$UserScoreImpl _value, $Res Function(_$UserScoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? score = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_$UserScoreImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserScoreImpl implements _UserScore {
  const _$UserScoreImpl({this.username, this.score, this.timestamp});

  factory _$UserScoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserScoreImplFromJson(json);

  @override
  final String? username;
  @override
  final int? score;
  @override
  final DateTime? timestamp;

  @override
  String toString() {
    return 'UserScore(username: $username, score: $score, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserScoreImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, score, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserScoreImplCopyWith<_$UserScoreImpl> get copyWith =>
      __$$UserScoreImplCopyWithImpl<_$UserScoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserScoreImplToJson(
      this,
    );
  }
}

abstract class _UserScore implements UserScore {
  const factory _UserScore(
      {final String? username,
      final int? score,
      final DateTime? timestamp}) = _$UserScoreImpl;

  factory _UserScore.fromJson(Map<String, dynamic> json) =
      _$UserScoreImpl.fromJson;

  @override
  String? get username;
  @override
  int? get score;
  @override
  DateTime? get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$UserScoreImplCopyWith<_$UserScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
