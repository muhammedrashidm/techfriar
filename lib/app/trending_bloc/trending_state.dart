part of 'trending_bloc.dart';

@freezed
class TrendingState with _$TrendingState {
  const factory TrendingState.initial({
    required bool isLoading,
    required bool hasError,
    String? errorMessage,
   required List<QuestionModal> trendingList
  }) = _Initial;
}
