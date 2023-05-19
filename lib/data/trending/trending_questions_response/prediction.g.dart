// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Prediction _$PredictionFromJson(Map<String, dynamic> json) => Prediction(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      questionId: json['question_id'] as int?,
      optionId: json['option_id'] as String?,
      amount: json['amount'] as int?,
      dateTime: json['date_time'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      isWin: json['is_win'],
      walletTransactionId: json['wallet_transaction_id'],
      poolWalletId: json['pool_wallet_id'],
    );

Map<String, dynamic> _$PredictionToJson(Prediction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'question_id': instance.questionId,
      'option_id': instance.optionId,
      'amount': instance.amount,
      'date_time': instance.dateTime,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'is_win': instance.isWin,
      'wallet_transaction_id': instance.walletTransactionId,
      'pool_wallet_id': instance.poolWalletId,
    };
