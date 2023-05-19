// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Question _$QuestionFromJson(Map<String, dynamic> json) => Question(
      id: json['id'] as int?,
      statement: json['statement'] as String?,
      description: json['description'] as String?,
      startOn: json['start_on'] as String?,
      endOn: json['end_on'] as String?,
      publishOn: json['publish_on'] as String?,
      resultPublishedOn: json['result_published_on'],
      bannerImage: json['banner_image'] as String?,
      thumbnailImage: json['thumbnail_image'] as String?,
      predictions: (json['predictions'] as List<dynamic>?)
          ?.map((e) => Prediction.fromJson(e as Map<String, dynamic>))
          .toList(),
      categoryQuestions: (json['category_questions'] as List<dynamic>?)
          ?.map((e) => CategoryQuestion.fromJson(e as Map<String, dynamic>))
          .toList(),
      eventQuestions: (json['event_questions'] as List<dynamic>?)
          ?.map((e) => EventQuestion.fromJson(e as Map<String, dynamic>))
          .toList(),
      isSponsored: json['is_sponsored'] as bool?,
      sponsoredQuestions: json['sponsored_questions'] as List<dynamic>?,
      sourceOfTruth: json['source_of_truth'] as String?,
      sourceOfTruthLink: json['source_of_truth_link'] as String?,
      poolSize: json['pool_size'] as int?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'id': instance.id,
      'statement': instance.statement,
      'description': instance.description,
      'start_on': instance.startOn,
      'end_on': instance.endOn,
      'publish_on': instance.publishOn,
      'result_published_on': instance.resultPublishedOn,
      'banner_image': instance.bannerImage,
      'thumbnail_image': instance.thumbnailImage,
      'predictions': instance.predictions,
      'category_questions': instance.categoryQuestions,
      'event_questions': instance.eventQuestions,
      'is_sponsored': instance.isSponsored,
      'sponsored_questions': instance.sponsoredQuestions,
      'source_of_truth': instance.sourceOfTruth,
      'source_of_truth_link': instance.sourceOfTruthLink,
      'pool_size': instance.poolSize,
      'options': instance.options,
    };
