import 'package:json_annotation/json_annotation.dart';

import 'category_question.dart';
import 'event_question.dart';
import 'option.dart';
import 'prediction.dart';

part 'question.g.dart';

@JsonSerializable()
class Question {
  int? id;
  String? statement;
  String? description;
  @JsonKey(name: 'start_on')
  String? startOn;
  @JsonKey(name: 'end_on')
  String? endOn;
  @JsonKey(name: 'publish_on')
  String? publishOn;
  @JsonKey(name: 'result_published_on')
  dynamic resultPublishedOn;
  @JsonKey(name: 'banner_image')
  String? bannerImage;
  @JsonKey(name: 'thumbnail_image')
  String? thumbnailImage;
  List<Prediction>? predictions;
  @JsonKey(name: 'category_questions')
  List<CategoryQuestion>? categoryQuestions;
  @JsonKey(name: 'event_questions')
  List<EventQuestion>? eventQuestions;
  @JsonKey(name: 'is_sponsored')
  bool? isSponsored;
  @JsonKey(name: 'sponsored_questions')
  List<dynamic>? sponsoredQuestions;
  @JsonKey(name: 'source_of_truth')
  String? sourceOfTruth;
  @JsonKey(name: 'source_of_truth_link')
  String? sourceOfTruthLink;
  @JsonKey(name: 'pool_size')
  int? poolSize;
  List<Option>? options;

  Question({
    this.id,
    this.statement,
    this.description,
    this.startOn,
    this.endOn,
    this.publishOn,
    this.resultPublishedOn,
    this.bannerImage,
    this.thumbnailImage,
    this.predictions,
    this.categoryQuestions,
    this.eventQuestions,
    this.isSponsored,
    this.sponsoredQuestions,
    this.sourceOfTruth,
    this.sourceOfTruthLink,
    this.poolSize,
    this.options,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    return _$QuestionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$QuestionToJson(this);
}
