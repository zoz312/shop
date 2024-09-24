import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/feature/admin/view/manger/cubit/admin_cubit.dart';
import 'package:shop/feature/admin/view/widget/bodyAdminview.dart';

class Adminview extends StatelessWidget {
  const Adminview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AdminCubit()..getprouct(),
      child: Scaffold(
        body: Bodyadminview(),
      ),
    );
  }
}
