class LoginState {}

class InitialState extends LoginState {}

class LoadingState extends LoginState {}

class VerifiedState extends LoginState {}

class NotVerifiedState extends LoginState {}

class FailureState extends LoginState {
  final String errMessage;

  FailureState({required this.errMessage});
}
