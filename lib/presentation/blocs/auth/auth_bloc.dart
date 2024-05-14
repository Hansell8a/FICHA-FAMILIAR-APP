// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_boiler/domain/repository/auth/auth_repository.dart';
import 'package:flutter_boiler/utils/enums/request_progress_status.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(const AuthState()) {
    on<AuthLoginEvent>(_authLoginEvent);
    on<OnEmailChangedEvent>(_onEmailChangedEvent);
    on<OnPasswordChangedEvent>(_onPasswordChangedEvent);
  }

  void _onEmailChangedEvent(
      OnEmailChangedEvent event, Emitter<AuthState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordChangedEvent(
      OnPasswordChangedEvent event, Emitter<AuthState> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _authLoginEvent(AuthLoginEvent event, Emitter<AuthState> emit) async {
    try {
      emit(state.copyWith(progressStatus: RequestProgressStatus.loading));
      await authRepository.login(
        email: state.email,
        passwod: state.password,
      );
      // throw Exception('Error');

      emit(state.copyWith(progressStatus: RequestProgressStatus.success));
    } catch (e) {
      // ignore: avoid_print
      print('Error: $e');
      emit(state.copyWith(progressStatus: RequestProgressStatus.error));
    }
  }
}
