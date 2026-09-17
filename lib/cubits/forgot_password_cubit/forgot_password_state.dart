class ForgotPasswordState {}

class ForgotPasswordInitialState extends ForgotPasswordState {}

class ForgotPasswordLoadingState extends ForgotPasswordState {}

class ForgotPasswordSuccessState extends ForgotPasswordState {}

class ForgotPasswordFailureState extends ForgotPasswordState {
  final String errMessage;

  ForgotPasswordFailureState({required this.errMessage});
}
