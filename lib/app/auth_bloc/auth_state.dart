part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial(
      {DataModal? userData,
      required bool isLoading,
      required bool hasError,
      String? errorMessage}) = _Initial;
}
