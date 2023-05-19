import 'package:json_annotation/json_annotation.dart';

part 'option.g.dart';

@JsonSerializable()
class Option {
  int? id;
  String? title;
  int? priority;
  int? investment;
  @JsonKey(name: 'question_id')
  int? questionId;

  Option({
    this.id,
    this.title,
    this.priority,
    this.investment,
    this.questionId,
  });

  factory Option.fromJson(Map<String, dynamic> json) {
    return _$OptionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OptionToJson(this);
}
