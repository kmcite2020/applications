// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizImpl _$$QuizImplFromJson(Map<String, dynamic> json) => _$QuizImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      author: json['author'] as String?,
      duration: json['duration'] == null
          ? null
          : Duration(microseconds: json['duration'] as int),
      difficultyLevel: json['difficultyLevel'] as String?,
      chapter: json['chapter'] as String?,
      instructions: json['instructions'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      userScores: (json['userScores'] as List<dynamic>?)
          ?.map(UserScore.fromJson)
          .toList(),
      randomizeQuestions: json['randomizeQuestions'] as bool?,
      isPublic: json['isPublic'] as bool?,
      accessCode: json['accessCode'] as String?,
      dateCreated: json['dateCreated'] == null
          ? null
          : DateTime.parse(json['dateCreated'] as String),
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      questions: (json['questions'] as List<dynamic>?)
          ?.map(Question.fromJson)
          .toList(),
    );

Map<String, dynamic> _$$QuizImplToJson(_$QuizImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'duration': instance.duration?.inMicroseconds,
      'difficultyLevel': instance.difficultyLevel,
      'chapter': instance.chapter,
      'instructions': instance.instructions,
      'metadata': instance.metadata,
      'userScores': instance.userScores,
      'randomizeQuestions': instance.randomizeQuestions,
      'isPublic': instance.isPublic,
      'accessCode': instance.accessCode,
      'dateCreated': instance.dateCreated?.toIso8601String(),
      'lastModified': instance.lastModified?.toIso8601String(),
      'questions': instance.questions,
    };

_$UserScoreImpl _$$UserScoreImplFromJson(Map<String, dynamic> json) =>
    _$UserScoreImpl(
      username: json['username'] as String?,
      score: json['score'] as int?,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$UserScoreImplToJson(_$UserScoreImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'score': instance.score,
      'timestamp': instance.timestamp?.toIso8601String(),
    };
