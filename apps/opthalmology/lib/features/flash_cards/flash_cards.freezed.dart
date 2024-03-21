// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flash_cards.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FlashCard _$FlashCardFromJson(Map<String, dynamic> json) {
  return _FlashCard.fromJson(json);
}

/// @nodoc
mixin _$FlashCard {
  FlashGroup get flashGroup => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  String get explaination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlashCardCopyWith<FlashCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashCardCopyWith<$Res> {
  factory $FlashCardCopyWith(FlashCard value, $Res Function(FlashCard) then) =
      _$FlashCardCopyWithImpl<$Res, FlashCard>;
  @useResult
  $Res call(
      {FlashGroup flashGroup,
      String id,
      String question,
      String answer,
      String explaination});

  $FlashGroupCopyWith<$Res> get flashGroup;
}

/// @nodoc
class _$FlashCardCopyWithImpl<$Res, $Val extends FlashCard>
    implements $FlashCardCopyWith<$Res> {
  _$FlashCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flashGroup = null,
    Object? id = null,
    Object? question = null,
    Object? answer = null,
    Object? explaination = null,
  }) {
    return _then(_value.copyWith(
      flashGroup: null == flashGroup
          ? _value.flashGroup
          : flashGroup // ignore: cast_nullable_to_non_nullable
              as FlashGroup,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      explaination: null == explaination
          ? _value.explaination
          : explaination // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FlashGroupCopyWith<$Res> get flashGroup {
    return $FlashGroupCopyWith<$Res>(_value.flashGroup, (value) {
      return _then(_value.copyWith(flashGroup: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FlashCardImplCopyWith<$Res>
    implements $FlashCardCopyWith<$Res> {
  factory _$$FlashCardImplCopyWith(
          _$FlashCardImpl value, $Res Function(_$FlashCardImpl) then) =
      __$$FlashCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FlashGroup flashGroup,
      String id,
      String question,
      String answer,
      String explaination});

  @override
  $FlashGroupCopyWith<$Res> get flashGroup;
}

/// @nodoc
class __$$FlashCardImplCopyWithImpl<$Res>
    extends _$FlashCardCopyWithImpl<$Res, _$FlashCardImpl>
    implements _$$FlashCardImplCopyWith<$Res> {
  __$$FlashCardImplCopyWithImpl(
      _$FlashCardImpl _value, $Res Function(_$FlashCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flashGroup = null,
    Object? id = null,
    Object? question = null,
    Object? answer = null,
    Object? explaination = null,
  }) {
    return _then(_$FlashCardImpl(
      flashGroup: null == flashGroup
          ? _value.flashGroup
          : flashGroup // ignore: cast_nullable_to_non_nullable
              as FlashGroup,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      explaination: null == explaination
          ? _value.explaination
          : explaination // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlashCardImpl implements _FlashCard {
  const _$FlashCardImpl(
      {this.flashGroup = const FlashGroup(),
      this.id = '',
      this.question = '',
      this.answer = '',
      this.explaination = ''});

  factory _$FlashCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlashCardImplFromJson(json);

  @override
  @JsonKey()
  final FlashGroup flashGroup;
  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String question;
  @override
  @JsonKey()
  final String answer;
  @override
  @JsonKey()
  final String explaination;

  @override
  String toString() {
    return 'FlashCard(flashGroup: $flashGroup, id: $id, question: $question, answer: $answer, explaination: $explaination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashCardImpl &&
            (identical(other.flashGroup, flashGroup) ||
                other.flashGroup == flashGroup) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.explaination, explaination) ||
                other.explaination == explaination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, flashGroup, id, question, answer, explaination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashCardImplCopyWith<_$FlashCardImpl> get copyWith =>
      __$$FlashCardImplCopyWithImpl<_$FlashCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlashCardImplToJson(
      this,
    );
  }
}

abstract class _FlashCard implements FlashCard {
  const factory _FlashCard(
      {final FlashGroup flashGroup,
      final String id,
      final String question,
      final String answer,
      final String explaination}) = _$FlashCardImpl;

  factory _FlashCard.fromJson(Map<String, dynamic> json) =
      _$FlashCardImpl.fromJson;

  @override
  FlashGroup get flashGroup;
  @override
  String get id;
  @override
  String get question;
  @override
  String get answer;
  @override
  String get explaination;
  @override
  @JsonKey(ignore: true)
  _$$FlashCardImplCopyWith<_$FlashCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
