part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _AuthEventStarted;
  const factory AuthEvent.loginButtonPressed(
      {required String phone,
      required String password}) = _AuthEventLoginButtonPressed;
       const factory AuthEvent.removeError() = _AuthEventRemoveError;
}
