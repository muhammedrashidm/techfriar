import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:techfriar/Domain/trending/modals.dart';
import 'package:techfriar/data/trending/repository.dart';

part 'trending_event.dart';
part 'trending_state.dart';
part 'trending_bloc.freezed.dart';

class TrendingBloc extends Bloc<TrendingEvent, TrendingState> {
  final TrendingRepository repository;
  TrendingBloc(this.repository)
      : super(_Initial(trendingList: [], isLoading: false, hasError: false)) {
    on<TrendingEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final response = await repository.fetchQuestions();
      return response.fold(
          (l) => emit(state.copyWith(
              isLoading: false, hasError: true, errorMessage: l.message)),
          (r) => emit(state.copyWith(
              isLoading: false, hasError: false, trendingList: r.questions)));
    });
  }
}
