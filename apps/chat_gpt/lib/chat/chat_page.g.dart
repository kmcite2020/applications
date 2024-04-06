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
