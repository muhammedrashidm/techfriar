import 'package:json_annotation/json_annotation.dart';

part 'category_question.g.dart';

@JsonSerializable()
class CategoryQuestion {
  int? id;
  @JsonKey(name: 'category_id')
  int? categoryId;
  @JsonKey(name: 'question_id')
  int? questionId;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  int? visibility;

  CategoryQuestion({
    this.id,
    this.categoryId,
    this.questionId,
    this.createdAt,
    this.updatedAt,
    this.visibility,
  });

  factory CategoryQuestion.fromJson(Map<String, dynamic> json) {
    return _$CategoryQuestionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CategoryQuestionToJson(this);
}
