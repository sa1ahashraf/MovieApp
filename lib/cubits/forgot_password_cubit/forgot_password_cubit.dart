import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/cubits/forgot_password_cubit/forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(ForgotPasswordInitialState());

  Future<void> resetPassword({required String email}) async {
    emit(ForgotPasswordLoadingState());
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      emit(ForgotPasswordSuccessState());
    } on FirebaseAuthException catch (e) {
      emit(
        ForgotPasswordFailureState(
          errMessage: e.message ?? 'Sonething went wrong',
        ),
      );
    } catch (e) {
      emit(ForgotPasswordFailureState(errMessage: e.toString()));
    }
  }
}
