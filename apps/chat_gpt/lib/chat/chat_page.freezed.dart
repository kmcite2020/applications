// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QueryResponseModel _$QueryResponseModelFromJson(Map<String, dynamic> json) {
  return _QueryResponseModel.fromJson(json);
}

/// @nodoc
mixin _$QueryResponseModel {
  CardType get cardType => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueryResponseModelCopyWith<QueryResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryResponseModelCopyWith<$Res> {
  factory $QueryResponseModelCopyWith(
          QueryResponseModel value, $Res Function(QueryResponseModel) then) =
      _$QueryResponseModelCopyWithImpl<$Res, QueryResponseModel>;
  @useResult
  $Res call({CardType cardType, String content, DateTime dateTime});
}

/// @nodoc
class _$QueryResponseModelCopyWithImpl<$Res, $Val extends QueryResponseModel>
    implements $QueryResponseModelCopyWith<$Res> {
  _$QueryResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardType = null,
    Object? content = null,
    Object? dateTime = null,
  }) {
    return _then(_value.copyWith(
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QueryResponseModelImplCopyWith<$Res>
    implements $QueryResponseModelCopyWith<$Res> {
  factory _$$QueryResponseModelImplCopyWith(_$QueryResponseModelImpl value,
          $Res Function(_$QueryResponseModelImpl) then) =
      __$$QueryResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CardType cardType, String content, DateTime dateTime});
}

/// @nodoc
class __$$QueryResponseModelImplCopyWithImpl<$Res>
    extends _$QueryResponseModelCopyWithImpl<$Res, _$QueryResponseModelImpl>
    implements _$$QueryResponseModelImplCopyWith<$Res> {
  __$$QueryResponseModelImplCopyWithImpl(_$QueryResponseModelImpl _value,
      $Res Function(_$QueryResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardType = null,
    Object? content = null,
    Object? dateTime = null,
  }) {
    return _then(_$QueryResponseModelImpl(
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QueryResponseModelImpl implements _QueryResponseModel {
  const _$QueryResponseModelImpl(
      {required this.cardType, required this.content, required this.dateTime});

  factory _$QueryResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QueryResponseModelImplFromJson(json);

  @override
  final CardType cardType;
  @override
  final String content;
  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'QueryResponseModel(cardType: $cardType, content: $content, dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryResponseModelImpl &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cardType, content, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryResponseModelImplCopyWith<_$QueryResponseModelImpl> get copyWith =>
      __$$QueryResponseModelImplCopyWithImpl<_$QueryResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QueryResponseModelImplToJson(
      this,
    );
  }
}

abstract class _QueryResponseModel implements QueryResponseModel {
  const factory _QueryResponseModel(
      {required final CardType cardType,
      required final String content,
      required final DateTime dateTime}) = _$QueryResponseModelImpl;

  factory _QueryResponseModel.fromJson(Map<String, dynamic> json) =
      _$QueryResponseModelImpl.fromJson;

  @override
  CardType get cardType;
  @override
  String get content;
  @override
  DateTime get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$QueryResponseModelImplCopyWith<_$QueryResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
