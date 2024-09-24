part of 'forgetpassword_cubit.dart';

@immutable
sealed class ForgetpasswordState {}

final class ForgetpasswordInitial extends ForgetpasswordState {}

final class Forgetpasswordloaded extends ForgetpasswordState {}

final class Forgetpasswordloeding extends ForgetpasswordState {}

final class Forgetpasswordfailure extends ForgetpasswordState {
  final String error;

  Forgetpasswordfailure({required this.error});
}
