class RegisterStates {}

class InitialState extends RegisterStates {}

class LoadingState extends RegisterStates {}

class SuccessState extends RegisterStates {}

class FailureState extends RegisterStates {
  final String errMessage;

  FailureState({required this.errMessage});
}
