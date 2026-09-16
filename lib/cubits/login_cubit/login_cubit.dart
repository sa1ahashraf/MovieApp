import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/cubits/login_cubit/login_states.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(InitialState());

  Future<void> loginUser({
    required String email,
    required String password,
  }) async {
    emit(LoadingState());
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (credential.user!.emailVerified) {
        emit(VerifiedState());
      } else {
        emit(NotVerifiedState());
      }
    } on FirebaseAuthException catch (e) {
      emit(FailureState(errMessage: e.message ?? 'Invalid email or password'));
    } catch (e) {
      emit(FailureState(errMessage: e.toString()));
    }
  }
}
