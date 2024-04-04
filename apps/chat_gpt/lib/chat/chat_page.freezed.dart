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

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) {
  return _ChatModel.fromJson(json);
}

/// @nodoc
mixin _$ChatModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<QueryResponseModel> get cards => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatModelCopyWith<ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelCopyWith<$Res> {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) then) =
      _$ChatModelCopyWithImpl<$Res, ChatModel>;
  @useResult
  $Res call({String id, String title, List<QueryResponseModel> cards});
}

/// @nodoc
class _$ChatModelCopyWithImpl<$Res, $Val extends ChatModel>
    implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? cards = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<QueryResponseModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatModelImplCopyWith<$Res>
    implements $ChatModelCopyWith<$Res> {
  factory _$$ChatModelImplCopyWith(
          _$ChatModelImpl value, $Res Function(_$ChatModelImpl) then) =
      __$$ChatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, List<QueryResponseModel> cards});
}

/// @nodoc
class __$$ChatModelImplCopyWithImpl<$Res>
    extends _$ChatModelCopyWithImpl<$Res, _$ChatModelImpl>
    implements _$$ChatModelImplCopyWith<$Res> {
  __$$ChatModelImplCopyWithImpl(
      _$ChatModelImpl _value, $Res Function(_$ChatModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? cards = null,
  }) {
    return _then(_$ChatModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<QueryResponseModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatModelImpl implements _ChatModel {
  const _$ChatModelImpl(
      {required this.id,
      required this.title,
      required final List<QueryResponseModel> cards})
      : _cards = cards;

  factory _$ChatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  final List<QueryResponseModel> _cards;
  @override
  List<QueryResponseModel> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString() {
    return 'ChatModel(id: $id, title: $title, cards: $cards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, const DeepCollectionEquality().hash(_cards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatModelImplCopyWith<_$ChatModelImpl> get copyWith =>
      __$$ChatModelImplCopyWithImpl<_$ChatModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatModelImplToJson(
      this,
    );
  }
}

abstract class _ChatModel implements ChatModel {
  const factory _ChatModel(
      {required final String id,
      required final String title,
      required final List<QueryResponseModel> cards}) = _$ChatModelImpl;

  factory _ChatModel.fromJson(Map<String, dynamic> json) =
      _$ChatModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  List<QueryResponseModel> get cards;
  @override
  @JsonKey(ignore: true)
  _$$ChatModelImplCopyWith<_$ChatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
