// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventQuestion _$EventQuestionFromJson(Map<String, dynamic> json) =>
    EventQuestion(
      id: json['id'] as int?,
      eventId: json['event_id'] as int?,
      questionId: json['question_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$EventQuestionToJson(EventQuestion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_id': instance.eventId,
      'question_id': instance.questionId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
