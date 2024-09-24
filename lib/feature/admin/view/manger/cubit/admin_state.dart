part of 'admin_cubit.dart';

@immutable
sealed class AdminState {}

final class AdminInitial extends AdminState {}

final class AdminLoaded extends AdminState {
   List<Product> product = [];

  AdminLoaded({required this.product});
}
