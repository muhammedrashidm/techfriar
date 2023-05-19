// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Option _$OptionFromJson(Map<String, dynamic> json) => Option(
      id: json['id'] as int?,
      title: json['title'] as String?,
      priority: json['priority'] as int?,
      investment: json['investment'] as int?,
      questionId: json['question_id'] as int?,
    );

Map<String, dynamic> _$OptionToJson(Option instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'priority': instance.priority,
      'investment': instance.investment,
      'question_id': instance.questionId,
    };
