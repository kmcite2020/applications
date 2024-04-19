// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pearl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Pearl _$PearlFromJson(Map<String, dynamic> json) {
  return _Pearl.fromJson(json);
}

/// @nodoc
mixin _$Pearl {
  String get id => throw _privateConstructorUsedError;
  String get statement => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PearlCopyWith<Pearl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PearlCopyWith<$Res> {
  factory $PearlCopyWith(Pearl value, $Res Function(Pearl) then) =
      _$PearlCopyWithImpl<$Res, Pearl>;
  @useResult
  $Res call({String id, String statement, String answer, String explanation});
}

/// @nodoc
class _$PearlCopyWithImpl<$Res, $Val extends Pearl>
    implements $PearlCopyWith<$Res> {
  _$PearlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? statement = null,
    Object? answer = null,
    Object? explanation = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      statement: null == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PearlImplCopyWith<$Res> implements $PearlCopyWith<$Res> {
  factory _$$PearlImplCopyWith(
          _$PearlImpl value, $Res Function(_$PearlImpl) then) =
      __$$PearlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String statement, String answer, String explanation});
}

/// @nodoc
class __$$PearlImplCopyWithImpl<$Res>
    extends _$PearlCopyWithImpl<$Res, _$PearlImpl>
    implements _$$PearlImplCopyWith<$Res> {
  __$$PearlImplCopyWithImpl(
      _$PearlImpl _value, $Res Function(_$PearlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? statement = null,
    Object? answer = null,
    Object? explanation = null,
  }) {
    return _then(_$PearlImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      statement: null == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PearlImpl with DiagnosticableTreeMixin implements _Pearl {
  const _$PearlImpl(
      {this.id = '',
      this.statement = '',
      this.answer = '',
      this.explanation = ''});

  factory _$PearlImpl.fromJson(Map<String, dynamic> json) =>
      _$$PearlImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String statement;
  @override
  @JsonKey()
  final String answer;
  @override
  @JsonKey()
  final String explanation;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Pearl(id: $id, statement: $statement, answer: $answer, explanation: $explanation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Pearl'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('statement', statement))
      ..add(DiagnosticsProperty('answer', answer))
      ..add(DiagnosticsProperty('explanation', explanation));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PearlImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.statement, statement) ||
                other.statement == statement) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, statement, answer, explanation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PearlImplCopyWith<_$PearlImpl> get copyWith =>
      __$$PearlImplCopyWithImpl<_$PearlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PearlImplToJson(
      this,
    );
  }
}

abstract class _Pearl implements Pearl {
  const factory _Pearl(
      {final String id,
      final String statement,
      final String answer,
      final String explanation}) = _$PearlImpl;

  factory _Pearl.fromJson(Map<String, dynamic> json) = _$PearlImpl.fromJson;

  @override
  String get id;
  @override
  String get statement;
  @override
  String get answer;
  @override
  String get explanation;
  @override
  @JsonKey(ignore: true)
  _$$PearlImplCopyWith<_$PearlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
