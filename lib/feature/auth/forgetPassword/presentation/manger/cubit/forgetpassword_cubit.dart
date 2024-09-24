import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'forgetpassword_state.dart';

class ForgetpasswordCubit extends Cubit<ForgetpasswordState> {
  ForgetpasswordCubit() : super(ForgetpasswordInitial());

  Future<void> resetpassword({required String email}) async {
    emit(Forgetpasswordloeding());
    try {
      final user =
          await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      emit(Forgetpasswordloaded());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(Forgetpasswordfailure(error: "No user found for that email."));
      } else if (e.code == 'wrong-password') {
        emit(Forgetpasswordfailure(
            error: "Wrong password provided for that user."));
      }
    }
  }
}
