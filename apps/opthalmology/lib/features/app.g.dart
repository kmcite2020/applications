// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppStateImpl _$$AppStateImplFromJson(Map<String, dynamic> json) =>
    _$AppStateImpl(
      flashGroups: (json['flashGroups'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, FlashGroup.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <String, FlashGroup>{},
      studies: (json['studies'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Study.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <String, Study>{},
      flashCards: (json['flashCards'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, FlashCard.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <String, FlashCard>{},
    );

Map<String, dynamic> _$$AppStateImplToJson(_$AppStateImpl instance) =>
    <String, dynamic>{
      'flashGroups': instance.flashGroups,
      'studies': instance.studies,
      'flashCards': instance.flashCards,
    };
