import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:techfriar/Domain/login/models.dart';
import 'package:techfriar/data/login/repository.dart';
import 'package:techfriar/data/login/user_login_response/user_login_response.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginRepository repository;
  AuthBloc({required this.repository})
      : super(
            const _Initial(userData: null, isLoading: false, hasError: false)) {
    on<_AuthEventStarted>((event, emit) {});
    on<_AuthEventLoginButtonPressed>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      // final res = await repository.loginUserWithPhoneAndPassword(
      //     phone: event.phone, password: event.password);

      return emit(state.copyWith(
          isLoading: false,
          hasError: false,
          userData: DataModal(
              user: UserModal.empty().copyWith(
                  name: 'user', firstName: 'demo', email: 'demo@email.com'),
              token: 'fake_token')));
      // return res.fold(
      //     (l) => emit(state.copyWith(
      //         isLoading: false, hasError: true, errorMessage: l.message)),
      //     (r) => emit(
      //         state.copyWith(isLoading: false, hasError: false, userData: r)));
    });
    on<_AuthEventRemoveError>((event, emit) =>
        emit(state.copyWith(hasError: false, errorMessage: '')));
  }
}
