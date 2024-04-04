// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QueryResponseModelImpl _$$QueryResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QueryResponseModelImpl(
      cardType: $enumDecode(_$CardTypeEnumMap, json['cardType']),
      content: json['content'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
    );

Map<String, dynamic> _$$QueryResponseModelImplToJson(
        _$QueryResponseModelImpl instance) =>
    <String, dynamic>{
      'cardType': _$CardTypeEnumMap[instance.cardType]!,
      'content': instance.content,
      'dateTime': instance.dateTime.toIso8601String(),
    };

const _$CardTypeEnumMap = {
  CardType.query: 'query',
  CardType.response: 'response',
};

_$ChatModelImpl _$$ChatModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      cards: (json['cards'] as List<dynamic>)
          .map((e) => QueryResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatModelImplToJson(_$ChatModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'cards': instance.cards,
    };
