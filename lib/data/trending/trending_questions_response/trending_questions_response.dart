import 'package:json_annotation/json_annotation.dart';

import 'pagination.dart';
import 'question.dart';

part 'trending_questions_response.g.dart';

@JsonSerializable()
class TrendingQuestionsResponse {
  bool? status;
  String? message;
  @JsonKey(name: 'data')
  List<Question>? questions;
  Pagination? pagination;

  TrendingQuestionsResponse({
    this.status,
    this.message,

    this.questions,
    this.pagination,
  });

  factory TrendingQuestionsResponse.fromJson(Map<String, dynamic> json) {
    return _$TrendingQuestionsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TrendingQuestionsResponseToJson(this);
}
