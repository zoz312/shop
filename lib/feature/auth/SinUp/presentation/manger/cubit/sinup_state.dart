part of 'sinup_cubit.dart';

@immutable
sealed class SinupState {}

final class SinupInitial extends SinupState {}

final class Sinupfeilure extends SinupState {
  final String error;

  Sinupfeilure({required this.error});
}

final class Sinupleoded extends SinupState {}

final class Sinuploading extends SinupState {}
