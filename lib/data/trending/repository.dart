import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:techfriar/Domain/trending/modals.dart';
import 'package:techfriar/Domain/trending/repository.dart';
import 'package:techfriar/app/globals/failiure.dart';
import 'package:techfriar/data/core/DioManager.dart';
import 'package:techfriar/data/core/mapper.dart';
import 'package:techfriar/data/trending/trending_questions_response/trending_questions_response.dart';

class TrendingRepository extends ITrendingRepository {
  final DioManager dioManager;

  TrendingRepository(this.dioManager);
  @override
  Future<Either<Failure, TrendingQuestionResponseModal>>
      fetchQuestions() async {
    try {
      final response = await dioManager.get('/list_trending_questions');
      if (response.statusCode == 200) {
        return Right(
            TrendingQuestionsResponse.fromJson(response.data).toDomain());
      } else {
        return Left(Failure('Api call failed'));
      }
    } on DioError catch (e) {
      return Left(Failure(e.response?.statusMessage ?? 'Api call failed'));
    } catch (e) {
      return Left(Failure('Api call failed'));
    }
  }
}
