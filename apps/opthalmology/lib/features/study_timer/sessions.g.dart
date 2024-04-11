// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sessions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionImpl _$$SessionImplFromJson(Map<String, dynamic> json) =>
    _$SessionImpl(
      id: json['id'] as String? ?? '',
      startedOn: DateTime.parse(json['startedOn'] as String),
      duration: json['duration'] as int? ?? 0,
      sessionStatus:
          $enumDecodeNullable(_$SessionStatusEnumMap, json['sessionStatus']) ??
              SessionStatus.none,
    );

Map<String, dynamic> _$$SessionImplToJson(_$SessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startedOn': instance.startedOn.toIso8601String(),
      'duration': instance.duration,
      'sessionStatus': _$SessionStatusEnumMap[instance.sessionStatus]!,
    };

const _$SessionStatusEnumMap = {
  SessionStatus.none: 'none',
  SessionStatus.isInitial: 'isInitial',
  SessionStatus.isPaused: 'isPaused',
  SessionStatus.isRunning: 'isRunning',
  SessionStatus.isCompleted: 'isCompleted',
};
