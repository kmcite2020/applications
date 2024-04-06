// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatImpl _$$ChatImplFromJson(Map<String, dynamic> json) => _$ChatImpl(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      cards: (json['cards'] as List<dynamic>?)
              ?.map(
                  (e) => QueryResponseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <QueryResponseModel>[],
    );

Map<String, dynamic> _$$ChatImplToJson(_$ChatImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'cards': instance.cards,
    };
