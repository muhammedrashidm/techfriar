import 'package:json_annotation/json_annotation.dart';

part 'event_question.g.dart';

@JsonSerializable()
class EventQuestion {
  int? id;
  @JsonKey(name: 'event_id')
  int? eventId;
  @JsonKey(name: 'question_id')
  int? questionId;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  EventQuestion({
    this.id,
    this.eventId,
    this.questionId,
    this.createdAt,
    this.updatedAt,
  });

  factory EventQuestion.fromJson(Map<String, dynamic> json) {
    return _$EventQuestionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EventQuestionToJson(this);
}
