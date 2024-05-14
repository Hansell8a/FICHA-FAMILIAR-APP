part of 'auth_bloc.dart';

class AuthState extends Equatable {
  const AuthState(
      {this.email = '',
      this.password = '',
      this.progressStatus = RequestProgressStatus.nothing});

  final String email;
  final String password;
  final RequestProgressStatus progressStatus;

  AuthState copyWith(
      {String? email,
      String? password,
      RequestProgressStatus? progressStatus}) {
    return AuthState(
      email: email ?? this.email,
      password: password ?? this.password,
      progressStatus: progressStatus ?? this.progressStatus,
    );
  }

  @override
  List<Object> get props => [email, password, progressStatus];
}
