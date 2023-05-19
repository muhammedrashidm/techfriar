import 'package:json_annotation/json_annotation.dart';

part 'prediction.g.dart';

@JsonSerializable()
class Prediction {
  int? id;
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'question_id')
  int? questionId;
  @JsonKey(name: 'option_id')
  String? optionId;
  int? amount;
  @JsonKey(name: 'date_time')
  String? dateTime;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  @JsonKey(name: 'is_win')
  dynamic isWin;
  @JsonKey(name: 'wallet_transaction_id')
  dynamic walletTransactionId;
  @JsonKey(name: 'pool_wallet_id')
  dynamic poolWalletId;

  Prediction({
    this.id,
    this.userId,
    this.questionId,
    this.optionId,
    this.amount,
    this.dateTime,
    this.createdAt,
    this.updatedAt,
    this.isWin,
    this.walletTransactionId,
    this.poolWalletId,
  });

  factory Prediction.fromJson(Map<String, dynamic> json) {
    return _$PredictionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PredictionToJson(this);
}
