import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> loginuser(
      {required String email, required String password}) async {
    emit(Loginloading());
    try {
      if (password== 'Hooohooo312#%%') {
          UserCredential amdin = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(Loginloadedadmin());
      }else if(password!= 'Hooohooo312#%%'){
          UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(Loginloaded());
      }
   
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(Loginfailure(error: "No user found for that email."));
      } else if (e.code == 'wrong-password') {
        emit(Loginfailure(error: "Wrong password provided for that user."));
      }
    }
  }
}
