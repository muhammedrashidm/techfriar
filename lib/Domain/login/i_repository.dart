import 'package:dartz/dartz.dart';

import '../../app/globals/failiure.dart';

abstract class ILoginRepository {
  Future<Either<Failure, dynamic>> loginUserWithPhoneAndPassword(
      {required String phone, required String password});
}
