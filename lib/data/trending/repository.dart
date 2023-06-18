import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:techfriar/Domain/trending/modals.dart';
import 'package:techfriar/Domain/trending/repository.dart';
import 'package:techfriar/app/globals/failiure.dart';
import 'package:techfriar/data/core/DioManager.dart';
import 'package:techfriar/data/core/mapper.dart';
import 'package:techfriar/data/trending/trending_questions_response/question.dart';
import 'package:techfriar/data/trending/trending_questions_response/trending_questions_response.dart';

class TrendingRepository extends ITrendingRepository {
  final DioManager dioManager;

  TrendingRepository(this.dioManager);
  @override
  Future<Either<Failure, TrendingQuestionResponseModal>>
      fetchQuestions() async {
    return Right(TrendingQuestionResponseModal(
        status: true,
        message: '',
        questions: [
          Question.fromJson(fake).toDomain(),
          Question.fromJson(fake2).toDomain()
        ]));
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

const fake = {
  "id": 1,
  "statement": "Question 1",
  "description": "Description of Question 1",
  "startOn": "2023-06-20T09:00:00Z",
  "endOn": "2023-06-21T18:00:00Z",
  "publishOn": "2023-06-21T18:00:00Z",
  "resultPublishedOn": null,
  "bannerImage": "question1_banner.jpg",
  "thumbnailImage": "question1_thumbnail.jpg",
  "predictions": [
    {
      "id": 1,
      "userId": 123,
      "questionId": 1,
      "optionId": "A",
      "amount": 100,
      "dateTime": "2023-06-20T12:00:00Z",
      "createdAt": "2023-06-20T12:00:00Z",
      "updatedAt": "2023-06-20T12:00:00Z",
      "isWin": null,
      "walletTransactionId": 456,
      "poolWalletId": 789
    },
    {
      "id": 2,
      "userId": 456,
      "questionId": 1,
      "optionId": "B",
      "amount": 200,
      "dateTime": "2023-06-20T13:00:00Z",
      "createdAt": "2023-06-20T13:00:00Z",
      "updatedAt": "2023-06-20T13:00:00Z",
      "isWin": null,
      "walletTransactionId": 789,
      "poolWalletId": 123
    }
  ],
  "categoryQuestions": [
    {
      "id": 1,
      "categoryId": 1,
      "questionId": 1,
      "createdAt": "2023-06-20T12:00:00Z",
      "updatedAt": "2023-06-20T12:00:00Z",
      "visibility": 1
    }
  ],
  "eventQuestions": null,
  "isSponsored": false,
  "sponsoredQuestions": null,
  "sourceOfTruth": "Source 1",
  "sourceOfTruthLink": "https://example.com/source1",
  "poolSize": 1000,
  "options": [
    {
      "id": 1,
      "title": "Option A",
      "priority": 1,
      "investment": 100,
      "questionId": 1
    },
    {
      "id": 2,
      "title": "Option B",
      "priority": 2,
      "investment": 200,
      "questionId": 1
    }
  ]
};
const fake2 = {
  "id": 2,
  "statement": "Question 2",
  "description": "Description of Question 2",
  "startOn": null,
  "endOn": "2023-06-22T18:00:00Z",
  "publishOn": null,
  "resultPublishedOn": "2023-06-23T09:00:00Z",
  "bannerImage": "question2_banner.jpg",
  "thumbnailImage": "question2_thumbnail.jpg",
  "predictions": null,
  "categoryQuestions": [
    {
      "id": 2,
      "categoryId": 2,
      "questionId": 2,
      "createdAt": "2023-06-21T10:00:00Z",
      "updatedAt": "2023-06-21T10:00:00Z",
      "visibility": 1
    },
    {
      "id": 3,
      "categoryId": 3,
      "questionId": 2,
      "createdAt": "2023-06-21T11:00:00Z",
      "updatedAt": "2023-06-21T11:00:00Z",
      "visibility": 2
    }
  ],
  "eventQuestions": [
    {
      "id": 1,
      "eventId": 123,
      "questionId": 2,
      "createdAt": "2023-06-22T09:00:00Z",
      "updatedAt": "2023-06-22T09:00:00Z"
    }
  ],
  "isSponsored": true,
  "sponsoredQuestions": ["Sponsor 1", "Sponsor 2"],
  "sourceOfTruth": null,
  "sourceOfTruthLink": null,
  "poolSize": 500,
  "options": [
    {
      "id": 3,
      "title": "Option C",
      "priority": 1,
      "investment": 100,
      "questionId": 2
    },
    {
      "id": 4,
      "title": "Option D",
      "priority": 2,
      "investment": 200,
      "questionId": 2
    }
  ]
};

