part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class Loginfailure extends LoginState {
  final String error;

  Loginfailure({required this.error});
}

final class Loginloaded extends LoginState {}

final class Loginloadedadmin extends LoginState {}
final class Loginloading extends LoginState {}
