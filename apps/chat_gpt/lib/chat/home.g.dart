// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_page.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QueryResponseModelCWProxy {
  QueryResponseModel cardType(CardType cardType);

  QueryResponseModel content(String content);

  QueryResponseModel dateTime(DateTime dateTime);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QueryResponseModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QueryResponseModel(...).copyWith(id: 12, name: "My name")
  /// ````
  QueryResponseModel call({
    CardType? cardType,
    String? content,
    DateTime? dateTime,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfQueryResponseModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfQueryResponseModel.copyWith.fieldName(...)`
class _$QueryResponseModelCWProxyImpl implements _$QueryResponseModelCWProxy {
  const _$QueryResponseModelCWProxyImpl(this._value);

  final QueryResponseModel _value;

  @override
  QueryResponseModel cardType(CardType cardType) => this(cardType: cardType);

  @override
  QueryResponseModel content(String content) => this(content: content);

  @override
  QueryResponseModel dateTime(DateTime dateTime) => this(dateTime: dateTime);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QueryResponseModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QueryResponseModel(...).copyWith(id: 12, name: "My name")
  /// ````
  QueryResponseModel call({
    Object? cardType = const $CopyWithPlaceholder(),
    Object? content = const $CopyWithPlaceholder(),
    Object? dateTime = const $CopyWithPlaceholder(),
  }) {
    return QueryResponseModel(
      cardType: cardType == const $CopyWithPlaceholder() || cardType == null
          ? _value.cardType
          // ignore: cast_nullable_to_non_nullable
          : cardType as CardType,
      content: content == const $CopyWithPlaceholder() || content == null
          ? _value.content
          // ignore: cast_nullable_to_non_nullable
          : content as String,
      dateTime: dateTime == const $CopyWithPlaceholder() || dateTime == null
          ? _value.dateTime
          // ignore: cast_nullable_to_non_nullable
          : dateTime as DateTime,
    );
  }
}

extension $QueryResponseModelCopyWith on QueryResponseModel {
  /// Returns a callable class that can be used as follows: `instanceOfQueryResponseModel.copyWith(...)` or like so:`instanceOfQueryResponseModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QueryResponseModelCWProxy get copyWith =>
      _$QueryResponseModelCWProxyImpl(this);
}

abstract class _$ChatModelCWProxy {
  ChatModel cards(List<QueryResponseModel> cards);

  ChatModel id(String id);

  ChatModel title(String title);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChatModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChatModel(...).copyWith(id: 12, name: "My name")
  /// ````
  ChatModel call({
    List<QueryResponseModel>? cards,
    String? id,
    String? title,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfChatModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfChatModel.copyWith.fieldName(...)`
class _$ChatModelCWProxyImpl implements _$ChatModelCWProxy {
  const _$ChatModelCWProxyImpl(this._value);

  final ChatModel _value;

  @override
  ChatModel cards(List<QueryResponseModel> cards) => this(cards: cards);

  @override
  ChatModel id(String id) => this(id: id);

  @override
  ChatModel title(String title) => this(title: title);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChatModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChatModel(...).copyWith(id: 12, name: "My name")
  /// ````
  ChatModel call({
    Object? cards = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
  }) {
    return ChatModel(
      cards: cards == const $CopyWithPlaceholder() || cards == null
          ? _value.cards
          // ignore: cast_nullable_to_non_nullable
          : cards as List<QueryResponseModel>,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      title: title == const $CopyWithPlaceholder() || title == null
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
    );
  }
}

extension $ChatModelCopyWith on ChatModel {
  /// Returns a callable class that can be used as follows: `instanceOfChatModel.copyWith(...)` or like so:`instanceOfChatModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ChatModelCWProxy get copyWith => _$ChatModelCWProxyImpl(this);
}

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetChatModelCollection on Isar {
  IsarCollection<String, ChatModel> get chatModels => this.collection();
}

const ChatModelSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'ChatModel',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'id',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'title',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'cards',
        type: IsarType.objectList,
        target: 'QueryResponseModel',
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<String, ChatModel>(
    serialize: serializeChatModel,
    deserialize: deserializeChatModel,
    deserializeProperty: deserializeChatModelProp,
  ),
  embeddedSchemas: [QueryResponseModelSchema],
);

@isarProtected
int serializeChatModel(IsarWriter writer, ChatModel object) {
  IsarCore.writeString(writer, 1, object.id);
  IsarCore.writeString(writer, 2, object.title);
  {
    final list = object.cards;
    final listWriter = IsarCore.beginList(writer, 3, list.length);
    for (var i = 0; i < list.length; i++) {
      {
        final value = list[i];
        final objectWriter = IsarCore.beginObject(listWriter, i);
        serializeQueryResponseModel(objectWriter, value);
        IsarCore.endObject(listWriter, objectWriter);
      }
    }
    IsarCore.endList(writer, listWriter);
  }
  return Isar.fastHash(object.id);
}

@isarProtected
ChatModel deserializeChatModel(IsarReader reader) {
  final String _id;
  _id = IsarCore.readString(reader, 1) ?? '';
  final String _title;
  _title = IsarCore.readString(reader, 2) ?? '';
  final List<QueryResponseModel> _cards;
  {
    final length = IsarCore.readList(reader, 3, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        _cards = const [];
      } else {
        final list = List<QueryResponseModel>.filled(
            length,
            QueryResponseModel(
              cardType: CardType.query,
              content: '',
              dateTime:
                  DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal(),
            ),
            growable: true);
        for (var i = 0; i < length; i++) {
          {
            final objectReader = IsarCore.readObject(reader, i);
            if (objectReader.isNull) {
              list[i] = QueryResponseModel(
                cardType: CardType.query,
                content: '',
                dateTime: DateTime.fromMillisecondsSinceEpoch(0, isUtc: true)
                    .toLocal(),
              );
            } else {
              final embedded = deserializeQueryResponseModel(objectReader);
              IsarCore.freeReader(objectReader);
              list[i] = embedded;
            }
          }
        }
        IsarCore.freeReader(reader);
        _cards = list;
      }
    }
  }
  final object = ChatModel(
    id: _id,
    title: _title,
    cards: _cards,
  );
  return object;
}

@isarProtected
dynamic deserializeChatModelProp(IsarReader reader, int property) {
  switch (property) {
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      return IsarCore.readString(reader, 2) ?? '';
    case 3:
      {
        final length = IsarCore.readList(reader, 3, IsarCore.readerPtrPtr);
        {
          final reader = IsarCore.readerPtr;
          if (reader.isNull) {
            return const [];
          } else {
            final list = List<QueryResponseModel>.filled(
                length,
                QueryResponseModel(
                  cardType: CardType.query,
                  content: '',
                  dateTime: DateTime.fromMillisecondsSinceEpoch(0, isUtc: true)
                      .toLocal(),
                ),
                growable: true);
            for (var i = 0; i < length; i++) {
              {
                final objectReader = IsarCore.readObject(reader, i);
                if (objectReader.isNull) {
                  list[i] = QueryResponseModel(
                    cardType: CardType.query,
                    content: '',
                    dateTime:
                        DateTime.fromMillisecondsSinceEpoch(0, isUtc: true)
                            .toLocal(),
                  );
                } else {
                  final embedded = deserializeQueryResponseModel(objectReader);
                  IsarCore.freeReader(objectReader);
                  list[i] = embedded;
                }
              }
            }
            IsarCore.freeReader(reader);
            return list;
          }
        }
      }
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _ChatModelUpdate {
  bool call({
    required String id,
    String? title,
  });
}

class _ChatModelUpdateImpl implements _ChatModelUpdate {
  const _ChatModelUpdateImpl(this.collection);

  final IsarCollection<String, ChatModel> collection;

  @override
  bool call({
    required String id,
    Object? title = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (title != ignore) 2: title as String?,
        }) >
        0;
  }
}

sealed class _ChatModelUpdateAll {
  int call({
    required List<String> id,
    String? title,
  });
}

class _ChatModelUpdateAllImpl implements _ChatModelUpdateAll {
  const _ChatModelUpdateAllImpl(this.collection);

  final IsarCollection<String, ChatModel> collection;

  @override
  int call({
    required List<String> id,
    Object? title = ignore,
  }) {
    return collection.updateProperties(id, {
      if (title != ignore) 2: title as String?,
    });
  }
}

extension ChatModelUpdate on IsarCollection<String, ChatModel> {
  _ChatModelUpdate get update => _ChatModelUpdateImpl(this);

  _ChatModelUpdateAll get updateAll => _ChatModelUpdateAllImpl(this);
}

sealed class _ChatModelQueryUpdate {
  int call({
    String? title,
  });
}

class _ChatModelQueryUpdateImpl implements _ChatModelQueryUpdate {
  const _ChatModelQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<ChatModel> query;
  final int? limit;

  @override
  int call({
    Object? title = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (title != ignore) 2: title as String?,
    });
  }
}

extension ChatModelQueryUpdate on IsarQuery<ChatModel> {
  _ChatModelQueryUpdate get updateFirst =>
      _ChatModelQueryUpdateImpl(this, limit: 1);

  _ChatModelQueryUpdate get updateAll => _ChatModelQueryUpdateImpl(this);
}

class _ChatModelQueryBuilderUpdateImpl implements _ChatModelQueryUpdate {
  const _ChatModelQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<ChatModel, ChatModel, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? title = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (title != ignore) 2: title as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension ChatModelQueryBuilderUpdate
    on QueryBuilder<ChatModel, ChatModel, QOperations> {
  _ChatModelQueryUpdate get updateFirst =>
      _ChatModelQueryBuilderUpdateImpl(this, limit: 1);

  _ChatModelQueryUpdate get updateAll => _ChatModelQueryBuilderUpdateImpl(this);
}

extension ChatModelQueryFilter
    on QueryBuilder<ChatModel, ChatModel, QFilterCondition> {
  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> idGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> idLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> idLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      titleGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> titleLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition>
      titleLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> cardsIsEmpty() {
    return not().cardsIsNotEmpty();
  }

  QueryBuilder<ChatModel, ChatModel, QAfterFilterCondition> cardsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 3, value: null),
      );
    });
  }
}

extension ChatModelQueryObject
    on QueryBuilder<ChatModel, ChatModel, QFilterCondition> {}

extension ChatModelQuerySortBy on QueryBuilder<ChatModel, ChatModel, QSortBy> {
  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> sortByTitleDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension ChatModelQuerySortThenBy
    on QueryBuilder<ChatModel, ChatModel, QSortThenBy> {
  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChatModel, ChatModel, QAfterSortBy> thenByTitleDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension ChatModelQueryWhereDistinct
    on QueryBuilder<ChatModel, ChatModel, QDistinct> {
  QueryBuilder<ChatModel, ChatModel, QAfterDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }
}

extension ChatModelQueryProperty1
    on QueryBuilder<ChatModel, ChatModel, QProperty> {
  QueryBuilder<ChatModel, String, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<ChatModel, String, QAfterProperty> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<ChatModel, List<QueryResponseModel>, QAfterProperty>
      cardsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }
}

extension ChatModelQueryProperty2<R>
    on QueryBuilder<ChatModel, R, QAfterProperty> {
  QueryBuilder<ChatModel, (R, String), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<ChatModel, (R, String), QAfterProperty> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<ChatModel, (R, List<QueryResponseModel>), QAfterProperty>
      cardsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }
}

extension ChatModelQueryProperty3<R1, R2>
    on QueryBuilder<ChatModel, (R1, R2), QAfterProperty> {
  QueryBuilder<ChatModel, (R1, R2, String), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<ChatModel, (R1, R2, String), QOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<ChatModel, (R1, R2, List<QueryResponseModel>), QOperations>
      cardsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }
}

// **************************************************************************
// _IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

const QueryResponseModelSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'QueryResponseModel',
    embedded: true,
    properties: [
      IsarPropertySchema(
        name: 'cardType',
        type: IsarType.byte,
        enumMap: {"query": 0, "response": 1},
      ),
      IsarPropertySchema(
        name: 'content',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'dateTime',
        type: IsarType.dateTime,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<void, QueryResponseModel>(
    serialize: serializeQueryResponseModel,
    deserialize: deserializeQueryResponseModel,
  ),
);

@isarProtected
int serializeQueryResponseModel(IsarWriter writer, QueryResponseModel object) {
  IsarCore.writeByte(writer, 1, object.cardType.index);
  IsarCore.writeString(writer, 2, object.content);
  IsarCore.writeLong(writer, 3, object.dateTime.toUtc().microsecondsSinceEpoch);
  return 0;
}

@isarProtected
QueryResponseModel deserializeQueryResponseModel(IsarReader reader) {
  final CardType _cardType;
  {
    if (IsarCore.readNull(reader, 1)) {
      _cardType = CardType.query;
    } else {
      _cardType = _queryResponseModelCardType[IsarCore.readByte(reader, 1)] ??
          CardType.query;
    }
  }
  final String _content;
  _content = IsarCore.readString(reader, 2) ?? '';
  final DateTime _dateTime;
  {
    final value = IsarCore.readLong(reader, 3);
    if (value == -9223372036854775808) {
      _dateTime = DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
    } else {
      _dateTime =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final object = QueryResponseModel(
    cardType: _cardType,
    content: _content,
    dateTime: _dateTime,
  );
  return object;
}

const _queryResponseModelCardType = {
  0: CardType.query,
  1: CardType.response,
};

extension QueryResponseModelQueryFilter
    on QueryBuilder<QueryResponseModel, QueryResponseModel, QFilterCondition> {
  QueryBuilder<QueryResponseModel, QueryResponseModel, QAfterFilterCondition>
      cardTypeEqualTo(
    CardType value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<QueryResponseModel, QueryResponseModel, QAfterFilterCondition>
      cardTypeGreaterThan(
    CardType value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<QueryResponseModel, QueryResponseModel, QAfterFilterCondition>
      cardTypeGreaterThanOrEqualTo(
    CardType value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<QueryResponseModel, QueryResponseModel, QAfterFilterCondition>
      cardTypeLessThan(
    CardType value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<QueryResponseModel, QueryResponseModel, QAfterFilterCondition>
      cardTypeLessThanOrEqualTo(
    CardType value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<QueryResponseModel, QueryResponseModel, QAfterFilterCondition>
      cardTypeBetween(
    CardType lower,
    CardType upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower.index,
          upper: upper.index,
        ),
      );
    });
  }

  QueryBuilder<QueryResponseModel, QueryResponseModel, QAfterFilterCondition>
      contentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QueryResponseModel, QueryResponseModel, QAfterFilterCondition>
      contentGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QueryResponseModel, QueryResponseModel, QAfterFilterCondition>
      contentGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QueryResponseModel, QueryResponseModel, QAfterFilterCondition>
      contentLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QueryResponseModel, QueryResponseModel, QAfterFilterCondition>
      contentLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QueryResponseModel, QueryResponseModel, QAfterFilterCondition>
      contentBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QueryResponseModel, QueryResponseModel, QAfterFilterCondition>
      contentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QueryResponseModel, QueryResponseModel, QAfterFilterCondition>
      contentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QueryResponseModel, QueryResponseModel, QAfterFilterCondition>
      contentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QueryResponseModel, QueryResponseModel, QAfterFilterCondition>
      contentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QueryResponseModel, QueryResponseModel, QAfterFilterCondition>
      contentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<QueryResponseModel, QueryResponseModel, QAfterFilterCondition>
      contentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<QueryResponseModel, QueryResponseModel, QAfterFilterCondition>
      dateTimeEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<QueryResponseModel, QueryResponseModel, QAfterFilterCondition>
      dateTimeGreaterThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<QueryResponseModel, QueryResponseModel, QAfterFilterCondition>
      dateTimeGreaterThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<QueryResponseModel, QueryResponseModel, QAfterFilterCondition>
      dateTimeLessThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<QueryResponseModel, QueryResponseModel, QAfterFilterCondition>
      dateTimeLessThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<QueryResponseModel, QueryResponseModel, QAfterFilterCondition>
      dateTimeBetween(
    DateTime lower,
    DateTime upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }
}

extension QueryResponseModelQueryObject
    on QueryBuilder<QueryResponseModel, QueryResponseModel, QFilterCondition> {}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryResponseModel _$QueryResponseModelFromJson(Map<String, dynamic> json) =>
    QueryResponseModel(
      cardType: $enumDecode(_$CardTypeEnumMap, json['cardType']),
      content: json['content'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
    );

Map<String, dynamic> _$QueryResponseModelToJson(QueryResponseModel instance) =>
    <String, dynamic>{
      'cardType': _$CardTypeEnumMap[instance.cardType]!,
      'content': instance.content,
      'dateTime': instance.dateTime.toIso8601String(),
    };

const _$CardTypeEnumMap = {
  CardType.query: 'query',
  CardType.response: 'response',
};

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) => ChatModel(
      cards: (json['cards'] as List<dynamic>?)
              ?.map(QueryResponseModel.fromJson)
              .toList() ??
          const [],
      id: json['id'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$ChatModelToJson(ChatModel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'cards': instance.cards,
    };
