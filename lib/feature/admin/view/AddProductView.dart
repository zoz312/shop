import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/feature/admin/view/manger/cubit/admin_cubit.dart';
import 'package:shop/feature/admin/view/widget/BodyAddProduct.dart';

class AddproductView extends StatelessWidget {
  const AddproductView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AdminCubit(),
      child: Scaffold(
        body: Bodyaddproduct(),
      ),
    );
  }
}
