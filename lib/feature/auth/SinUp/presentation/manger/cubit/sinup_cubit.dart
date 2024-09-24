import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'sinup_state.dart';

class SinupCubit extends Cubit<SinupState> {
  SinupCubit() : super(SinupInitial());
  Future<void> sinup({required String email, required String password}) async {
    emit(Sinuploading());
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(Sinupleoded());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(Sinupfeilure(error: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(Sinupfeilure(error: 'The account already exists for that email.'));
      }
    } catch (e) {
      print(e);
    }
  }
}
