part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class OnEmailChangedEvent extends AuthEvent {
  final String email;

  const OnEmailChangedEvent(this.email);

  @override
  List<Object> get props => [email];
}

class OnPasswordChangedEvent extends AuthEvent {
  final String password;

  const OnPasswordChangedEvent(this.password);

  @override
  List<Object> get props => [password];
}

class AuthLoginEvent extends AuthEvent {
  const AuthLoginEvent();
}
