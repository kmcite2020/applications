// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatsImpl _$$ChatsImplFromJson(Map<String, dynamic> json) => _$ChatsImpl(
      chats: (json['chats'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, ChatModel.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <String, ChatModel>{},
    );

Map<String, dynamic> _$$ChatsImplToJson(_$ChatsImpl instance) =>
    <String, dynamic>{
      'chats': instance.chats,
    };
