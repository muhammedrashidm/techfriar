// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_questions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingQuestionsResponse _$TrendingQuestionsResponseFromJson(
        Map<String, dynamic> json) =>
    TrendingQuestionsResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      questions: (json['data'] as List<dynamic>?)
          ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TrendingQuestionsResponseToJson(
        TrendingQuestionsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.questions,
      'pagination': instance.pagination,
    };
