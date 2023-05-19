import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:techfriar/Domain/login/i_repository.dart';
import 'package:techfriar/Domain/login/models.dart';
import 'package:techfriar/app/globals/failiure.dart';
import 'package:techfriar/data/core/DioManager.dart';
import 'package:techfriar/data/core/mapper.dart';
import 'package:techfriar/data/login/user_login_response/user_login_response.dart';

class LoginRepository extends ILoginRepository {
  final DioManager dioManager;

  LoginRepository(this.dioManager);
  @override
  Future<Either<Failure, DataModal>> loginUserWithPhoneAndPassword(
      {required String phone, required String password}) async {
    try {
      final response = await dioManager.post('/login_with_phone',
          data: {'phone': phone, 'password': password});
      if (response.statusCode == 200) {
        final resp = UserLoginResponse.fromJson(response.data);
        final modal = resp.toDomain();
        return Right(modal.data);
      } else {
        return Left(Failure('Login failed'));
      }
    } on DioError catch (e) {
      return Left(Failure('Login failed'));
    } catch (e) {
      return Left(Failure('Login failed'));
    }
  }
}
//login_with_phone
