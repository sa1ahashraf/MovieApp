import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/cubits/register_cubit/register_states.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(InitialState());
  Future<void> registerUser({
    required String email,
    required String password,
    required String username,
  }) async {
    emit(LoadingState());
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      await credential.user!.sendEmailVerification();
      emit(SuccessState());
    } on FirebaseAuthException catch (e) {
      emit(FailureState(errMessage: e.message.toString()));
    } catch (e) {
      emit(FailureState(errMessage: e.toString()));
    }
  }
}
