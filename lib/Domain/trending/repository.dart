import 'package:dartz/dartz.dart';
import 'package:techfriar/app/globals/failiure.dart';

abstract class ITrendingRepository {
  Future<Either<Failure, dynamic>> fetchQuestions();
}
