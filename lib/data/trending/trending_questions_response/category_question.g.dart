// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryQuestion _$CategoryQuestionFromJson(Map<String, dynamic> json) =>
    CategoryQuestion(
      id: json['id'] as int?,
      categoryId: json['category_id'] as int?,
      questionId: json['question_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      visibility: json['visibility'] as int?,
    );

Map<String, dynamic> _$CategoryQuestionToJson(CategoryQuestion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_id': instance.categoryId,
      'question_id': instance.questionId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'visibility': instance.visibility,
    };
