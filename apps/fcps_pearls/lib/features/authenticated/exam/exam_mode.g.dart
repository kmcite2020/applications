// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_mode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExamImpl _$$ExamImplFromJson(Map<String, dynamic> json) => _$ExamImpl(
      pearls:
          (json['pearls'] as List<dynamic>?)?.map(Pearl.fromJson).toList() ??
              const [],
      title: json['title'] as String? ?? '',
    );

Map<String, dynamic> _$$ExamImplToJson(_$ExamImpl instance) =>
    <String, dynamic>{
      'pearls': instance.pearls,
      'title': instance.title,
    };
